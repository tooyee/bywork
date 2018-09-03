class CaseworklinesController < ApplicationController
  before_action :set_caseworkline, only: [:show, :edit, :update, :destroy]

  # GET /caseworklines
  # GET /caseworklines.json
  def index
    @caseworklines = Caseworkline.all
  end

  # GET /caseworklines/1
  # GET /caseworklines/1.json
  def show
  end

  # GET /caseworklines/new
  def new
    @caseworkline = Caseworkline.new
  end

  # GET /caseworklines/1/edit
  def edit
  end

  # POST /caseworklines
  # POST /caseworklines.json
  def create
    @casework = Casework.find(params[:casework_id])
    @caseworkline = @casework.caseworklines.create(caseworkline_params)
    #redirect_to actives_path(@active)
    # redirect_to @active
    redirect_to edit_casework_path(@casework)
  end

  # def create old
  #   @caseworkline = Caseworkline.new(caseworkline_params)
  #
  #   respond_to do |format|
  #     if @caseworkline.save
  #       format.html { redirect_to @caseworkline, notice: 'Caseworkline was successfully created.' }
  #       format.json { render :show, status: :created, location: @caseworkline }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @caseworkline.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /caseworklines/1
  # PATCH/PUT /caseworklines/1.json
  def update
    @casework=Casework.find(caseworkline_params[:casework_id])
    respond_to do |format|
      if @caseworkline.update(caseworkline_params)
        format.html { redirect_to edit_casework_path(@casework), notice: 'Caseworkline was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseworkline }
      else
        format.html { render :edit }
        format.json { render json: @caseworkline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworklines/1
  # DELETE /caseworklines/1.json
  def destroy
    @caseworkline.destroy
    respond_to do |format|
      format.html { redirect_to caseworklines_url, notice: 'Caseworkline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseworkline
      @caseworkline = Caseworkline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseworkline_params
      params.require(:caseworkline).permit(:casework_id, :caseitem_id, :esse_id, :quantity, :price, :cost, :vatgroup, :whscode, :status, :openqty, :baseid)
    end
end
