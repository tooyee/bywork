class UnitworksController < ApplicationController
  before_action :set_unitwork, only: [:show, :edit, :update, :destroy]

  # GET /unitworks
  # GET /unitworks.json
  def index
    @unitworks = Unitwork.all
  end

  # GET /unitworks/1
  # GET /unitworks/1.json
  def show
  end

  # GET /unitworks/new
  def new
    @unitwork = Unitwork.new
  end

  # GET /unitworks/1/edit
  def edit
  end

  # POST /unitworks
  # POST /unitworks.json
  def create
    @unitwork = Unitwork.new(unitwork_params)

    respond_to do |format|
      if @unitwork.save
        format.html { redirect_to @unitwork, notice: 'Unitwork was successfully created.' }
        format.json { render :show, status: :created, location: @unitwork }
      else
        format.html { render :new }
        format.json { render json: @unitwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unitworks/1
  # PATCH/PUT /unitworks/1.json
  def update
    respond_to do |format|
      if @unitwork.update(unitwork_params)
        format.html { redirect_to @unitwork, notice: 'Unitwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @unitwork }
      else
        format.html { render :edit }
        format.json { render json: @unitwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unitworks/1
  # DELETE /unitworks/1.json
  def destroy
    @unitwork.destroy
    respond_to do |format|
      format.html { redirect_to unitworks_url, notice: 'Unitwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unitwork
      @unitwork = Unitwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unitwork_params
      params.require(:unitwork).permit(:code, :name)
    end
end
