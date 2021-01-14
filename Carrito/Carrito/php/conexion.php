<?php
    $servidor="localhost";
    $nombreBd="carrito";
    $usuario="root";
    $pass="";
    $conexion=new mysqli($servidor, $usuario, $pass, $nombreBd);
    if($conexion -> connect_error){
        die("No se pudo conectar a la base de datos. Verifica por favor.");
    }
?>