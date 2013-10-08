class GamingsController < ApplicationController
  before_action :set_gaming, only: [:show, :edit, :update, :destroy]

  # GET /gamings
  # GET /gamings.json
  def index
    @gamings = Gaming.all
  end

  # GET /gamings/1
  # GET /gamings/1.json
  def show
  end

  # GET /gamings/new
  def new
    @gaming = Gaming.new
  end

  # GET /gamings/1/edit
  def edit
  end

  # POST /gamings
  # POST /gamings.json
  def create
    @gaming = Gaming.new(gaming_params)

    respond_to do |format|
      if @gaming.save
        format.html { redirect_to @gaming, notice: 'Gaming was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gaming }
      else
        format.html { render action: 'new' }
        format.json { render json: @gaming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamings/1
  # PATCH/PUT /gamings/1.json
  def update
    respond_to do |format|
      if @gaming.update(gaming_params)
        format.html { redirect_to @gaming, notice: 'Gaming was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gaming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamings/1
  # DELETE /gamings/1.json
  def destroy
    @gaming.destroy
    respond_to do |format|
      format.html { redirect_to gamings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gaming
      @gaming = Gaming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gaming_params
      params.require(:gaming).permit(:score, :urlgame)
    end
end
