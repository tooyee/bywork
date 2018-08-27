class FlowdealsController < ApplicationController
  before_action :set_flowdeal, only: [:show, :edit, :update, :destroy]

  # GET /flowdeals
  # GET /flowdeals.json
  def index
    @flowdeals = Flowdeal.all
  end

  # GET /flowdeals/1
  # GET /flowdeals/1.json
  def show
  end

  # GET /flowdeals/new
  def new
    @flowdeal = Flowdeal.new
  end

  # GET /flowdeals/1/edit
  def edit
  end

  # POST /flowdeals
  # POST /flowdeals.json
  def create
    @flowdeal = Flowdeal.new(flowdeal_params)

    respond_to do |format|
      if @flowdeal.save
        format.html { redirect_to flowdeals_url, notice: 'Flowdeal was successfully created.' }
        format.json { render :show, status: :created, location: @flowdeal }
      else
        format.html { render :new }
        format.json { render json: @flowdeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowdeals/1
  # PATCH/PUT /flowdeals/1.json
  def update
    respond_to do |format|
      if @flowdeal.update(flowdeal_params)
        format.html { redirect_to flowdeals_url, notice: 'Flowdeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @flowdeal }
      else
        format.html { render :edit }
        format.json { render json: @flowdeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowdeals/1
  # DELETE /flowdeals/1.json
  def destroy
    @flowdeal.destroy
    respond_to do |format|
      format.html { redirect_to flowdeals_url, notice: 'Flowdeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flowdeal
      @flowdeal = Flowdeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flowdeal_params
      params.require(:flowdeal).permit(:flowitem_id, :unitdeal_id, :dealtype, :floworderid, :flowtype)
    end
end
