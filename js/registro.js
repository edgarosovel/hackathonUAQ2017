function registrar(){
	nom = document.getElementById('nom')
	pass = document.getElementById('pass')
	conpass = document.getElementById('conpass')
	cp = document.getElementById('cp')
	fam = document.getElementById('fam')

	if (pass.value == conpass.value){
		url = "http://177.231.44.78/hackathonUAQ2017/Usuario/registrar";
		reg = new XMLHttpRequest();
		reg.open("POST", url ,true);
		reg.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		reg.send(datos);

		reg.onreadystatechange = function (){
		if (reg.readyState == 4) {
			switch(Number(reg.responseText)){
		        case 1:
		            location.assign("primerUso.html");
		            break;
		        case 2:
		            alert("Verifica tu usuario y/o contraseña");
		            break;
		        default:
		            alert("No se encontró registro alguno.");
		  	        break;
		     	}
			}
		}
	}
}