class CaseworkesselinemagsController < ApplicationController
  before_action :set_caseworkesselinemag, only: [:show, :edit, :update, :destroy]

  # GET /caseworkesselinemags
  # GET /caseworkesselinemags.json
  def index
    @caseworkesselinemags = Caseworkesselinemag.all
  end

  # GET /caseworkesselinemags/1
  # GET /caseworkesselinemags/1.json
  def show
  end

  # GET /caseworkesselinemags/new
  def new
    @caseworkesselinemag = Caseworkesselinemag.new
  end

  # GET /caseworkesselinemags/1/edit
  def edit
  end

  # POST /caseworkesselinemags
  # POST /caseworkesselinemags.json
  def create
    @caseworkesselinemag = Caseworkesselinemag.new(caseworkesselinemag_params)

    respond_to do |format|
      if @caseworkesselinemag.save
        format.html { redirect_to @caseworkesselinemag, notice: 'Caseworkesselinemag was successfully created.' }
        format.json { render :show, status: :created, location: @caseworkesselinemag }
      else
        format.html { render :new }
        format.json { render json: @caseworkesselinemag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseworkesselinemags/1
  # PATCH/PUT /caseworkesselinemags/1.json
  def update
    respond_to do |format|
      if @caseworkesselinemag.update(caseworkesselinemag_params)
        format.html { redirect_to @caseworkesselinemag, notice: 'Caseworkesselinemag was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseworkesselinemag }
      else
        format.html { render :edit }
        format.json { render json: @caseworkesselinemag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworkesselinemags/1
  # DELETE /caseworkesselinemags/1.json
  def destroy
    @caseworkesselinemag.destroy
    respond_to do |format|
      format.html { redirect_to caseworkesselinemags_url, notice: 'Caseworkesselinemag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseworkesselinemag
      @caseworkesselinemag = Caseworkesselinemag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseworkesselinemag_params
      params.require(:caseworkesselinemag).permit(:casework_id, :esse_id, :code, :name, :esselinetype, :remarks, :status)
    end
end
