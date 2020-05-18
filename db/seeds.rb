# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(
			nom: 'RAJAONARISON Fidel', 
			nif: "0123456789" , 
			email: "fidel@gmail.com", 
			password: "0123456789",
			identifian: "C.fidel.dgi",
			tel: "034 39 052 25"
	)


user_2 = User.create(
			nom: 'Societé RABEZA', 
			nif: "0000000000" , 
			email: "Srabeza@gmail.com", 
			password: "0000000000",
			identifian: "S.rabeza.dgi",
			tel: "22 274 32"
	)


user_3 = User.create(
			nom: 'Agence TARATRA', 
			nif: "1111111111" , 
			email: "Staratra.com", 
			password: "1111111111",
			identifian: "S.taratra.dgi",
			tel: "22 645 85"
	)


user_4 = User.create(
			nom: 'Tranombarotra BAKOLY', 
			nif: "2222222222" , 
			email: "Sbakoly@gmail.com", 
			password: "2222222222",
			identifian: "S.bakoly.dgi",
			tel: "033 09 460 09"
	)


user_5 = User.create(
			nom: 'admin', 
			nif: "123456" , 
			email: "admin.dgi@gmail.com", 
			password: "123456",
			identifian: "admin.dgi",
			tel: "033 20 264 91",
			is_admin: true
	)

reclamation_1 = Reclamation.create(titre:"Réclamations contentieuses" , durre: 60, couleur: "#3291a0")
reclamation_2 = Reclamation.create(titre:"Réclamations gracieuses" , durre: 60, couleur: "#dc7a40")
reclamation_3 = Reclamation.create(titre:"Demande de sursis de paiement" , durre: 10, couleur: "#ff5d5d")
reclamation_4 = Reclamation.create(titre:"Opposition au titre de perception" , durre: 30, couleur: "#b25dff")
reclamation_5 = Reclamation.create(titre:"Opposition aux actes de poursuites" , durre: 10, couleur: "#3a9c12")

fichier_1 = Fichier.create(titre: "Acte d’imposition")
fichier_2 = Fichier.create(titre: "Titre de perception")
fichier_3 = Fichier.create(titre: "Lettre de notification de titre de perception")
fichier_4 = Fichier.create(titre: "Lettre de réclamation")
fichier_6 = Fichier.create(titre: "Preuves des difficultés financières")
fichier_7 = Fichier.create(titre: "Réclamation contentieuse + demande de sursis de paiement")
fichier_8 = Fichier.create(titre: "Notification définitive")
fichier_9 = Fichier.create(titre: "Lettre de garantie émanant de la Banque")
fichier_10 = Fichier.create(titre: "Lettre d’opposition")
fichier_11 = Fichier.create(titre: "ATD")

FichierReclamation.create(reclamation_id: reclamation_1.id, fichier_id: fichier_1.id)
FichierReclamation.create(reclamation_id: reclamation_1.id, fichier_id: fichier_2.id)
FichierReclamation.create(reclamation_id: reclamation_1.id, fichier_id: fichier_3.id)
FichierReclamation.create(reclamation_id: reclamation_1.id, fichier_id: fichier_4.id)
FichierReclamation.create(reclamation_id: reclamation_2.id, fichier_id: fichier_1.id)
FichierReclamation.create(reclamation_id: reclamation_2.id, fichier_id: fichier_2.id)
FichierReclamation.create(reclamation_id: reclamation_2.id, fichier_id: fichier_3.id)
FichierReclamation.create(reclamation_id: reclamation_2.id, fichier_id: fichier_6.id)
FichierReclamation.create(reclamation_id: reclamation_2.id, fichier_id: fichier_4.id)
FichierReclamation.create(reclamation_id: reclamation_3.id, fichier_id: fichier_7.id)
FichierReclamation.create(reclamation_id: reclamation_3.id, fichier_id: fichier_8.id)
FichierReclamation.create(reclamation_id: reclamation_3.id, fichier_id: fichier_2.id)
FichierReclamation.create(reclamation_id: reclamation_3.id, fichier_id: fichier_3.id)
FichierReclamation.create(reclamation_id: reclamation_3.id, fichier_id: fichier_9.id)
FichierReclamation.create(reclamation_id: reclamation_4.id, fichier_id: fichier_10.id)
FichierReclamation.create(reclamation_id: reclamation_4.id, fichier_id: fichier_8.id)
FichierReclamation.create(reclamation_id: reclamation_4.id, fichier_id: fichier_2.id)
FichierReclamation.create(reclamation_id: reclamation_4.id, fichier_id: fichier_3.id)
FichierReclamation.create(reclamation_id: reclamation_5.id, fichier_id: fichier_11.id)
FichierReclamation.create(reclamation_id: reclamation_5.id, fichier_id: fichier_2.id)
FichierReclamation.create(reclamation_id: reclamation_5.id, fichier_id: fichier_3.id)