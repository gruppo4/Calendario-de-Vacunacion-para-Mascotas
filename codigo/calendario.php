<?php 
//fecha tipo de dato:TIMESTAMP LONGITUD DE VALORES:0  VALORPREDETERMINADO: CURRETTIMESTAMP
$db_host = "local_host";
$usuario = "id19615291_grupo4";
$password = "Vacunacion4_";
$nombre_basededatos = "id19615291_calendario";
$fecha=$_POST[ 'fecha'];
$vacuna=$_POST[ 'vacuna'];
$conn = mysqlconnect($dbhost,$usuario,$password,$nombre_basededatos);
$resultado = mysqli_query($conn,"select * from sesion where nombre='$nombre' AND pass='$contra'");

if ($conn){
    echo('se conecto');
}else{
    echo('no se ');
}
// if (isset($_REQUEST['ingresar'])) {

//    $fecha=$_POST[ 'fecha'];
//    $vacuna=$_POST[ 'vacuna'];
    
//    $consulta="INSTER INTO fecha(fecha) VALUES('$fecha')";
//    $ejecutar=mysqli_querry($conexion,$consulta);
//    $consulta="INSTER INTO vacuna(nombre_vac ) VALUES('$vacuna')";
//    $ejecutar=mysqli_querry($conexion,$consulta);



   // if($ $ejecutar){
     //   echo '<script> alert("fecha enviada correcatamente")</script>';
  // }
    //else{
    //  echo '<script> alert("fallo")</script>';
  //  }



   // label>vacuna:<br><input type="text" name="vacuna" value="" class="campos"></label>
//}
