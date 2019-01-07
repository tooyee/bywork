class CaseworkessemagsController < ApplicationController
  before_action :set_caseworkessemag, only: [:show, :edit, :update, :destroy]

  # GET /caseworkessemags
  # GET /caseworkessemags.json
  def index
    @caseworkessemags = Caseworkessemag.all
  end

  # GET /caseworkessemags/1
  # GET /caseworkessemags/1.json
  def show
  end

  # GET /caseworkessemags/new
  def new
    @caseworkessemag = Caseworkessemag.new
  end

  # GET /caseworkessemags/1/edit
  def edit
  end

  # POST /caseworkessemags
  # POST /caseworkessemags.json
  def create
    @caseworkessemag = Caseworkessemag.new(caseworkessemag_params)

    respond_to do |format|
      if @caseworkessemag.save
        format.html { redirect_to @caseworkessemag, notice: 'Caseworkessemag was successfully created.' }
        format.json { render :show, status: :created, location: @caseworkessemag }
      else
        format.html { render :new }
        format.json { render json: @caseworkessemag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseworkessemags/1
  # PATCH/PUT /caseworkessemags/1.json
  def update
    respond_to do |format|
      if @caseworkessemag.update(caseworkessemag_params)
        format.html { redirect_to @caseworkessemag, notice: 'Caseworkessemag was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseworkessemag }
      else
        format.html { render :edit }
        format.json { render json: @caseworkessemag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworkessemags/1
  # DELETE /caseworkessemags/1.json
  def destroy
    @caseworkessemag.destroy
    respond_to do |format|
      format.html { redirect_to caseworkessemags_url, notice: 'Caseworkessemag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseworkessemag
      @caseworkessemag = Caseworkessemag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseworkessemag_params
      params.require(:caseworkessemag).permit(:casework_id, :code, :name, :essetype, :status)
    end
end
