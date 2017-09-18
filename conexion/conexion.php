<?php
if (!isset($_SESSION)) {
  session_start();
}
$host_db = "localhost";
$user_db = "root";
$pass_db = "15925621";
$db_name = "db_admin_franco";

		
		
		

$conexion = new mysqli($host_db, $user_db, $pass_db, $db_name);

	if ($conexion->connect_error) {
 		die("La conexion falló: " . $conexion->connect_error);
	}




?>
