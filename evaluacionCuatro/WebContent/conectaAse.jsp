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
        	  <!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/TableExport/3.3.13/css/tableexport.css"> -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/TableExport/3.3.13/js/tableexport.js"></script>
    <script src="FileSaver.js"></script>
        	<link href="css/estilo.css" rel="stylesheet">
        	<script src="js/validarRUT.js"></script>
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
    
        <header>
    
    <button class= "mprincipali" onclick="window.location.href = 'administrador.jsp';">VOLVER A <br>MENU PRINCIPAL</button>
    <button class= "mprincipal" onclick="window.location.href = 'salir.jsp';">SALIR DEL <br>SISTEMA</button>
    
    </header>
    
    <center>
    <div>
    <h1>FORMULAROS DE MEJORAS CRUD DAO( CASO CU8,CU9,CU3) </h1>
    <form method="POST" action="AsControlador">
    
    
    <button class="crud" type="submit"  name = "accion" value="Listar" >VER REGISTROS DE MEJORAS</button>
     <button class="crud" type="submit"  name = "accion" value="Nuevo" >INGRESAR NUEVA MEJORA</button>
  
    
    </form>
    </div>
    <div><table style="border: 1px solid black; border-collapse: collapse; " id="listado">
    <thead>
    <tr>
  		<th>ID</th> 
  		<th>NOMBRE</th> 
  		<th>ACTIVIDAD DE MEJORA</th> 
  		<th>FECHA</th> 
  		<th>CREAR CAPACITACION</th>
  		<th>DETALLE CAPACITACION</th>
  		<th>ACCIONES</th>
  	</tr> 
  	</thead>
  	<tbody>
  	<c:forEach var="dato" items="${datos}">
  	<tr>
  	
  		<td>${dato.getId()}</td>
  		<td>${dato.getNom()}</td>
  		<td>${dato.getTase()}</td>  		
  		<td>${dato.getFech()}</td>
  		<td>${dato.getEspe()}</td>
  		<td>${dato.getDeta()}</td>
  		<td>
  			<form action ="AsControlador" method="POST">
  			<input type="hidden" name="id" value="${dato.getId()}">
  			  <button class="action" type="submit"  name = "accion" value="Editar" >EDITAR</button>
     <button class="action" type="submit"  name = "accion" value="Eliminar" >ELIMINAR</button>

  			
  			</form>
  	</tr>	
  	</c:forEach>	
  	</tbody>    
    </table>
    </div>
    <div id="botones" class="oculto">
   		<p style="text-align:center";>EXPORTAR TABLA A LOS SIGUIENTES FORMATOS</p>
<p class="lead"><button id="csv" class="btn btn-info">A CSV</button> <button id="txt" class="btn btn-danger">A TXT</button></p>
 </div>
    
    </center>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.5/jspdf.plugin.autotable.min.js"></script>
<script src="js/tableHTMLExport.js"></script>
<script>
$('#json').on('click',function(){
  $("#listado").tableHTMLExport({type:'json',filename:'accidentes.json'});
})
$('#csv').on('click',function(){
  $("#listado").tableHTMLExport({type:'csv',filename:'accidentes.csv'});
})
$('#pdf').on('click',function(){
  $("#listado").tableHTMLExport({type:'pdf',filename:'accidentes.pdf'});
})
$('#txt').on('click',function(){
  $("#listado").tableHTMLExport({type:'txt',filename:'accidentes.txt'});
})
</script>
    </body>
</html>