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
        <script src="js/validarRUT.js"></script>
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
    <h3>EDITAR INFORMACION CLIENTE</h3>
    </div>
    
    <div id="form">
    	<form action ="MControlador" method="POST">
    	   		
   		<table style="width:80%;">
    	
    	<p>ID:</p>
    	<p><input class="selector-css" type="text" name ="txtid" value="${mcliente.getId()}" required></p><%-- usando ese value lo que haremos sera mostrar todos los campos en los formularios --%>
    	<p>NOMBRE:</p>
    	<p><input class="selector-css"  type="text" name ="txtnom" value="${mcliente.getNom()}" required></p>
    	<p>RUT:</p>
    	<p><input class="selector-css"  type="text" name ="txtrut" id="rut" oninput="checkRut(this)"  value="${mcliente.getRut()}" required></p>
    	<p>TELEFONO:</p>    	
    	<p><input class="selector-css"  type="text" name ="txttel" value="${mcliente.getTel()}"  pattern="[0-9]{9}" required></p>

    	<p>EMAIL</p>
    	<p><input class="selector-css"  type="text" name ="txtema"  value="${mcliente.getEma()}" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"></p>
    	
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