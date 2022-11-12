<?php
$dbhost = "localhost";
$usuario = "id19615291_grupo4";
$psw = "Vacunacion4_";
$nombreBADA = "id19615291_calendario";
$nombre = $_POST['nombre'];
$contra = $_POST['psw'];

$conn = mysqli_connect($dbhost, $usuario, $psw, $nombreBADA);
$resultado = mysqli_query($conn, "SELECT * from dueño where nombre = '$nombre' AND psw = '$contra'");
$filas = mysqli_num_rows($resultado);

if ($filas>0){
    header ("Location: https://vacunacionmascotas.000webhostapp.com/calendario.html");
}else{
    header ("Location: https://vacunacionmascotas.000webhostapp.com/index.html");
}

mysqli_free_result($resultado);
mysqli_close($conn);
?>