class UnitdealsController < ApplicationController
  before_action :set_unitdeal, only: [:show, :edit, :update, :destroy]

  # GET /unitdeals
  # GET /unitdeals.json
  def index
    @unitdeals = Unitdeal.all
  end

  # GET /unitdeals/1
  # GET /unitdeals/1.json
  def show
  end

  # GET /unitdeals/new
  def new
    @unitdeal = Unitdeal.new
  end

  # GET /unitdeals/1/edit
  def edit
  end

  # POST /unitdeals
  # POST /unitdeals.json
  def create
    @unitdeal = Unitdeal.new(unitdeal_params)

    respond_to do |format|
      if @unitdeal.save
        format.html { redirect_to @unitdeal, notice: 'Unitdeal was successfully created.' }
        format.json { render :show, status: :created, location: @unitdeal }
      else
        format.html { render :new }
        format.json { render json: @unitdeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unitdeals/1
  # PATCH/PUT /unitdeals/1.json
  def update
    respond_to do |format|
      if @unitdeal.update(unitdeal_params)
        format.html { redirect_to @unitdeal, notice: 'Unitdeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @unitdeal }
      else
        format.html { render :edit }
        format.json { render json: @unitdeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unitdeals/1
  # DELETE /unitdeals/1.json
  def destroy
    @unitdeal.destroy
    respond_to do |format|
      format.html { redirect_to unitdeals_url, notice: 'Unitdeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unitdeal
      @unitdeal = Unitdeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unitdeal_params
      params.require(:unitdeal).permit(:code, :name)
    end
end
