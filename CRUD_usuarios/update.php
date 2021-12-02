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


$sql = "UPDATE usuarios SET nombre='$nombre', apellidop='$apellidop', apellidom='$apellidom', email='$email', telefono='$telefono', fecha_registro = '$fecha_registro' WHERE id = '$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: index.php");
    }
?>