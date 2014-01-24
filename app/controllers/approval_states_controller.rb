class ApprovalStatesController < ApplicationController
  # GET /approval_states
  # GET /approval_states.json
  def index
    @approval_states = ApprovalState.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @approval_states }
    end
  end

  # GET /approval_states/1
  # GET /approval_states/1.json
  def show
    @approval_state = ApprovalState.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @approval_state }
    end
  end

  # GET /approval_states/new
  # GET /approval_states/new.json
  def new
    @approval_state = ApprovalState.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @approval_state }
    end
  end

  # GET /approval_states/1/edit
  def edit
    @approval_state = ApprovalState.find(params[:id])
  end

  # POST /approval_states
  # POST /approval_states.json
  def create
    @approval_state = ApprovalState.new(params[:approval_state])

    respond_to do |format|
      if @approval_state.save
        format.html { redirect_to @approval_state, notice: 'Approval state was successfully created.' }
        format.json { render json: @approval_state, status: :created, location: @approval_state }
      else
        format.html { render action: "new" }
        format.json { render json: @approval_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /approval_states/1
  # PUT /approval_states/1.json
  def update
    @approval_state = ApprovalState.find(params[:id])

    respond_to do |format|
      if @approval_state.update_attributes(params[:approval_state])
        format.html { redirect_to @approval_state, notice: 'Approval state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @approval_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approval_states/1
  # DELETE /approval_states/1.json
  def destroy
    @approval_state = ApprovalState.find(params[:id])
    @approval_state.destroy

    respond_to do |format|
      format.html { redirect_to approval_states_url }
      format.json { head :no_content }
    end
  end
end
