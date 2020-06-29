<%-- 
    Ejemplo de formulario con validaci�n simple en JSP utilizando scriptlets
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nombre de usuario con JSP</title>
        	<link href="css/estilo.css" rel="stylesheet">
        	<style>
				input.crud {
					width: 150px;
				}
				input.action {
    width: 150px;
}
td {
    border: 1px solid #000;
}
tr {
    border: 1px solid #000;
}
th {
    border: 2px solid #000;
}
</style>
    </head>
    <body>
    
    <center>
    <div>
    <h3>FORMULAROS DE ACCIDENTES CRUD DAO</h3>
    <form method="POST" action="Controlador">
    
    <input class="crud" type="submit" name = "accion" value="Listar">
    <input class="crud" type="submit" name = "accion" value="Nuevo">
    
    </form>
    </div>
    <div><table style="border: 1px solid black; border-collapse: collapse; ">
    <thead>
    <tr>
  		<th>ID</th> 
  		<th>NOMBRE</th> 
  		<th>FECHA</th> 
  		<th>IDENTIFICACION</th> 
  		<th>DESCRIPCION</th>
  		<th>ACCIONES</th>
  	</tr> 
  	</thead>
  	<tbody>
  	<c:forEach var="dato" items="${datos}">
  	<tr>
  	
  		<td>${dato.getId()}</td>
  		<td>${dato.getNom()}</td>
  		<td>${dato.getFech()}</td>
  		<td>${dato.getIdent()}</td>
  		<td>${dato.getDesc()}</td>
  		<td>
  			<form action ="Controlador" method="POST">
  			<input type="hidden" name="id" value="${dato.getId()}">
  				<input class="action"type="submit" name = "accion" value="Editar">
  				<input class="action" type="submit" name = "accion"  value="Eliminar">
  			
  			</form>
  	</tr>	
  	</c:forEach>	
  	</tbody>    
    </table>
    </div>
    
    
    </center>
      
    </body>
</html>