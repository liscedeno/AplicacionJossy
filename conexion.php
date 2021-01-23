<?php
	$mysqli = new mysqli('localhost', 'root', '', 'jossy-pedidos');
	if ($mysqli->connect_errno): //muestra mensaje por error ocurrido
		echo "Error al conectarse con MySQL debido al error".$mysqli->connect_error;
	endif;
?>