class DutyitemsController < ApplicationController
  before_action :set_dutyitem, only: [:show, :edit, :update, :destroy]

  # GET /dutyitems
  # GET /dutyitems.json
  def index
    @dutyitems = Dutyitem.all
  end

  # GET /dutyitems/1
  # GET /dutyitems/1.json
  def show
  end

  # GET /dutyitems/new
  def new
    @dutyitem = Dutyitem.new
  end

  # GET /dutyitems/1/edit
  def edit
  end

  # POST /dutyitems
  # POST /dutyitems.json
  def create
    @dutyitem = Dutyitem.new(dutyitem_params)

    respond_to do |format|
      if @dutyitem.save
        format.html { redirect_to @dutyitem, notice: 'Dutyitem was successfully created.' }
        format.json { render :show, status: :created, location: @dutyitem }
      else
        format.html { render :new }
        format.json { render json: @dutyitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dutyitems/1
  # PATCH/PUT /dutyitems/1.json
  def update
    respond_to do |format|
      if @dutyitem.update(dutyitem_params)
        format.html { redirect_to @dutyitem, notice: 'Dutyitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @dutyitem }
      else
        format.html { render :edit }
        format.json { render json: @dutyitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dutyitems/1
  # DELETE /dutyitems/1.json
  def destroy
    @dutyitem.destroy
    respond_to do |format|
      format.html { redirect_to dutyitems_url, notice: 'Dutyitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dutyitem
      @dutyitem = Dutyitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dutyitem_params
      params.require(:dutyitem).permit(:role_id, :flowitem_id, :seltype, :addtype, :updtype, :deltype)
    end
end
