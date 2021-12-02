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

$sql = "UPDATE empleados SET nombre='$nombre', apellidop='$apellidop', apellidom='$apellidom', telefono='$telefono', direccion='$direccion',ocupacion ='$ocupacion' WHERE id = '$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: index.php");
    }
   
?>