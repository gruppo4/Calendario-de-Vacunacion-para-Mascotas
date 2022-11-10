<?php
$db_host = "local_host";
$usuario = "id19436154_root";
$psw = "gF#*[x^rf1c/^imn";
$nombre_basededatos = "id19436154_main";
$nom = $_POST['nom'];
$psw = $_POST['psw'];

$conn = mysqli_connect($dbhost,$usuario,$psw,$nombre_basededatos);
$resultado = mysqli_query($conn,"SELECT * FROM users where nom='$nom' AND psw='$psw'");
$filas = mysqli_num_rows($resultado);

if ($filas > 0){
header('Location: https://www.youtube.com/');
}else{
header('Location: https://hindermost-temper.000webhostapp.com/index.html');
}

#if ($conn){
 #   echo('cp');
#}else{
 #   echo('no');
#}

mysqli_free_result($resultado);
mysqli_close($conn);

?>
