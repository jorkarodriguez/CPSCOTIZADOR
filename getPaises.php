<?php
require_once('_C0nect10n.php');//importa la coneccion
    $conexion= _conectar();//verifica la coneccion
    $query="SELECT ID_Region,nombre FROM tb_regiones ORDER BY nombre";
    $result = mysqli_query($conexion,$query)
        or die("Ocurrio un error en la consulta SQL");


    $Regiones = array();
    $fila = array();
while (($fila = mysqli_fetch_array($result)) != NULL) {
    $Regiones[]=$fila;
}
print_r(json_encode($Regiones));
// Cerrar la conexión
mysqli_close($conexion);