class AssetsController < ApplicationController
  # GET /assets
  # GET /assets.json
  def index
    page "asset"
    @assets = Asset.includes(:asset_type, :asset_assignment)
    .where("assets.retired = 'f'")
    .paginate(page: params[:page], per_page: params[:per_page])
    @employees = getEmployeesInfoMap
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assets }
    end
  end

  def download
    assets =  Asset.includes(:asset_type, :asset_assignment)
    .where("assets.retired = 'f'")

    columns = [:id, :asset_id, :manufacturer, :asset_type_id, :description, :purchase_date, :release_date, :asset_image, :asset_documents, :serial_number, :model, :display_size, :operating_system, :created_at, :updated_at, :retired, :make_year, :bounded, :asset_bounded, :assignment_id, :assignee_id, :assignee_name, :assigned_date, :asset_mapping_id, :created_at, :updated_at]

    output = CSV.generate do |csv|
      csv << columns
      assets.each do |asset|
        @consolidated_data = asset.attributes.values_at(*Asset.column_names) + asset.asset_assignment.attributes.values_at(*AssetAssignment.column_names)
        csv << @consolidated_data
      end
    end

    puts output
    
    respond_to do |format|
      format.csv { send_data output,
        type: 'text/csv; header=present',
        disposition: "attachment",
        filename: "assets.csv" }
    end
  end  

  # GET /assets/unassigned
  # GET /assets/unassigned.json
  def unassigned
    page "allocations"
    @assets = Asset.joins("left outer join asset_assignments aa on assets.id = aa.asset_id")
        .where("aa.asset_id is null and assets.retired = 'f'")
        .paginate(page: params[:page], per_page: params[:per_page])
    @employees = getEmployeesInfoMap
    respond_to do |format|
      format.html 
      format.json { render json: @assets }
    end
  end
  
  def by_employee 
    page "allocations"
    @assets = Asset.joins(:asset_assignment)
        .where("asset_assignments.assignee_name like ?", "%#{params[:assignee_name]}%")
        .paginate(page: params[:page], per_page: params[:per_page])
    @employees = getEmployeesInfoMap
    respond_to do |format|
      format.html 
      format.json { render json: @assets }
    end
  end

  # GET /assets/1
  # GET /assets/1.json
  def show
    page "asset"
    @asset = Asset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asset }
    end
  end

  # GET /assets/new
  # GET /assets/new.json
  def new
    page "asset"
    @asset = Asset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asset }
    end
  end

  # GET /assets/1/edit
  def edit
    page "asset"
    @asset = Asset.find(params[:id])
  end

  # POST /assets
  # POST /assets.json
  def create
    
    @asset = Asset.new(params[:asset])

    respond_to do |format|
      if @asset.save
        format.html { redirect_to @asset, notice: 'Asset was successfully created.' }
        format.json { render json: @asset, status: :created, location: @asset }
      else
        format.html { render action: "new" }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assets/1
  # PUT /assets/1.json
  def update
    @asset = Asset.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        format.html { redirect_to @asset, notice: 'Asset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.json
  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.html { redirect_to assets_url }
      format.json { head :no_content }
    end
  end
  
  def retire 
    @asset = Asset.find(params[:id])
    
    logger.info("Asset id is #{params[:id]}")
    
    @asset.retired = true
    
    respond_to do |format|
      if @asset.save
        format.html { redirect_to assets_url }
        format.json { head :no_content }
      else
        format.html { redirect_to home_path, notice: 'Asset can not be retired.' }
        format.json { render json: @asset.errors, status: :unprocessable_entity }
      end
    end
  end
end
