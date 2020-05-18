class UserReclamationsController < ApplicationController
  before_action :set_user_reclamation, only: [:show, :edit, :update, :destroy]

  # GET /user_reclamations
  # GET /user_reclamations.json
  def index
    @user_reclamations = UserReclamation.all
    @nouvelles = UserReclamation.where(vue: false)
    @attentes = UserReclamation.where(vue: true ,resolu: false)

    # def mampisehoDaty(daty)
    #   andro = daty[0] + daty[1]
    #   volana = (daty[3] + daty[4]).to_i
    #   taona = daty[6] + daty[7]
    #   case volana
    #     when 1
    #       volana = "Janvier"
    #     when 2
    #       volana = "Fevrier"
    #     when 3
    #       volana = "Mars"
    #     when 4
    #       volana = "Avril"
    #     when 5
    #       volana = "Mai"
    #     when 6
    #       volana = "Juin"
    #     when 7
    #       volana = "Juillet"
    #     when 8
    #       volana = "Août"
    #     when 9
    #       volana = "Septembre"
    #     when 10
    #       volana = "Octobre"
    #     when 11
    #       volana = "Novembre"
    #     when 12
    #       volana = "Décembre"
    #   end
    #   valiny = andro + " " + volana + " 20" + taona
    #   return valiny
    # end
  end

  # GET /user_reclamations/1
  # GET /user_reclamations/1.json
  def show
    if current_user.is_admin == true && @user_reclamation.vue != true
      @user_reclamation.update(vue: true)
    end
  end

  # GET /user_reclamations/new
  def new
    @user_reclamation = UserReclamation.new
  end

  # GET /user_reclamations/1/edit
  def edit
  end

  # POST /user_reclamations
  # POST /user_reclamations.json
  def create

    Reclamation.all.each do |t|
        if params[:"typ#{t.id}"]
          @user_reclamation = UserReclamation.create(
            reclamation_id: params[:"typ#{t.id}"],
            user_id: current_user.id,
            vue: false,
            resolu: false
          )
          t.fichier_reclamations.each do |ft|
            Envoyer.create(user_reclamation_id: @user_reclamation.id, 
                          titre: ft.fichier.titre ,
                          contenu: params[:"#{ft.fichier.id}"] )
          end
        end

    end

    redirect_to @user_reclamation, notice: 'Réclamation envoyée.'
    
    # @user_reclamation = UserReclamation.new(user_reclamation_params)

    # respond_to do |format|
    #   if @user_reclamation.save
    #     format.html { redirect_to @user_reclamation, notice: 'User reclamation was successfully created.' }
    #     format.json { render :show, status: :created, location: @user_reclamation }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user_reclamation.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /user_reclamations/1
  # PATCH/PUT /user_reclamations/1.json
  def update
    @user_reclamation.update(resolu: true)
    redirect_to @user_reclamation, notice: 'Réclamation validée avec succès.'
  end

  # DELETE /user_reclamations/1
  # DELETE /user_reclamations/1.json
  def destroy
    @user_reclamation.destroy
    respond_to do |format|
      format.html { redirect_to user_reclamations_url, notice: 'Réclamation supprimée' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reclamation
      @user_reclamation = UserReclamation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_reclamation_params
      params.require(:user_reclamation).permit(:user_id, :reclamation_id, :date, :vue, :resolu)
    end
end
