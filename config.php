<?php
	date_default_timezone_set('America/Mexico_City');
	error_reporting(E_ALL|E_STRICT);
	ini_set('display_errors', 'on');

	define( 'URL' ,"http://177.231.44.78/hackathon/");

	define( 'CSS' , URL."public/css/");
	define( 'JS' , URL."public/js/" );
	define('IMG', URL."public/images/");
	define('PERFIL', IMG.'perfil/');
	define('LP','public/images/perfil/');

	//Constantes de la base de datos
	define( 'DB_HOST' ,'177.231.44.78');
	define( 'DB_USER' ,'hackathon');
	define( 'DB_PASS' ,'hackathon');
	define( 'DB_NAME' ,'aguacon');
	define( 'DB_CHARSET' ,'utf-8');

	define( 'ALGOR' ,'sha512');
	define( 'KEY' ,'hack2017');
?>