<?php
include("conexion.php");
$con=conectar();

$id=$_POST['id'];
$nombre=$_POST['nombre'];
$apellidop=$_POST['apellidop'];
$apellidom=$_POST['apellidom'];
$telefono=$_POST['telefono'];
$direccion=$_POST['direccion'];
$ocupacion=$_POST['ocupacion'];


$sql="INSERT INTO empleados VALUES('$id','$nombre','$apellidop','$apellidom','$telefono','$direccion','$ocupacion')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: index.php");
}
?>