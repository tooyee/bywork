class CaseflowworksController < ApplicationController
  before_action :set_caseflowwork, only: [:show, :edit, :update, :destroy]

  # GET /caseflowworks
  # GET /caseflowworks.json
  def index
    @caseflowworks = Caseflowwork.all
  end

  # GET /caseflowworks/1
  # GET /caseflowworks/1.json
  def show
  end

  # GET /caseflowworks/new
  def new
    @caseflowwork = Caseflowwork.new
  end

  # GET /caseflowworks/1/edit
  def edit
  end

  # POST /caseflowworks
  # POST /caseflowworks.json
  def create
    @caseflowwork = Caseflowwork.new(caseflowwork_params)

    respond_to do |format|
      if @caseflowwork.save
        format.html { redirect_to caseflowworks_url, notice: 'Caseflowwork was successfully created.' }
        format.json { render :show, status: :created, location: @caseflowwork }
      else
        format.html { render :new }
        format.json { render json: @caseflowwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseflowworks/1
  # PATCH/PUT /caseflowworks/1.json
  def update
    respond_to do |format|
      if @caseflowwork.update(caseflowwork_params)
        format.html { redirect_to caseflowworks_url, notice: 'Caseflowwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseflowwork }
      else
        format.html { render :edit }
        format.json { render json: @caseflowwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseflowworks/1
  # DELETE /caseflowworks/1.json
  def destroy
    @caseflowwork.destroy
    respond_to do |format|
      format.html { redirect_to caseflowworks_url, notice: 'Caseflowwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseflowwork
      @caseflowwork = Caseflowwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseflowwork_params
      params.require(:caseflowwork).permit(:code, :name, :casedeal_id, :accouttype, :floworderid, :flowtype, :vouchertemplatetype, :contenttype, :resourcestype, :subdealtype, :stockaccounttype, :copyresourcestype, :beforeunitwork_id, :afterunitwork_id)
    end
end
