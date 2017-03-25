function load(){
		var url = "http://177.231.44.78/Usuario/";
	   
		logIn = new XMLHttpRequest();
		logIn.open("POST", url ,true);
		logIn.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		logIn.send();

		logIn.onreadystatechange = function (){
			if (logIn.readyState == 4) {
				if (Number(logIn.responceText) == 1){
					alert("Existe una sesión");
				}
			}
		}
		setTimeout(function(){
			location.assign("login.html")
		},3500)
}