<%@page import="java.util.LinkedList"%>
<%@page import="model.Accidentes"%>
<%@page import="model.Usuario"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>añadir registros a la BD</title>
        <link href="css/estilo.css" rel="stylesheet">
        <script src="js/validarRUT.js"></script>
    </head>
    <body>
    <center>
    <div>    
    <h3>AGREGAR DATOS A TABLA DESPUES CAMBIAR ESTE TITULO</h3>
    </div>
    
    <div>
    	<form action ="Controlador" method="POST">
    	
    	ID:
    	<input type="text" name ="txtid" required><br>
    	NOMBRE:
    	<input type="text" name ="txtnom" required><br>
    	FECHA:
    	<input type="date" name ="txtfech"  required><br>
    	IDENTIFICADOR RUT:
    	<input type="text"  id="rut" oninput="checkRut(this)"  name ="txtident" required><br>
    	DESCRIPCION:
    	<input type="text" name ="txtdesc" required><br>
    	<input type="submit" name ="accion" value="Guardar">
    	
    	
    	</form>
    
    
    </div>
    
    </center>
    
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script>
$("#fechaingreso").focusout(function(){
	  s= $(this).val();
	  var bits = s.split('/');
	  var d = new Date(bits[2] + '/' + bits[0] + '/' + bits[1]);
	  alert(d);
	}); 
</script>
      
    </body>
</html>