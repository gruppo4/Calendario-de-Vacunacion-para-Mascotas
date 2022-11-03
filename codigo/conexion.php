<?php
$db_host = "local_host";
$usuario = "nombre_de_usuario_bd";
$psw = "contraseña_bd";
$nombre_basededatos = "nombre_bada";
$nombre = $_POST['nombreU'];
$contra = $_POST['contra'];

$conn = mysqlconnect($dbhost,$usuario,$psw,$nombre_basededatos);
$resultado = mysqli_query($conn,"select * from sesion where nombre='$nombre' AND pass='$contra'");
$filas = mysqli_num_rows($resultado);
if ($filas>0){
	echo"conexion y log establecido";}
	else{
	echo"user o contra incorrecta";}
mysqli_free_result($resultado);
mysqli_close($conn);

?>
