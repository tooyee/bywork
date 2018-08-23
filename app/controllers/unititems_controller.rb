class UnititemsController < ApplicationController
  before_action :set_unititem, only: [:show, :edit, :update, :destroy]

  # GET /unititems
  # GET /unititems.json
  def index
    @unititems = Unititem.all
  end

  # GET /unititems/1
  # GET /unititems/1.json
  def show
  end

  # GET /unititems/new
  def new
    @unititem = Unititem.new
  end

  # GET /unititems/1/edit
  def edit
  end

  # POST /unititems
  # POST /unititems.json
  def create
    @unititem = Unititem.new(unititem_params)

    respond_to do |format|
      if @unititem.save
        format.html { redirect_to @unititem, notice: 'Unititem was successfully created.' }
        format.json { render :show, status: :created, location: @unititem }
      else
        format.html { render :new }
        format.json { render json: @unititem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unititems/1
  # PATCH/PUT /unititems/1.json
  def update
    respond_to do |format|
      if @unititem.update(unititem_params)
        format.html { redirect_to @unititem, notice: 'Unititem was successfully updated.' }
        format.json { render :show, status: :ok, location: @unititem }
      else
        format.html { render :edit }
        format.json { render json: @unititem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unititems/1
  # DELETE /unititems/1.json
  def destroy
    @unititem.destroy
    respond_to do |format|
      format.html { redirect_to unititems_url, notice: 'Unititem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unititem
      @unititem = Unititem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unititem_params
      params.require(:unititem).permit(:code, :name)
    end
end
