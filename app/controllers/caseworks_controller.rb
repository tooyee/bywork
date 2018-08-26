class CaseworksController < ApplicationController
  before_action :set_casework, only: [:show, :edit, :update, :destroy]

  # GET /caseworks
  # GET /caseworks.json
  def index
    @caseworks = Casework.all
  end

  # GET /caseworks/1
  # GET /caseworks/1.json
  def show
  end

  # GET /caseworks/new
  def new
    @casework = Casework.new
  end

  # GET /caseworks/1/edit
  def edit
  end

  # POST /caseworks
  # POST /caseworks.json
  def create
    @casework = Casework.new(casework_params)

    respond_to do |format|
      if @casework.save
        format.html { redirect_to caseworks_url, notice: 'Casework was successfully created.' }
        format.json { render :show, status: :created, location: @casework }
      else
        format.html { render :new }
        format.json { render json: @casework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseworks/1
  # PATCH/PUT /caseworks/1.json
  def update
    respond_to do |format|
      if @casework.update(casework_params)
        format.html { redirect_to caseworks_url, notice: 'Casework was successfully updated.' }
        format.json { render :show, status: :ok, location: @casework }
      else
        format.html { render :edit }
        format.json { render json: @casework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseworks/1
  # DELETE /caseworks/1.json
  def destroy
    @casework.destroy
    respond_to do |format|
      format.html { redirect_to caseworks_url, notice: 'Casework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casework
      @casework = Casework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casework_params
      params.require(:casework).permit(:code, :name, :caseflowwork_id, :buyid, :buycode, :buyname, :sellid, :sellcode, :sellname, :salesid, :salescode, :salesname, :status, :remarks)
    end
end
