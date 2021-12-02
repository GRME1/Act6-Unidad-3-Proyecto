<?php
include("conexion.php");
$con=conectar();

$id=$_POST['id'];
$nombre=$_POST['nombre'];
$apellidop=$_POST['apellidop'];
$apellidom=$_POST['apellidom'];
$email=$_POST['email'];
$telefono=$_POST['telefono'];
$fecha_registro=$_POST['fecha_registro'];


$sql="INSERT INTO usuarios VALUES('$id','$nombre','$apellidop','$apellidom','$email','$telefono','$fecha_registro')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: index.php");
}
?>