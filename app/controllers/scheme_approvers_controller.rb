class SchemeApproversController < ApplicationController
  # GET /scheme_approvers
  # GET /scheme_approvers.json
  def index
    @scheme_approvers = SchemeApprover.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scheme_approvers }
    end
  end

  # GET /scheme_approvers/1
  # GET /scheme_approvers/1.json
  def show
    @scheme_approver = SchemeApprover.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scheme_approver }
    end
  end

  # GET /scheme_approvers/new
  # GET /scheme_approvers/new.json
  def new
    @scheme_approver = SchemeApprover.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scheme_approver }
    end
  end

  # GET /scheme_approvers/1/edit
  def edit
    @scheme_approver = SchemeApprover.find(params[:id])
  end

  # POST /scheme_approvers
  # POST /scheme_approvers.json
  def create
    @scheme_approver = SchemeApprover.new(params[:scheme_approver])

    respond_to do |format|
      if @scheme_approver.save
        format.html { redirect_to @scheme_approver, notice: 'Scheme approver was successfully created.' }
        format.json { render json: @scheme_approver, status: :created, location: @scheme_approver }
      else
        format.html { render action: "new" }
        format.json { render json: @scheme_approver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scheme_approvers/1
  # PUT /scheme_approvers/1.json
  def update
    @scheme_approver = SchemeApprover.find(params[:id])

    respond_to do |format|
      if @scheme_approver.update_attributes(params[:scheme_approver])
        format.html { redirect_to @scheme_approver, notice: 'Scheme approver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scheme_approver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheme_approvers/1
  # DELETE /scheme_approvers/1.json
  def destroy
    @scheme_approver = SchemeApprover.find(params[:id])
    @scheme_approver.destroy

    respond_to do |format|
      format.html { redirect_to scheme_approvers_url }
      format.json { head :no_content }
    end
  end
end
