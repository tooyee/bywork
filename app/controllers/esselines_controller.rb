class EsselinesController < ApplicationController
  before_action :set_esseline, only: [:show, :edit, :update, :destroy]

  # GET /esselines
  # GET /esselines.json
  def index
    @esselines = Esseline.all
  end

  # GET /esselines/1
  # GET /esselines/1.json
  def show
  end

  # GET /esselines/new
  def new
    @esseline = Esseline.new
  end

  # GET /esselines/1/edit
  def edit
  end

  # POST /esselines
  # POST /esselines.json
  def create
    @esseline = Esseline.new(esseline_params)

    respond_to do |format|
      if @esseline.save
        format.html { redirect_to @esseline, notice: 'Esseline was successfully created.' }
        format.json { render :show, status: :created, location: @esseline }
      else
        format.html { render :new }
        format.json { render json: @esseline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esselines/1
  # PATCH/PUT /esselines/1.json
  def update
    respond_to do |format|
      if @esseline.update(esseline_params)
        format.html { redirect_to @esseline, notice: 'Esseline was successfully updated.' }
        format.json { render :show, status: :ok, location: @esseline }
      else
        format.html { render :edit }
        format.json { render json: @esseline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esselines/1
  # DELETE /esselines/1.json
  def destroy
    @esseline.destroy
    respond_to do |format|
      format.html { redirect_to esselines_url, notice: 'Esseline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_esseline
      @esseline = Esseline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def esseline_params
      params.require(:esseline).permit(:esse_id, :code, :name, :esselinetype, :remarks)
    end
end
