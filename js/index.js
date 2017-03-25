function load(){
		body = document.getElementsByTagName('body')[0]
		bady.style.backgroundImage = "url(../img/bc2.jpg)"
		var url = "http://177.231.44.78/hackathonUAQ2017/Usuario/";
	   
		logIn = new XMLHttpRequest();
		logIn.open("POST", url ,true);
		logIn.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		logIn.send();

		logIn.onreadystatechange = function (){
			if (logIn.readyState == 4) {
				if (Number(logIn.responseText) == 1){
					cargar("resultadoCuestionario.html")
				}else{
					cargar("login.html")
				}
			}
		}
}

function cargar(url){
	setTimeout(function(){
		location.assign(url)
	},3500)
}