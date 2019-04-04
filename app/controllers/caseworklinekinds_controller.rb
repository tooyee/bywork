class CaseworklinekindsController < ApplicationController
  before_action :set_caseworklinekind, only: [:show, :edit, :update, :destroy]

  # GET /caseworklinekinds
  # GET /caseworklinekinds.json
  def index
    @caseworklinekinds = Caseworklinekind.all
  end

  # GET /caseworklinekinds/1
  # GET /caseworklinekinds/1.json
  def show
  end

  # GET /caseworklinekinds/new
  def new
    @caseworklinekind = Caseworklinekind.new
  end

  # GET /caseworklinekinds/1/edit
  def edit
  end

  # POST /caseworklinekinds
  # POST /caseworklinekinds.json
  def create
    @caseworklinekind = Caseworklinekind.new(caseworklinekind_params)

    respond_to do |format|
      if @caseworklinekind.save
        format.html { redirect_to @caseworklinekind, notice: 'Caseworklinekind was successfully created.' }
        format.json { render :show, status: :created, location: @caseworklinekind }
      else
        format.html { render :new }
        format.json { render json: @caseworklinekind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseworklinekinds/1
  # PATCH/PUT /caseworklinekinds/1.json
  def update
    respond_to do |format|
      if @caseworklinekind.update(caseworklinekind_params)
        format.html { redirect_to @caseworklinekind, notice: 'Caseworklinekind was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseworklinekind }
      else
        format.html { render :edit }
        format.json { render json: @caseworklinekind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworklinekinds/1
  # DELETE /caseworklinekinds/1.json
  def destroy
    @caseworklinekind.destroy
    respond_to do |format|
      format.html { redirect_to caseworklinekinds_url, notice: 'Caseworklinekind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseworklinekind
      @caseworklinekind = Caseworklinekind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseworklinekind_params
      params.require(:caseworklinekind).permit(:casework_id, :caseitem_id, :kind_id, :quantity, :price, :cost, :vatgroup, :whscode, :status, :openqty, :baseid)
    end
end
