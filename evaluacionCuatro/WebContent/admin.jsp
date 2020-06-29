<%@page import="model.Usuario"%>

<%
// revisamos si existe el objeto usuario, si no existe lo mandamos de regreso a la pagina de login
// con esto le agregamos un nivel de seguridad	
Usuario usuario = (Usuario)session.getAttribute("usuario");
	if ( usuario == null){
		response.sendRedirect("login.jsp");
	}

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
a.volver {
    float: right;
    padding: 10px;
    width: auto;
}


</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CLIENTE DENTRO DE SISTEMA</title>
	<link href="css/estilo.css" rel="stylesheet">
		<link href="css/formularios.css" rel="stylesheet">
    </head>
    <body>
    
     <header>
    

    <button class= "mprincipal" onclick="window.location.href = 'salir.jsp';">SALIR DEL <br>SISTEMA</button>
    
    </header>
    <section>
    <table style="width:100%;   border: 1px solid black; border-collapse: collapse;">
		    <tr><th width= 100% style="border: 1px solid black; border-collapse: collapse;"><h1>SISTEMA DE ADMINISTRACION DE CLIENTE</h1></th> </tr> 
		       		
	   	
	   		


   		 <tr><td style="border: 1px solid black; border-collapse: collapse;"> 
   		 
   		 <ul>
   		
   		   <li> <button onclick="window.location.href = 'conectaCli.jsp';">FORMULARIO DE ACCIDENTES CRUD</button></li>
<!--    		   <li> <button onclick="window.location.href = 'conectaCli.jsp';">FORMULARIO DE ACCIDENTES CRUD</button></li> -->
<!--    		   <li> <button onclick="window.location.href = 'conectaCli.jsp';">FORMULARIO DE ACCIDENTES CRUD</button></li> -->
<!--    		    <li> <button onclick="window.location.href = 'conectaCli.jsp';">FORMULARIO DE ACCIDENTES CRUD</button></li> -->
<!--    		    <li> <button onclick="window.location.href = 'conectaCli.jsp';">FORMULARIO DE ACCIDENTES CRUD</button></li> -->

   		 
   		 </ul>
   		 
   		 
   		 
   		 </td> </tr>
   		
   		
	    
	    <tr> <th style="border: 1px solid black; border-collapse: collapse;"><h6>EQUIPO LOS SSL</h6></th> </tr>
   
    
    
    </table>
      </section>
    </body>
</html>