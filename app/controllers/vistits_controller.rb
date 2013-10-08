class VistitsController < ApplicationController
  before_action :set_vistit, only: [:show, :edit, :update, :destroy]

  # GET /vistits
  # GET /vistits.json
  def index
    @vistits = Vistit.all
  end

  # GET /vistits/1
  # GET /vistits/1.json
  def show
  end

  # GET /vistits/new
  def new
    @vistit = Vistit.new
  end

  # GET /vistits/1/edit
  def edit
  end

  # POST /vistits
  # POST /vistits.json
  def create
    @vistit = Vistit.new(vistit_params)

    respond_to do |format|
      if @vistit.save
        format.html { redirect_to @vistit, notice: 'Vistit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vistit }
      else
        format.html { render action: 'new' }
        format.json { render json: @vistit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vistits/1
  # PATCH/PUT /vistits/1.json
  def update
    respond_to do |format|
      if @vistit.update(vistit_params)
        format.html { redirect_to @vistit, notice: 'Vistit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vistit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vistits/1
  # DELETE /vistits/1.json
  def destroy
    @vistit.destroy
    respond_to do |format|
      format.html { redirect_to vistits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vistit
      @vistit = Vistit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vistit_params
      params.require(:vistit).permit(:timeinstore, :date)
    end
end
