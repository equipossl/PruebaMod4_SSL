<%@page import="java.util.LinkedList"%>
<%@page import="model.Accidentes"%>
<%@page import="model.Usuario"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ASESORIA la BD</title>
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
    <h3>AGREGAR ASESORIA</h3>
    </div>
    
    <div>
    	<form action ="FAsControlador" method="POST">
    	
    	ID:
    	<input class="selector-css"  type="text" name ="txtid" required onkeyup="this.value=Numeros(this.value)" maxlength="3" "><br>
    	
    	NOMBRE:
    	<input class="selector-css"  type="text" name ="txtnom" required><br>
    	FECHA:
    	<input  class="selector-css"  type="date" name ="txtfech"  required><br>
    	ACTIVIDAD DE ASESORIA:
    	<select class="select-css"  name="accidente">
		   <option value="0">SELECCIONE:</option>
			<option value="MANTENCION">MANTENCION</option>
			<option value="APRESTO">APRESTO</option>
			<option value="MANEJO DE CRISIS">MANEJO DE CRISIS</option>
			<option value="COACHING PSICOLOGICO">COACHING PSICOLOGICO</option>
		</select>
		<input type="hidden" name="txttase" size="40" value="">
    	<input class="selector-css"  type="text" name="txttase" style="background: #eeebeb;" disabled><br>
    	ASESORIA ESPECIAL:<br>    	
		<input type="radio" name="radiou" id="edad1" value="SI"> SI
		<input type="radio" name="radiou" id="edad2" value="NO"> NO<br>
		<input type="hidden" name="txtaespe" size="40" value="">
		<input  class="selector-css"  type="text" name ="txtaespe"  disabled style="background: #eeebeb;" required><br>
	   	DETALLE DE LA ASESORIA:
    	<input  class="selector-css"  type="text" name ="txtadeta"  ><br>
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