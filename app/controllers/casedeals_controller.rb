class CasedealsController < ApplicationController
  before_action :set_casedeal, only: [:show, :edit, :update, :destroy]

  # GET /casedeals
  # GET /casedeals.json
  def index
    @casedeals = Casedeal.all
  end

  # GET /casedeals/1
  # GET /casedeals/1.json
  def show
  end

  # GET /casedeals/new
  def new
    @casedeal = Casedeal.new
  end

  # GET /casedeals/1/edit
  def edit
  end

  # POST /casedeals
  # POST /casedeals.json
  def create
    @casedeal = Casedeal.new(casedeal_params)

    respond_to do |format|
      if @casedeal.save
        format.html { redirect_to @casedeal, notice: 'Casedeal was successfully created.' }
        format.json { render :show, status: :created, location: @casedeal }
      else
        format.html { render :new }
        format.json { render json: @casedeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casedeals/1
  # PATCH/PUT /casedeals/1.json
  def update
    respond_to do |format|
      if @casedeal.update(casedeal_params)
        format.html { redirect_to @casedeal, notice: 'Casedeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @casedeal }
      else
        format.html { render :edit }
        format.json { render json: @casedeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casedeals/1
  # DELETE /casedeals/1.json
  def destroy
    @casedeal.destroy
    respond_to do |format|
      format.html { redirect_to casedeals_url, notice: 'Casedeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casedeal
      @casedeal = Casedeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casedeal_params
      params.require(:casedeal).permit(:name, :caseitem_id, :dealtype, :floworderid, :flowtype)
    end
end
