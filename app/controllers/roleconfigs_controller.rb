class RoleconfigsController < ApplicationController
  before_action :set_roleconfig, only: [:show, :edit, :update, :destroy]

  # GET /roleconfigs
  # GET /roleconfigs.json
  def index
    @roleconfigs = Roleconfig.all
  end

  # GET /roleconfigs/1
  # GET /roleconfigs/1.json
  def show
  end

  # GET /roleconfigs/new
  def new
    @roleconfig = Roleconfig.new
  end

  # GET /roleconfigs/1/edit
  def edit
  end

  # POST /roleconfigs
  # POST /roleconfigs.json
  def create
    @roleconfig = Roleconfig.new(roleconfig_params)

    respond_to do |format|
      if @roleconfig.save
        format.html { redirect_to @roleconfig, notice: 'Roleconfig was successfully created.' }
        format.json { render :show, status: :created, location: @roleconfig }
      else
        format.html { render :new }
        format.json { render json: @roleconfig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roleconfigs/1
  # PATCH/PUT /roleconfigs/1.json
  def update
    respond_to do |format|
      if @roleconfig.update(roleconfig_params)
        format.html { redirect_to @roleconfig, notice: 'Roleconfig was successfully updated.' }
        format.json { render :show, status: :ok, location: @roleconfig }
      else
        format.html { render :edit }
        format.json { render json: @roleconfig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roleconfigs/1
  # DELETE /roleconfigs/1.json
  def destroy
    @roleconfig.destroy
    respond_to do |format|
      format.html { redirect_to roleconfigs_url, notice: 'Roleconfig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roleconfig
      @roleconfig = Roleconfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roleconfig_params
      params.require(:roleconfig).permit(:user_id, :role_id)
    end
end
