class CaseworkesselinesController < ApplicationController
  before_action :set_caseworkesseline, only: [:show, :edit, :update, :destroy]

  # GET /caseworkesselines
  # GET /caseworkesselines.json
  def index
    @caseworkesselines = Caseworkesseline.all
  end

  # GET /caseworkesselines/1
  # GET /caseworkesselines/1.json
  def show
  end

  # GET /caseworkesselines/new
  def new
    @caseworkesseline = Caseworkesseline.new
  end

  # GET /caseworkesselines/1/edit
  def edit
  end

  # POST /caseworkesselines
  # POST /caseworkesselines.json
  def create
    @caseworkesseline = Caseworkesseline.new(caseworkesseline_params)

    respond_to do |format|
      if @caseworkesseline.save
        format.html { redirect_to @caseworkesseline, notice: 'Caseworkesseline was successfully created.' }
        format.json { render :show, status: :created, location: @caseworkesseline }
      else
        format.html { render :new }
        format.json { render json: @caseworkesseline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseworkesselines/1
  # PATCH/PUT /caseworkesselines/1.json
  def update
    respond_to do |format|
      if @caseworkesseline.update(caseworkesseline_params)
        format.html { redirect_to @caseworkesseline, notice: 'Caseworkesseline was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseworkesseline }
      else
        format.html { render :edit }
        format.json { render json: @caseworkesseline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworkesselines/1
  # DELETE /caseworkesselines/1.json
  def destroy
    @caseworkesseline.destroy
    respond_to do |format|
      format.html { redirect_to caseworkesselines_url, notice: 'Caseworkesseline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseworkesseline
      @caseworkesseline = Caseworkesseline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseworkesseline_params
      params.require(:caseworkesseline).permit(:casework_id, :caseitem_id, :esse_id, :esseline_id, :esselinecode, :esselinename, :quantity, :unit, :remarks, :begindate,:enddate,:fromwhscode, :towhscode, :status)
    end
end
