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

button {
    width: 320px;
}

li {
    padding-bottom: 5px;
}


</style>
<html>
    <head>
    <header>
    

    <button class= "mprincipal" onclick="window.location.href = 'salir.jsp';">SALIR DEL <br>SISTEMA</button>
    
    </header>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMINISTRADOR PARA ADMINISTRADORES Y PROFESIONALES</title>
	<link href="css/estilo.css" rel="stylesheet">
		<link href="css/formularios.css" rel="stylesheet">
    </head>
    <body>
    <section class="admin"> 
    <table style="width:800px;   border: 1px solid black; border-collapse: collapse;">
		    <tr><th width= 800 style="border: 1px solid black; border-collapse: collapse;"><h1>SISTEMA PARA ADMINISTRADORES Y PROFESIONALES</h1></th> </tr> 
		       		
	   		


   		 <tr><td style="border: 1px solid black; border-collapse: collapse;"> 
   		 
   		 <ul>
   		 
   		    <li> <button onclick="window.location.href = 'conectaAse.jsp';">MEJORAS</button></li>
   		   <li> <button onclick="window.location.href = 'conectaFase.jsp';">ASESORIAS</button></li>
   		   <li> <button onclick="window.location.href = 'falso.jsp';">MANTENEDOR DE INFORMACION</button></li>

   		 
   		 </ul>
   		 
   		 
   		 
   		 </td> </tr>
   		
   		
	   
	    <tr> <th style="border: 1px solid black; border-collapse: collapse;"><h6> EQUIPOS LOS SSL</h6></th> </tr>
   
    
    
    </table>
       </section>
    </body>
</html>