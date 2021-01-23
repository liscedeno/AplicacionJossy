<?php
require 'conexion.php';

$sql = "select * from tbl_circuitos ORDER BY nombre_circuito ASC";

$datos = array();
$res = mysqli_query($mysqli,$sql);
while ( $row = mysqli_fetch_object($res)) {
	$datos[] = $row;
	# code...
}

echo json_encode($datos); //se imprime en pantalla en un formato json todos los registros

mysqli_close($mysqli);
?>