<?php
//$cons = "SELECT l.Id_usuariologin, l.fecha_usuariologin, (l.empleados_login) as login, (e.usuario_empleados) as usuario FROM tbl_usuariologin l INNER JOIN tbl_empleados e on l.empleados_login = e.Id_empleados WHERE l.empleados_login = $user"; 
//$res = $mysqli->query($cons);
//identificar una peticion ajax, que no sea vacia 
if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){

	require 'conexion.php';
	sleep(1);
	session_start();
//para que sepa que los datos que debe de captar 
	$mysqli->set_charset('utf8');
//variables para el dato que se recibe, con la funcion real_escape de mysql, escape cualquier caracter especial 
	$usuarios = $mysqli->real_escape_string($_POST['usuariolg']);
	$pas = $mysqli->real_escape_string($_POST['passlg']);
	//declaraciones preparadas de la api, ? seran parametros lo que recibira
	if($nueva_consulta = $mysqli->prepare("SELECT nombre_empleados, cargo_empleados FROM tbl_empleados WHERE usuario_empleados = ? AND clave_empleados = ?")){

	//agregar los parametros si es verdadero, ss es 2 tipos de datos string
		$nueva_consulta->bind_param('ss', $usuarios, $pas);
	//ejecutar la consulta llamando al metodo ejecute en la bd
		$nueva_consulta->execute();

	//obtener el resultado de la consulta
		$resultado = $nueva_consulta->get_result();
		
		
	//conexion
		if($resultado->num_rows == 1){
			$datos = $resultado->fetch_assoc();//si encuentra una coincidencia
			//la sesion validara todos los datos que contenga el arreglo datos
			$_SESSION['usuario'] = $datos;
			echo json_encode(array('error' => false, 'tipo' => $datos['cargo_empleados']));
			$user = $_POST['usuariolg'];
		$fecha = date("Y-m-d H:i:s");

		$query = "INSERT INTO tbl_usuariologin(empleados_login, fecha_usuariologin)VALUES('$user','$fecha')";
		$result = $mysqli->query($query);
		
		

		}else{
			echo json_encode(array('error' => true));
		}
		$nueva_consulta->close();
		
	}
}

$mysqli->close();

?>