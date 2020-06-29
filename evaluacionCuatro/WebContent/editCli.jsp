<%-- 
    Ejemplo de formulario con validaci�n simple en JSP utilizando scriptlets
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nombre de usuario con JSP</title>
        <link href="css/estilo.css" rel="stylesheet">
                <link href="css/formularios.css" rel="stylesheet">
        <style type="text/css">
        input.espacio {
    width: 360px;
}
      div#form {
    width: 400px;
    margin-left: auto;
    margin-right: auto;
}  
        
        </style>
    </head>
    <body>
      <section>
    <div>    
    <h3>EDITAR FORMULARIO  cliente</h3>
    </div>
    
    <div id="form">
    	<form action ="CControlador" method="POST">
    	   		
   		<table style="width:80%;">
    	
    	<p>ID:</p>
    	<p><input class="selector-css" type="text" name ="txtid" value="${cliente.getId()}" required></p><%-- usando ese value lo que haremos sera mostrar todos los campos en los formularios --%>
    	<p>NOMBRE:</p>
    	<p><input class="selector-css"  type="text" name ="txtnom" value="${cliente.getNom()}" required></p>
    	<p>FECHA:</p>
    	<p><input class="selector-css"  type="date" name ="txtfech"  value="${cliente.getFech()}" required></p>
    	<p>IDENTIFICADOR RUT:</p>
    	<p><input class="selector-css"  type="text"  id="rut" oninput="checkRut(this)"  name ="txtrut" value="${cliente.getRut()}" required></p>
    	<p>DESCRIPCION:</p>
    	<select class="select-css"  name="accidente">
		   <option value="0">TIPO DE ACCIDENTE:</option>
			<option value="ATROPELLO">ATROPELLO</option>
			<option value="ACCIDENTE DE TRAYECTO">ACCIDENTE DE TRAYECTO</option>
			<option value="TRAUMATISMO">TRAUMATISMO</option>
			<option value="INTOXICACION">INTOXICACION</option>
		</select>
    	   	<input type="hidden" name="txtacci" size="40" value="">
    	<p><input class="selector-css"  type="text" name ="txtacci" value="${cliente.getAcci()}"  required></p>
    	<br>
    	
    	  <button  type="submit"  name = "accion" value="Actualizar" >ACTUALIZAR REGISTRO</button>
 
    	
    	</table>
    	</form>
    
    
    </div>
    
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script>

$(document).ready(function(){
	$("select[name=accidente]").change(function(){

            $('input[name=txtacci]').val($(this).val());
        });


});

</script>
    </body>
</html>