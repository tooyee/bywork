class DutyworksController < ApplicationController
  before_action :set_dutywork, only: [:show, :edit, :update, :destroy]

  # GET /dutyworks
  # GET /dutyworks.json
  def index
    @dutyworks = Dutywork.all
  end

  # GET /dutyworks/1
  # GET /dutyworks/1.json
  def show
  end

  # GET /dutyworks/new
  def new
    @dutywork = Dutywork.new
  end

  # GET /dutyworks/1/edit
  def edit
  end

  # POST /dutyworks
  # POST /dutyworks.json
  def create
    @dutywork = Dutywork.new(dutywork_params)

    respond_to do |format|
      if @dutywork.save
        format.html { redirect_to @dutywork, notice: 'Dutywork was successfully created.' }
        format.json { render :show, status: :created, location: @dutywork }
      else
        format.html { render :new }
        format.json { render json: @dutywork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dutyworks/1
  # PATCH/PUT /dutyworks/1.json
  def update
    respond_to do |format|
      if @dutywork.update(dutywork_params)
        format.html { redirect_to @dutywork, notice: 'Dutywork was successfully updated.' }
        format.json { render :show, status: :ok, location: @dutywork }
      else
        format.html { render :edit }
        format.json { render json: @dutywork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dutyworks/1
  # DELETE /dutyworks/1.json
  def destroy
    @dutywork.destroy
    respond_to do |format|
      format.html { redirect_to dutyworks_url, notice: 'Dutywork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dutywork
      @dutywork = Dutywork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dutywork_params
      params.require(:dutywork).permit(:dutydeal_id, :flowwork_id, :seltype, :addtype, :updtype, :deltype)
    end
end
