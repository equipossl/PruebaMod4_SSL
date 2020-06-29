<%-- 
    Ejemplo de formulario con validaci�n simple en JSP utilizando scriptlets
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ASESORIAS</title>
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
    <h3>EDITAR FORMULARIO  DE ASESORIA</h3>
    </div>
    
    <div id="form">
    	<form action ="FAsControlador" method="POST">
    	   		
   		<table style="width:80%;">
    	
    	<p>ID:</p>
    	<p><input class="selector-css" type="text" name ="txtid" value="${asesoria.getId()}" required></p><%-- usando ese value lo que haremos sera mostrar todos los campos en los formularios --%>
    	<p>NOMBRE:</p>
    	<p><input class="selector-css"  type="text" name ="txtnom" value="${asesoria.getNom()}" required></p>
    	<p>FECHA:</p>
    	<p><input class="selector-css"  type="date" name ="txtfech"  value="${asesoria.getFech()}" required></p>
    	<p>ACTIVIDAD DE ASESORIA:</p>
    	<select class="select-css"  name="accidente">
		   <option value="0">SELECCIONE:</option>
			<option value="MANTENCION">MANTENCION</option>
			<option value="APRESTO">APRESTO</option>
			<option value="MANEJO DE CRISIS">MANEJO DE CRISIS</option>
			<option value="COACHING PSICOLOGICO">COACHING PSICOLOGICO</option>
		</select>
    	<p><input class="selector-css"  type="text" name ="txttase" value="${asesoria.getTase()}"  enabled required></p>

    	<p>ASESORIA ESPECIAL:</p>
    	<p><input class="selector-css"  type="text" name ="txtaespe"  value="${asesoria.getAespe()}" required></p>
    	<p>DETALLE ASESORIA SOLICITADA:</p>
    	<p><input class="selector-css"  type="text" name ="txtadeta"  value="${asesoria.getAdeta()}" ></p>
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

            $('input[name=txttase]').val($(this).val());
        });


});

</script>
    </body>
</html>