class DutydealsController < ApplicationController
  before_action :set_dutydeal, only: [:show, :edit, :update, :destroy]

  # GET /dutydeals
  # GET /dutydeals.json
  def index
    @dutydeals = Dutydeal.all
  end

  # GET /dutydeals/1
  # GET /dutydeals/1.json
  def show
  end

  # GET /dutydeals/new
  def new
    @dutydeal = Dutydeal.new
  end

  # GET /dutydeals/1/edit
  def edit
  end

  # POST /dutydeals
  # POST /dutydeals.json
  def create
    @dutydeal = Dutydeal.new(dutydeal_params)

    respond_to do |format|
      if @dutydeal.save
        format.html { redirect_to @dutydeal, notice: 'Dutydeal was successfully created.' }
        format.json { render :show, status: :created, location: @dutydeal }
      else
        format.html { render :new }
        format.json { render json: @dutydeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dutydeals/1
  # PATCH/PUT /dutydeals/1.json
  def update
    respond_to do |format|
      if @dutydeal.update(dutydeal_params)
        format.html { redirect_to @dutydeal, notice: 'Dutydeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @dutydeal }
      else
        format.html { render :edit }
        format.json { render json: @dutydeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dutydeals/1
  # DELETE /dutydeals/1.json
  def destroy
    @dutydeal.destroy
    respond_to do |format|
      format.html { redirect_to dutydeals_url, notice: 'Dutydeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dutydeal
      @dutydeal = Dutydeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dutydeal_params
      params.require(:dutydeal).permit(:dutyitem_id, :flowdeal_id, :seltype, :addtype, :updtype, :deltype)
    end
end
