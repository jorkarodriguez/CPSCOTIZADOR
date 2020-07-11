<?php
	require_once('_C0nect10n.php');//importa la coneccion
    $conexion= _conectar();//verifica la coneccion
	$peso= strip_tags($_POST['peso']); //obteniendo datos
	$alto=strip_tags($_POST['alto']);
    $ancho=strip_tags($_POST['ancho']);
    $largo=strip_tags($_POST['largo']);
	$Porigen=strip_tags($_POST['porigen']);
	$pdestino=strip_tags($_POST['pdestino']);
	$descuento=strip_tags($_POST['descuento']);
    $arrRespuesta=array();
    if($descuento==""){
       mysqli_query($conexion,"INSERT INTO `tb_cotizaciones`(`peso`, `ancho`, `alto`, `largo`, `P_Destino`, `P_Origen`) VALUES ('$peso','$ancho','$alto','$largo','$pdestino','$Porigen')");
       $result1 = mysqli_query($conexion,"SELECT * FROM `vista_si_el_usuario_no_existe` ORDER by ID_Cotizacion DESC LIMIT 1 ");
       if($total = $result1->fetch_array(MYSQLI_BOTH)){
        mysqli_query($conexion,"UPDATE `tb_cotizaciones` SET `total`= ".$total['dato1']." WHERE ID_Cotizacion=".$total['ID_Cotizacion']."");
        array_push($arrRespuesta,$total['dato1']);
    }
    $result1->free();
    
    }
    $query=" SELECT codigodescuento , ID_USER  FROM `tb_cliente` WHERE codigodescuento='$descuento'";
    if ($resultado = $conexion->query($query)) {
        // obtener un array asociativo 
       
        $fila = array();
        while ($fila = $resultado->fetch_array(MYSQLI_BOTH)) {
            mysqli_query($conexion,"INSERT INTO `tb_cotizaciones`(`peso`, `ancho`, `alto`, `largo`, `P_Destino`, `P_Origen`, `ID_Cliente`) VALUES ('$peso','$ancho','$alto','$largo','$pdestino','$Porigen',".$fila['ID_USER'].")");
            $result2 = mysqli_query($conexion,"SELECT (dato1-dato2) AS TOTAL , ID_Cotizacion , codigodescuento  FROM `vista_si_el_usuario_existe` WHERE codigodescuento=".$fila['codigodescuento']." ORDER by ID_Cotizacion DESC LIMIT 1 ");
        if($total = $result2->fetch_array(MYSQLI_BOTH)){
            mysqli_query($conexion,"UPDATE `tb_cotizaciones` SET `total`= ".$total['TOTAL']." WHERE ID_Cotizacion=".$total['ID_Cotizacion']."");
            array_push($fila,$total['TOTAL']);
            $arrRespuesta[]=$fila;
        }
              }
              $resultado->free();
       

             
    }
 

        
                //echo("INSERT INTO `tb_usuarios`(`idrow`, `nombre`, `correo`, `usuario`, `password`, `fecha_creacion`, `idestado`, `tiempoconexion`, `nit`, `nombre_fact`, `direccion_fact`, `idgrupo`, `nivel`) VALUES (null,'$name','$mail','$user','$password','$hoy','$estado','$teimpodeconeccion','$nit','$nombrefactu','$direccionfactu','$grupo','$nivel')");
		
		
    
    mysqli_close($conexion);
    print_r(json_encode($arrRespuesta)); 
?>