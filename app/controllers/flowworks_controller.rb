class FlowworksController < ApplicationController
  before_action :set_flowwork, only: [:show, :edit, :update, :destroy]

  # GET /flowworks
  # GET /flowworks.json
  def index
    @flowworks = Flowwork.all
  end

  # GET /flowworks/1
  # GET /flowworks/1.json
  def show
  end

  # GET /flowworks/new
  def new
    @flowwork = Flowwork.new
  end

  # GET /flowworks/1/edit
  def edit
  end

  # POST /flowworks
  # POST /flowworks.json
  def create
    @flowwork = Flowwork.new(flowwork_params)

    respond_to do |format|
      if @flowwork.save
        format.html { redirect_to @flowwork, notice: 'Flowwork was successfully created.' }
        format.json { render :show, status: :created, location: @flowwork }
      else
        format.html { render :new }
        format.json { render json: @flowwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowworks/1
  # PATCH/PUT /flowworks/1.json
  def update
    respond_to do |format|
      if @flowwork.update(flowwork_params)
        format.html { redirect_to @flowwork, notice: 'Flowwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @flowwork }
      else
        format.html { render :edit }
        format.json { render json: @flowwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowworks/1
  # DELETE /flowworks/1.json
  def destroy
    @flowwork.destroy
    respond_to do |format|
      format.html { redirect_to flowworks_url, notice: 'Flowwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flowwork
      @flowwork = Flowwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flowwork_params
      params.require(:flowwork).permit(:flowdeal_id, :unitwork_id, :accouttype, :floworderid, :flowtype, :vouchertemplatetype, :contenttype, :resourcestype, :subdealtype, :stockaccounttype, :copyresourcestype, :beforeunitwork_id, :afterunitwork_id)
    end
end
