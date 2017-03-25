function registrar(){
	nom = document.getElementById('nom')
	pass = document.getElementById('pass')
	conpass = document.getElementById('conpass')
	cp = document.getElementById('cp')
	fam = document.getElementById('fam')
	mail = document.getElementById('mail')

	if (pass.value == conpass.value){
		url = "http://177.231.44.78/hackathonUAQ2017/Usuario/registrar";
		datos = "correo="+mail.value+"&nombre="+nom.value+"&pass="+pass.value+"&cp="+ca.value+"&no_integrantes="+fam.value
		reg = new XMLHttpRequest();
		reg.open("POST", url ,true);
		reg.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		reg.send(datos);

		reg.onreadystatechange = function (){
		if (reg.readyState == 4) {
			if (Number(reg,responseText) == 1){
				alert("Registro exitoso")
			}else{
				alert("Ocurrió un problema en tu registro :'(")
			}
		}
	}else{
		alert("Las contraseñas no coinciden :'(")
	}
}