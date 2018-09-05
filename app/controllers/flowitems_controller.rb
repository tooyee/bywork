class FlowitemsController < ApplicationController
  before_action :set_flowitem, only: [:show, :edit, :update, :destroy]

  # GET /flowitems
  # GET /flowitems.json
  def index
    @flowitems = Flowitem.all
  end

  # GET /flowitems/search
  def search
    unless params[:search_id].blank?
      @flowitems = Flowitem.where(unititem_id: params[:search_id])
    else
      @flowitems = Flowitem.all
    end

    render :index

  end

  # GET /flowitems/1
  # GET /flowitems/1.json
  def show
  end

  # GET /flowitems/new
  def new
    @flowitem = Flowitem.new
  end

  # GET /flowitems/1/edit
  def edit
  end

  # POST /flowitems
  # POST /flowitems.json
  def create
    @flowitem = Flowitem.new(flowitem_params)

    respond_to do |format|
      if @flowitem.save
        format.html { redirect_to @flowitem, notice: 'Flowitem was successfully created.' }
        format.json { render :show, status: :created, location: @flowitem }
      else
        format.html { render :new }
        format.json { render json: @flowitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowitems/1
  # PATCH/PUT /flowitems/1.json
  def update
    respond_to do |format|
      if @flowitem.update(flowitem_params)
        format.html { redirect_to @flowitem, notice: 'Flowitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @flowitem }
      else
        format.html { render :edit }
        format.json { render json: @flowitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowitems/1
  # DELETE /flowitems/1.json
  def destroy
    @flowitem.destroy
    respond_to do |format|
      format.html { redirect_to flowitems_url, notice: 'Flowitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flowitem
      @flowitem = Flowitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flowitem_params
      params.require(:flowitem).permit(:unititem_id, :code, :name, :remarks)
    end
end
