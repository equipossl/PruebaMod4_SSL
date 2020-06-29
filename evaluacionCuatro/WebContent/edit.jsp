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
    <h3>EDITAR FORMULARIO</h3>
    </div>
    
    <div id="form">
    	<form action ="Controlador" method="POST">
    	   		
   		<table style="width:80%;">
    	
    	<p>ID:</p>
    	<p><input class="espacio" type="text" name ="txtid" value="${persona.getId()}" required></p><%-- usando ese value lo que haremos sera mostrar todos los campos en los formularios --%>
    	<p>NOMBRE:</p>
    	<p><input class="espacio"  type="text" name ="txtnom" value="${persona.getNom()}" required></p>
    	<p>FECHA:</p>
    	<p><input class="espacio"  type="date" name ="txtfech"  value="${persona.getFech()}" required></p>
    	<p>IDENTIFICADOR RUT:</p>
    	<p><input class="espacio"  type="text"  id="rut" oninput="checkRut(this)"  name ="txtident" value="${persona.getIdent()}" required></p>
    	<p>DESCRIPCION:</p>
    	<p><input class="espacio"  type="text" name ="txtdesc"value="${persona.getDesc()}"  ></p>
    	<input type="submit" name ="accion" value="Actualizar">
    	
    	</table>
    	</form>
    
    
    </div>
    
    </section>
    </body>
</html>