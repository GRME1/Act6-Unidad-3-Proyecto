<?php

include("conexion.php");
$con=conectar();

$id=$_POST['id'];
$conductor=$_POST['conductor'];
$vehiculo=$_POST['vehiculo'];
$pasajero=$_POST['pasajero'];
$destino=$_POST['destino'];
$salida=$_POST['salida'];
$importe=$_POST['importe'];

$sql = "UPDATE viajes SET conductor='$conductor', vehiculo='$vehiculo', pasajero='$pasajero', destino='$destino', salida='$salida', importe='$importe' WHERE id = '$id'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: index.php");
    }
?>