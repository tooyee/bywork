class CaseitemsController < ApplicationController
  before_action :set_caseitem, only: [:show, :edit, :update, :destroy]

  # GET /caseitems
  # GET /caseitems.json
  def index
    @caseitems = Caseitem.all
    # @caseitems = Caseitem.where(flowitem_id: 4)
    # get list for caseitems by flowitem_id by role_id by user_id
    # @caseitem.seltype_caseitems(@caseitem)
  end

  # GET /caseitems/1
  # GET /caseitems/1.json
  def show
  end

  # GET /caseitems/new
  def new
    @caseitem = Caseitem.new
  end

  # GET /caseitems/1/edit
  def edit
  end

  # POST /caseitems
  # POST /caseitems.json
  def create
    @caseitem = Caseitem.new(caseitem_params)

    respond_to do |format|
      if @caseitem.save
        # copy flowdeals to casedeals
        @caseitem.copy_flowdeals_to_casedeals(@caseitem)

        format.html { redirect_to caseitems_url, notice: 'Caseitem was successfully created.' }
        format.json { render :show, status: :created, location: @caseitem }
      else
        format.html { render :new }
        format.json { render json: @caseitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caseitems/1
  # PATCH/PUT /caseitems/1.json
  def update
    respond_to do |format|
      if @caseitem.update(caseitem_params)
        format.html { redirect_to caseitems_url, notice: 'Caseitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @caseitem }
      else
        format.html { render :edit }
        format.json { render json: @caseitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caseitems/1
  # DELETE /caseitems/1.json
  def destroy
    @caseitem.destroy
    respond_to do |format|
      format.html { redirect_to caseitems_url, notice: 'Caseitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caseitem
      @caseitem = Caseitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caseitem_params
      params.require(:caseitem).permit(:code, :name, :flowitem_id, :status, :remarks)
    end
end
