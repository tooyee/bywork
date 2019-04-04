class CaseworklinethingsController < ApplicationController
  before_action :set_caseworklinething, only: [:show, :edit, :update, :destroy]

  # GET /caseworklinethings
  # GET /caseworklinethings.json
  def index
    @caseworklinethings = Caseworklinething.all
  end

  # GET /caseworklinethings/1
  # GET /caseworklinethings/1.json
  def show
  end

  # GET /caseworklinethings/new
  def new
    @caseworklinething = Caseworklinething.new
  end

  # GET /caseworklinethings/1/edit
  def edit
  end

  # POST /caseworklinethings
  # POST /caseworklinethings.json
  def create
    @caseworklinething = Caseworklinething.new(caseworklinething_params)

    respond_to do |format|
      if @caseworklinething.save
        format.html { redirect_to @caseworklinething, notice: 'Caseworklinething was successfully created.' }
        format.json { render :show, status: :created, location: @caseworklinething }
      else
        format.html { render :new }
        format.json { render json: @caseworklinething.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseworklinethings/1
  # PATCH/PUT /caseworklinethings/1.json
  def update
    respond_to do |format|
      if @caseworklinething.update(caseworklinething_params)
        format.html { redirect_to @caseworklinething, notice: 'Caseworklinething was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseworklinething }
      else
        format.html { render :edit }
        format.json { render json: @caseworklinething.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworklinethings/1
  # DELETE /caseworklinethings/1.json
  def destroy
    @caseworklinething.destroy
    respond_to do |format|
      format.html { redirect_to caseworklinethings_url, notice: 'Caseworklinething was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseworklinething
      @caseworklinething = Caseworklinething.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseworklinething_params
      params.require(:caseworklinething).permit(:casework_id, :caseitem_id, :kind_id, :thing_id, :thingcode, :thingname, :quantity, :unit, :remarks, :begindate, :enddate, :fromwhscode, :towhscode, :status)
    end
end
