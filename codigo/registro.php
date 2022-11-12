<?php
$dbhost = "localhost";
$usuario = "id19615291_grupo4";
$psw = "Vacunacion4_";
$nombreBADA = "id19615291_calendario";
$nombre = $_POST['nombre'];
$correo = $_POST['email'];
$direccion = $_POST['direccion'];
$contra = $_POST['psw'];

$conn = mysqli_connect($dbhost, $usuario, $psw, $nombreBADA);
    
$registrar = "INSERT INTO dueño(nombre, email, direccion, psw) VALUES ('$nombre', '$correo', '$direccion', '$contra');";
    
$consulta = mysqli_query($conn, $registrar);
    
if($consulta){
    header("Location: https://vacunacionmascotas.000webhostapp.com/registromascota.html");
}else{
     echo("No se pudo registrar");
}
    
?>