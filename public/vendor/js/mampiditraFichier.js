	var fepotoana = document.getElementById('fepotoana');
	function mampisehoInput(){
		document.getElementById('apotra').type = "file";
	}

	function sub1() {
		if (document.getElementById('apotra').value == "") {
			alert("Veuillez inserer l'acte d'imposition");
		} else if (document.getElementById('inp1sy2').value == "") {
			alert("Veuillez inserer le titre de perception");
		} else if (document.getElementById('inp1sy3').value == "") {
			alert("Veuillez inserer la lettre de notification de titre de perception");
		}else if (document.getElementById('inp1sy4').value == "") {
			alert("Veuillez inserer la lettre de réclamation");
		}else{
			document.getElementById('page1').style.display = "none";
			document.getElementById('page2').style.display = "block";
			fepotoana.innerHTML = faharetany(durre_reclamations_contentieuses);
		}
	}

	function mampisehoInput2(){
		document.getElementById('apotra2').type = "file";
	}

	function sub2() {
		if (document.getElementById('apotra2').value == "") {
			alert("Veuillez inserer l'acte d'imposition");
		} else if (document.getElementById('inp2sy2').value == "") {
			alert("Veuillez inserer le titre de perception");
		} else if (document.getElementById('inp2sy3').value == "") {
			alert("Veuillez inserer la lettre de notification de titre de perception");
		}else if (document.getElementById('inp2sy4').value == "") {
			alert("Veuillez inserer la preuves des difficultés financières");
		}else if (document.getElementById('inp2sy5').value == "") {
			alert("Veuillez inserer la lettre de réclamation");
		}else{
			document.getElementById('page1').style.display = "none";
			document.getElementById('page2').style.display = "block";
			fepotoana.innerHTML = faharetany(durre_reclamations_gracieuses);
		}
	}

	function sub3() {
		if (document.getElementById('inp3sy1').value == "") {
			alert("Veuillez inserer la réclamation contentieuse + demande de sursis de paiement");
		} else if (document.getElementById('inp3sy2').value == "") {
			alert("Veuillez inserer la notification définitive");
		}else if (document.getElementById('inp3sy3').value == "") {
			alert("Veuillez inserer le titre de perception ");
		}else if (document.getElementById('inp3sy4').value == "") {
			alert("Veuillez inserer la lettre de notification de titre de perception");
		}else if (document.getElementById('inp3sy5').value == "") {
			alert("Veuillez inserer la lettre de garantie émanant de la Banque ");
		}else{
			document.getElementById('page1').style.display = "none";
			document.getElementById('page2').style.display = "block";
			fepotoana.innerHTML = faharetany(durre_demande_de_sursis_de_paiement);

		}
	}

	function sub4() {
		if (document.getElementById('inp4sy1').value == "") {
			alert("Veuillez inserer la lettre d’opposition");
		} else if (document.getElementById('inp4sy2').value == "") {
			alert("Veuillez inserer la notification définitive");
		}else if (document.getElementById('inp4sy3').value == "") {
			alert("Veuillez inserer le titre de perception ");
		}else if (document.getElementById('inp4sy4').value == "") {
			alert("Veuillez inserer la lettre de notification de titre de perception");
		}else{
			document.getElementById('page1').style.display = "none";
			document.getElementById('page2').style.display = "block";
			fepotoana.innerHTML = faharetany(durre_opposition_au_titre_de_perception);

		}
	}

	function sub5() {
		if (document.getElementById('inp5sy1').value == "") {
			alert("Veuillez inserer l' ATD");
		}else if (document.getElementById('inp5sy2').value == "") {
			alert("Veuillez inserer le titre de perception ");
		}else if (document.getElementById('inp5sy3').value == "") {
			alert("Veuillez inserer la lettre de notification de titre de perception");
		}else{
			document.getElementById('page1').style.display = "none";
			document.getElementById('page2').style.display = "block";
			fepotoana.innerHTML = faharetany(durre_opposition_aux_actes_de_poursuites);

		}
	}
