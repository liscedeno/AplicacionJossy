<?php

	require 'conexion.php';

	$ciclientes= $_REQUEST ["cedula"];
	$nombreclientes= $_REQUEST ["nombreclientes"];
	$apellidoclientes= $_REQUEST ["apellidoclientes"];
	$telefonoclientes = $_REQUEST ["telefonoclientes"];
	$correoclientes = $_REQUEST ["correoclientes"];
	$direccionclientes = $_REQUEST ["direccionclientes"];
	$circuitoclientes = $_REQUEST ["circuitoclientes"];
	$rucclientes = $_REQUEST ["rucclientes"];

	$sql = "INSERT INTO tbl_clientes(ci_clientes,nombre_clientes,apellido_clientes,telefono_clientes,correo_clientes,direccion_clientes,Id_circuitos,ruc_clientes) VALUES ('$ciclientes', '$nombreclientes', '$apellidoclientes', '$telefonoclientes', '$correoclientes', '$direccionclientes', '$circuitoclientes', '$rucclientes')";

	$resul = $mysqli->query($sql);

	echo $resul;
	mysqli_close ($mysqli);


?>
