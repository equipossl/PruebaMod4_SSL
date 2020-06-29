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

 .Profesionales { 
     border: 1px solid #000; 
     display:none; 
 } 

 .Clientes { */
     border: 1px solid #000; 
     display:none; 
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
    <h1>MANTENEDOR DE INFORMACION (CASOS CU1-CU2-CU14)</h1>

     <button onclick="window.location.href = 'conectaMantec.jsp';">VER INFORMACION CLIENTES</button>
     <button onclick="window.location.href = 'conectaMantep.jsp';">VER INFORMACION DE PROFESIONALES</button>
    
<p></p>
<p></p>
<p></p>
     
     


    
    
   
    </div>
    </center>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.5/jspdf.plugin.autotable.min.js"></script>
<script src="js/tableHTMLExport.js"></script>
<script>

// OCULTAR FORMULARIOS
$(document).ready(function(){
	$("#Cli").on( "click", function() {
		$('.Clientes').show(); //muestro mediante id
		$('.Profesionales').hide(); //muestro mediante clase
	 });
	$("#Pro").on( "click", function() {
		$('.Clientes').hide(); //muestro mediante id
		$('.Profesionales').show(); //muestro mediante clase
	});
});





$('#json').on('click',function(){
  $("#listado1").tableHTMLExport({type:'json',filename:'Admin_clientes.json'});
})
$('#csv').on('click',function(){
  $("#listado1").tableHTMLExport({type:'csv',filename:'Admin_clientes.csv'});
})
$('#pdf').on('click',function(){
  $("#listado1").tableHTMLExport({type:'pdf',filename:'Admin_clientes.pdf'});
})
$('#txt').on('click',function(){
  $("#listado1").tableHTMLExport({type:'txt',filename:'Admin_clientes.txt'});
})
</script>
    </body>
</html>