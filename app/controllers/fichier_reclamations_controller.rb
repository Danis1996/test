class FichierReclamationsController < ApplicationController
  before_action :set_fichier_reclamation, only: [:show, :edit, :update, :destroy]

  # GET /fichier_reclamations
  # GET /fichier_reclamations.json
  def index
    @fichier_reclamations = FichierReclamation.all
    unless current_user
      redirect_to new_user_session_path
    else
      if current_user.is_admin
        redirect_to user_reclamations_path
      end
      @reclamations = Reclamation.all
      @btn = ["default","warning","danger","primary","success"]
    end
  end

  # GET /fichier_reclamations/1
  # GET /fichier_reclamations/1.json
  def show
  end

  # GET /fichier_reclamations/new
  def new
    @fichier_reclamation = FichierReclamation.new
  end

  # GET /fichier_reclamations/1/edit
  def edit
  end

  # POST /fichier_reclamations
  # POST /fichier_reclamations.json
  def create
    @fichier_reclamation = FichierReclamation.new(fichier_reclamation_params)

    respond_to do |format|
      if @fichier_reclamation.save
        format.html { redirect_to @fichier_reclamation, notice: 'Fichier reclamation was successfully created.' }
        format.json { render :show, status: :created, location: @fichier_reclamation }
      else
        format.html { render :new }
        format.json { render json: @fichier_reclamation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fichier_reclamations/1
  # PATCH/PUT /fichier_reclamations/1.json
  def update
    respond_to do |format|
      if @fichier_reclamation.update(fichier_reclamation_params)
        format.html { redirect_to @fichier_reclamation, notice: 'Fichier reclamation was successfully updated.' }
        format.json { render :show, status: :ok, location: @fichier_reclamation }
      else
        format.html { render :edit }
        format.json { render json: @fichier_reclamation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fichier_reclamations/1
  # DELETE /fichier_reclamations/1.json
  def destroy
    @fichier_reclamation.destroy
    respond_to do |format|
      format.html { redirect_to fichier_reclamations_url, notice: 'Fichier reclamation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fichier_reclamation
      @fichier_reclamation = FichierReclamation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fichier_reclamation_params
      params.require(:fichier_reclamation).permit(:reclamation_id, :fichier_id)
    end
end
