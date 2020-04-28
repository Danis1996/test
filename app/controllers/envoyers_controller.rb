class EnvoyersController < ApplicationController
  before_action :set_envoyer, only: [:show, :edit, :update, :destroy]

  # GET /envoyers
  # GET /envoyers.json
  def index
    @envoyers = Envoyer.all
  end

  # GET /envoyers/1
  # GET /envoyers/1.json
  def show
  end

  # GET /envoyers/new
  def new
    @envoyer = Envoyer.new
  end

  # GET /envoyers/1/edit
  def edit
  end

  # POST /envoyers
  # POST /envoyers.json
  def create
    @envoyer = Envoyer.new(envoyer_params)

    respond_to do |format|
      if @envoyer.save
        format.html { redirect_to @envoyer, notice: 'Envoyer was successfully created.' }
        format.json { render :show, status: :created, location: @envoyer }
      else
        format.html { render :new }
        format.json { render json: @envoyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envoyers/1
  # PATCH/PUT /envoyers/1.json
  def update
    respond_to do |format|
      if @envoyer.update(envoyer_params)
        format.html { redirect_to @envoyer, notice: 'Envoyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @envoyer }
      else
        format.html { render :edit }
        format.json { render json: @envoyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envoyers/1
  # DELETE /envoyers/1.json
  def destroy
    @envoyer.destroy
    respond_to do |format|
      format.html { redirect_to envoyers_url, notice: 'Envoyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envoyer
      @envoyer = Envoyer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def envoyer_params
      params.require(:envoyer).permit(:user_reclamation_id, :titre, :contenu)
    end
end
