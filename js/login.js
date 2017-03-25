function loguear(){ 
	var username = document.getElementById('usr');
	var password = document.getElementById('pass');

		if (username.value != '' && password.value != '') {
			var url = "http://177.231.44.78/hackathonUAQ2017/Usuario/iniciarSesion";
		   	var datos = "correo=" + username.value + "&pass=" + password.value;
		   
			logIn = new XMLHttpRequest();
			logIn.open("POST", url ,true);
			logIn.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			logIn.send(datos);

			logIn.onreadystatechange = function (){
				if (logIn.readyState == 4) {
					switch(Number(logIn.responseText)){
		                case 1:
		                if (yaHay()){
		                	location.assign("resultadoCuestionario.html")
		                }else{
		   	            	location.assign("cuestionario.html");
		   	            }
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

function yaHay(){
		var url = "http://177.231.44.78/hackathonUAQ2017/Usuario/hay_registro";
	   
		logIn = new XMLHttpRequest();
		logIn.open("POST", url ,true);
		logIn.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		logIn.send();

		logIn.onreadystatechange = function (){
			if (logIn.readyState == 4) {
				if (Number(logIn.responseText) == 1){
					return true
				}
			}

		return false
}