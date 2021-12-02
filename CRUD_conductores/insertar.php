<?php
include("conexion.php");
$con=conectar();


$id=$_POST['id'];
$nombre=$_POST['nombre'];
$apellidop=$_POST['apellidop'];
$apellidom=$_POST['apellidom'];
$telefono=$_POST['telefono'];
$direccion=$_POST['direccion'];
$vehiculo = $_POST['vehiculo'];



$sql="INSERT INTO conductores VALUES('$id','$nombre','$apellidop','$apellidom','$telefono','$direccion','$vehiculo')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: index.php");
}else{
}
?>