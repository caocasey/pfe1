class EntertainementsController < ApplicationController
  before_action :set_entertainement, only: [:show, :edit, :update, :destroy]

  # GET /entertainements
  # GET /entertainements.json
  def index
    @entertainements = Entertainement.all
  end

  # GET /entertainements/1
  # GET /entertainements/1.json
  def show
  end

  # GET /entertainements/new
  def new
    @entertainement = Entertainement.new
  end

  # GET /entertainements/1/edit
  def edit
  end

  # POST /entertainements
  # POST /entertainements.json
  def create
    @entertainement = Entertainement.new(entertainement_params)

    respond_to do |format|
      if @entertainement.save
        format.html { redirect_to @entertainement, notice: 'Entertainement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entertainement }
      else
        format.html { render action: 'new' }
        format.json { render json: @entertainement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entertainements/1
  # PATCH/PUT /entertainements/1.json
  def update
    respond_to do |format|
      if @entertainement.update(entertainement_params)
        format.html { redirect_to @entertainement, notice: 'Entertainement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entertainement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entertainements/1
  # DELETE /entertainements/1.json
  def destroy
    @entertainement.destroy
    respond_to do |format|
      format.html { redirect_to entertainements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entertainement
      @entertainement = Entertainement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entertainement_params
      params.require(:entertainement).permit(:waitingtime)
    end
end
