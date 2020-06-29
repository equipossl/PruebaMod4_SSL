<%@page import="java.util.LinkedList"%>
<%@page import="model.Accidentes"%>
<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>USUARO DENTRO DE SISTEMA</title>
<!--          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/TableExport/3.3.13/css/tableexport.css"> -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/TableExport/3.3.13/js/tableexport.js"></script>
    <script src="FileSaver.js"></script>
        	<link href="css/estilo.css" rel="stylesheet">
        	<script src="js/validarRUT.js"></script>

    </head>
    <body>
    
    <table style="width:800px;   border: 1px solid black; border-collapse: collapse;">
		    <tr><th style="border: 1px solid black; border-collapse: collapse;"><h1>SISTEMA DE ADMINISTRACION</h1><br><h2>FORMULARIO DE ACCIDENTES</h2></th> </tr> 
	   		<tr><td style="border: 1px solid black; border-collapse: collapse;"><a href="salir.jsp" class="logout">SALIR</a></td> </tr>
	   		<tr><td style="border: 1px solid black; border-collapse: collapse;"><a href="admin.jsp" class="logout">VOLVER</a></td> </tr>
   		 <tr><td style="border: 1px solid black; border-collapse: collapse;"> 
   		 
   		
   		<form method="post" action="agregarAccidente.jsp">
   		<table style="width:80%;">
   		<tr>
   		<td>NOMBRE</td><td><input style='width:317px;' type="text" name="nombre" required></td>
   		
   		</tr>
   		<tr>
   		<td>FECHA ACCIDENTE</td><td><input style='width:317px;' type="date"  name="fecha" required></td>
   		
   		</tr>
   		<tr>
   		<td>IDENTIFICADOR RUT</td><td><input style='width:317px;' type="text"  id="rut" oninput="checkRut(this)" name="identificador" maxlength="10" required></td>
   		
   		</tr>
   		<tr>
   		<td>DESCRIPCION</td><td><input style='width:317px;' type="text"  name="descripcion" required></td>
   		
   		</tr>
   		<tr><td></td>
   		<td colspan=10 ><input style='width:325px;' type="submit"  value="AGREGAR ACCIDENTE"></td>
		</tr>

   		</table>

   		</form>
   		 </td> </tr>
   		<tr>
   		<td>
   		<%
   		int max = 4;
   		int cont =0;
   		
   		%>
   		
   		<table class="lista" id="listado">
   		<thead>
				<tr >
				<th >N° REGISTRO:</th>
					<th >NOMBRE</th>
					<th >FECHA</th>
					<th >IDENTIFICADOR</th>
					<th >DESCRIPCION</th>
				
				</tr>
			</thead>
			<tbody>  		
   		 		
   		
   		
   		<%
   		 		
   		
   		
   		LinkedList<Accidentes> listadoAccidentes = (LinkedList)application.getAttribute("listadoAccidentes");
   		
   		if(listadoAccidentes == null){	
   			//si es null no hacemos nada
   			cont =0;
   		}else{
   			
   		
   		   for (Accidentes a:listadoAccidentes)	{
   			   
   			  cont++;
   			out.println("<tr><td>"+ cont +"</td>");   
   			out.println("<td>"+a.getNombre()+"</td>");
   			out.println("<td colspan=1>"+a.getFecha()+"</td>");
   			out.println("<td colspan=1>"+a.getIdentificador()+"</td>");
   			out.println("<td colspan=1>"+a.getDescripcion()+"</td></tr>");
   			
   		   
}
   	
  		}

   		%>
   		
   		</tbody>
   		</table>
   		
   		<div id="botones" class="oculto">
   		<p style="text-align:center";>EXPORTAR TABLA A LOS SIGUIENTES FORMATOS</p>
<p class="lead"><button id="json" class="btn btn-primary">A JSON</button> <button id="csv" class="btn btn-info">A CSV</button>  <button id="pdf" class="btn btn-danger">A PDF</button> <button id="txt" class="btn btn-danger">A TXT</button></p>
 </div>
   		
   		</td>
   		</tr>
   		
	   
	    <tr> <th style="border: 1px solid black; border-collapse: collapse;"><h6>EJERCICIO DESARROLLADO POR EQUIPOS LOS SSL</h6></th> </tr>
   
    
    
    </table>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.5/jspdf.plugin.autotable.min.js"></script>
<script src="js/tableHTMLExport.js"></script>
<script>
$('#json').on('click',function(){
  $("#listado").tableHTMLExport({type:'json',filename:'tabla.json'});
})
$('#csv').on('click',function(){
  $("#listado").tableHTMLExport({type:'csv',filename:'tabla.csv'});
})
$('#pdf').on('click',function(){
  $("#listado").tableHTMLExport({type:'pdf',filename:'tabla.pdf'});
})
$('#txt').on('click',function(){
  $("#listado").tableHTMLExport({type:'txt',filename:'tabla.txt'});
})
</script>
      
    </body>
</html>