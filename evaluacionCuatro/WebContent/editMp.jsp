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
                <script src="js/validarRUT.js"></script>
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
    <h3>EDITAR INFORMACION PROFESIONAL</h3>
    </div>
    
    <div id="form">
    	<form action ="MPControlador" method="POST">
    	   		
   		<table style="width:80%;">
    	
    	<p>ID:</p>
    	<p><input class="selector-css" type="text" name ="txtid" value="${mprofesional.getId()}" required></p><%-- usando ese value lo que haremos sera mostrar todos los campos en los formularios --%>
    	<p>NOMBRE:</p>
    	<p><input class="selector-css"  type="text" name ="txtnom" value="${mprofesional.getNom()}" required></p>
    	<p>RUT:</p>
    	<p><input class="selector-css"   id="rut" oninput="checkRut(this)" type="text" name ="txtrut"  value="${mprofesional.getRut()}" required></p>
    	<p>TELEFONO:</p>    	
    	<p><input class="selector-css"  type="text" name ="txttel" value="${mprofesional.getTel()}"  pattern="[0-9]{9}" required></p>

    	<p>EMAIL</p>
    	<p><input class="selector-css"  type="text" name ="txtema"  value="${mprofesional.getEma()}" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></p>
    	<p>ACTIVIDAD</p>
    	<p><input class="selector-css"  type="text" name ="txtact"  value="${mprofesional.getAct()}" ></p>
    	
    	<br>
    	
    	  <button  type="submit"  name = "accion" value="Actualizar" >ACTUALIZAR INFORMACION</button>
 
    	
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