<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM viajes WHERE id='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
                <div class="container mt-5">
                    <form action="update.php" method="POST">
                    
                        
                                <input type="text" class="form-control mb-3" name="id" placeholder="id" value="<?php echo $row['id']  ?>">
                                <input type="text" class="form-control mb-3" name="conductor" placeholder="conductor" value="<?php echo $row['conductor']  ?>">
                                <input type="text" class="form-control mb-3" name="vehiculo" placeholder="vehiculo" value="<?php echo $row['vehiculo']  ?>">
                                <input type="text" class="form-control mb-3" name="pasajero" placeholder="pasajero" value="<?php echo $row['pasajero']  ?>">
                                <input type="text" class="form-control mb-3" name="destino" placeholder="destino" value="<?php echo $row['destino']  ?>">
                                <input type="text" class="form-control mb-3" name="salida" placeholder="salida" value="<?php echo $row['salida']  ?>">
                                <input type="text" class="form-control mb-3" name="importe" placeholder="importe" value="<?php echo $row['importe']  ?>">
                                
                            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                    </form>
                    
                </div>
    </body>
</html>