	var durre_reclamations_contentieuses = 60;
	var durre_reclamations_gracieuses = 60;
	var durre_demande_de_sursis_de_paiement = 8;
	var durre_opposition_au_titre_de_perception = 8;
	var durre_opposition_aux_actes_de_poursuites = 8;
	var d = new Date();
	var daty_androany = d.getTime();

	function faharetany(karazany) {
		var daty = new Date(daty_androany + (1000 * 60 * 60 * 24 * karazany));
		var jour = daty.getDate();
		var mois = daty.getMonth();
		if (mois == 0) {
			mois = "Janvier";
		}
		if (mois == 1) {
			mois = "Fevrier";
		}
		if (mois == 2) {
			mois = "Mars";
		}
		if (mois == 3) {
			mois = "Avril";
		}
		if (mois == 4) {
			mois = "Mai";
		}
		if (mois == 5) {
			mois = "Juin";
		}
		if (mois == 6) {
			mois = "Juillet";
		}
		if (mois == 7) {
			mois = "Août";
		}
		if (mois == 8) {
			mois = "Septembre";
		}
		if (mois == 9) {
			mois = "Octobre";
		}
		if (mois == 10) {
			mois = "Novembre";
		}
		if (mois == 11) {
			mois = "Décembre";
		}
		var anne = daty.getFullYear();
		var valiny = jour + " " + mois + " " + anne ;
		return valiny;
	}


function nouvel() {
	page2.style.display = "none";
	login.style.display = "none";
	page1.style.display = "block";
}

function decon() {
	page2.style.display = "none";
	page1.style.display = "none";
	login.style.display = "block";
	document.location.href = "index.html";
}