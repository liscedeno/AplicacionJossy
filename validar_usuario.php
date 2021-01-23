<?php
require 'conexion.php';
$usu=$_REQUEST["Usuario"];
$pas=$_REQUEST["Password"];
$usu = str_replace("%20"," ",$usu);//por si hay espacios en blanco
$pas = str_replace("%20"," ",$pas);
$fecha = date("Y-m-d H:i:s");


$sentencia = "select * from tbl_empleados where usuario_empleados='$usu' and clave_empleados='$pas'";

		$query = "INSERT INTO tbl_usuariologin(empleados_login, fecha_usuariologin)VALUES('$usu','$fecha')";
		$result = $mysqli->query($query);
$res = mysqli_query($mysqli,$sentencia);
$val = mysqli_fetch_assoc($res);
echo json_encode($val);
mysqli_close($mysqli);
?>