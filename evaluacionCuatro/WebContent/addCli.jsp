<%@page import="java.util.LinkedList"%>
<%@page import="model.Accidentes"%>
<%@page import="model.Usuario"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INGRESAR CLIENTE la BD</title>
        <link href="css/estilo.css" rel="stylesheet">
        <link href="css/formularios.css" rel="stylesheet">
        <script src="js/validarRUT.js"></script>
    </head>
    <body>
    <center>
    <div>    
    <h3>INGRESAR CLIENTE</h3>
    </div>
    
    <div>
    	<form action ="CControlador" method="POST">
    	
    	ID:
    	<input class="selector-css"  type="text" name ="txtid" required><br>
    	NOMBRE:
    	<input class="selector-css"  type="text" name ="txtnom" required><br>
    	FECHA:
    	<input  class="selector-css"  type="date" name ="txtfech"  required><br>
    	IDENTIFICADOR RUT:
    	<input class="selector-css" type="text"  id="rut" oninput="checkRut(this)"  name ="txtrut" minlength="10" maxlength="10" required><br>
    	TIPO DE ACCIDENTE:
    	<select class="select-css"  name="accidente">
		   <option value="0">TIPO DE ACCIDENTE:</option>
			<option value="ATROPELLO">ATROPELLO</option>
			<option value="ACCIDENTE DE TRAYECTO">ACCIDENTE DE TRAYECTO</option>
			<option value="TRAUMATISMO">TRAUMATISMO</option>
			<option value="INTOXICACION">INTOXICACION</option>
		</select>
    	<input type="hidden" name="txtacci" size="40" value="">
    	<br>
    	
    	
    	
    	
    	
    
    	  <button  type="submit"  name = "accion" value="Guardar" >GUARDAR</button>

    	
    	
    	</form>
    
    
    </div>
    
    </center>
    
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script>

$(document).ready(function(){
	$("select[name=accidente]").change(function(){

            $('input[name=txtacci]').val($(this).val());
        });


});



$("#fechaingreso").focusout(function(){
	  s= $(this).val();
	  var bits = s.split('/');
	  var d = new Date(bits[2] + '/' + bits[0] + '/' + bits[1]);
	  alert(d);
	}); 
</script>
      
    </body>
</html>