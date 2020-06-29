<%@page import="java.util.LinkedList"%>
<%@page import="model.Accidentes"%>
<%@page import="model.Usuario"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFORMACION CLIENTE</title>
        <link href="css/estilo.css" rel="stylesheet">
        <link href="css/formularios.css" rel="stylesheet">
        <script src="js/validarRUT.js"></script>
         <script src="js/main.js"></script>
        <style>
        input.selector-css {
    pading-top: 5px !important;
    /* padding-top: 15px; */
    margin-top: 5px;
}
        
        
        </style>
    </head>
    <body>
    <center>
    <div>    
    <h3>INFORMACION DEL PROFESIONAL</h3>
    </div>
    
    <div>
    	<form action ="MPControlador" method="POST">
    	
    	ID:
    	<input class="selector-css"  type="text" name ="txtid" required onkeyup="this.value=Numeros(this.value)" maxlength="3" "><br>
    	
    	NOMBRE:
    	<input class="selector-css"  type="text" name ="txtnom" required><br>
    	RUT:
    	<input  class="selector-css"  id="rut" oninput="checkRut(this)" type="text" name ="txtrut"  required><br>
    	TELEFONO:
    		<input class="selector-css"  type="text" name="txttel" pattern="[0-9]{9}" ><br>
    	EMAIL:<br>    	
		<input  class="selector-css"  type="text" name ="txtema"   required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"><br>
    	<br> 
    	ACTIVIDAD:<br>    	
		<input  class="selector-css"  type="text" name ="txtact"   required><br>
    	<br>    	
    
    	  <button  type="submit"  name = "accion" value="Guardar" >GUARDAR</button>

    	
    	
    	</form>
    
    
    </div>
    
    </center>
    
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>

<script>

$(document).ready(function()
		{
		$("input[name=radiou]").change(function () {	 
			$('input[name=txtaespe]').val($(this).val());
			});
 
		 });

$(document).ready(function(){
	$("select[name=accidente]").change(function(){

            $('input[name=txttase]').val($(this).val());
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