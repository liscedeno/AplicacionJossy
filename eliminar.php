<?php

require 'conexion.php';
$idclientes = $_REQUEST ["idclientes"];
¨/*$ciclientes= $_REQUEST ["cedula"];
$nombreclientes= $_REQUEST ["nombreclientes"];
$apellidoclientes= $_REQUEST ["apellidoclientes"];
$direccionclientes = $_REQUEST ["direccionclientes"];
$telefonoclientes = $_REQUEST ["telefonoclientes"];
$correoclientes = $_REQUEST ["correoclientes"];
$distritoclientes = $_REQUEST ["distritoclientes"];
$rucclientes = $_REQUEST ["rucclientes"];*/

$sql = "delete from tbl_clientes where Id_clientes=$idclientes";

if(mysqli_query($mysqli,$sql)){
	echo "Cliente Eliminado correctamente";
}else{
	echo "Error: " . mysqli_error($mysqli);
}
mysqli_close ($mysqli);

?>
