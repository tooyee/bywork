class EssesController < ApplicationController
  before_action :set_ess, only: [:show, :edit, :update, :destroy]

  # GET /esses
  # GET /esses.json
  def index
    @esses = Esse.all
  end

  # GET /esses/1
  # GET /esses/1.json
  def show
  end

  # GET /esses/new
  def new
    @ess = Esse.new
  end

  # GET /esses/1/edit
  def edit
  end

  # POST /esses
  # POST /esses.json
  def create
    @ess = Esse.new(ess_params)

    respond_to do |format|
      if @ess.save
        format.html { redirect_to esses_url, notice: 'Esse was successfully created.' }
        format.json { render :show, status: :created, location: @ess }
      else
        format.html { render :new }
        format.json { render json: @ess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esses/1
  # PATCH/PUT /esses/1.json
  def update
    respond_to do |format|
      if @ess.update(ess_params)
        format.html { redirect_to esses_url, notice: 'Esse was successfully updated.' }
        format.json { render :show, status: :ok, location: @ess }
      else
        format.html { render :edit }
        format.json { render json: @ess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esses/1
  # DELETE /esses/1.json
  def destroy
    @ess.destroy
    respond_to do |format|
      format.html { redirect_to esses_url, notice: 'Esse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ess
      @ess = Esse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ess_params
      params.require(:esse).permit(:code, :name, :essetype)
    end
end
