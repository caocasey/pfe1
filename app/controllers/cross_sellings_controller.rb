class CrossSellingsController < ApplicationController
  before_action :set_cross_selling, only: [:show, :edit, :update, :destroy]

  # GET /cross_sellings
  # GET /cross_sellings.json
  def index
    @cross_sellings = CrossSelling.all
  end

  # GET /cross_sellings/1
  # GET /cross_sellings/1.json
  def show
  end

  # GET /cross_sellings/new
  def new
    @cross_selling = CrossSelling.new
  end

  # GET /cross_sellings/1/edit
  def edit
  end

  # POST /cross_sellings
  # POST /cross_sellings.json
  def create
    @cross_selling = CrossSelling.new(cross_selling_params)

    respond_to do |format|
      if @cross_selling.save
        format.html { redirect_to @cross_selling, notice: 'Cross selling was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cross_selling }
      else
        format.html { render action: 'new' }
        format.json { render json: @cross_selling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cross_sellings/1
  # PATCH/PUT /cross_sellings/1.json
  def update
    respond_to do |format|
      if @cross_selling.update(cross_selling_params)
        format.html { redirect_to @cross_selling, notice: 'Cross selling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cross_selling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cross_sellings/1
  # DELETE /cross_sellings/1.json
  def destroy
    @cross_selling.destroy
    respond_to do |format|
      format.html { redirect_to cross_sellings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cross_selling
      @cross_selling = CrossSelling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cross_selling_params
      params.require(:cross_selling).permit(:nbr_advice_item)
    end
end
