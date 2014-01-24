class ApprovalRoutingSchemesController < ApplicationController
  # GET /approval_routing_schemes
  # GET /approval_routing_schemes.json
  def index
    @approval_routing_schemes = ApprovalRoutingScheme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @approval_routing_schemes }
    end
  end

  # GET /approval_routing_schemes/1
  # GET /approval_routing_schemes/1.json
  def show
    @approval_routing_scheme = ApprovalRoutingScheme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @approval_routing_scheme }
    end
  end

  # GET /approval_routing_schemes/new
  # GET /approval_routing_schemes/new.json
  def new
    @approval_routing_scheme = ApprovalRoutingScheme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @approval_routing_scheme }
    end
  end

  # GET /approval_routing_schemes/1/edit
  def edit
    @approval_routing_scheme = ApprovalRoutingScheme.find(params[:id])
  end

  # POST /approval_routing_schemes
  # POST /approval_routing_schemes.json
  def create
    @approval_routing_scheme = ApprovalRoutingScheme.new(params[:approval_routing_scheme])

    respond_to do |format|
      if @approval_routing_scheme.save
        format.html { redirect_to @approval_routing_scheme, notice: 'Approval routing scheme was successfully created.' }
        format.json { render json: @approval_routing_scheme, status: :created, location: @approval_routing_scheme }
      else
        format.html { render action: "new" }
        format.json { render json: @approval_routing_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /approval_routing_schemes/1
  # PUT /approval_routing_schemes/1.json
  def update
    @approval_routing_scheme = ApprovalRoutingScheme.find(params[:id])

    respond_to do |format|
      if @approval_routing_scheme.update_attributes(params[:approval_routing_scheme])
        format.html { redirect_to @approval_routing_scheme, notice: 'Approval routing scheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @approval_routing_scheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approval_routing_schemes/1
  # DELETE /approval_routing_schemes/1.json
  def destroy
    @approval_routing_scheme = ApprovalRoutingScheme.find(params[:id])
    @approval_routing_scheme.destroy

    respond_to do |format|
      format.html { redirect_to approval_routing_schemes_url }
      format.json { head :no_content }
    end
  end
end
