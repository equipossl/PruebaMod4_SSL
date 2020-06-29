
<%
// recogemos la respuesta o atributo enviado desde login servlet y ocultanos el valos null

String msg=(String)request.getAttribute("a");
if(msg==null)
{
    msg="";
}
%>  
   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INGRESAR USUARIO AL SISTEMA</title>
        	<link href="css/estilo.css" rel="stylesheet">
        			<link href="css/formularios.css" rel="stylesheet">
        	<style>
        	button {
    width: 315px;
}

td {
    padding-bottom: 15px;
}
        	
        	
        	</style>
       

    </head>
    <body>
    <section>
    <table style="width:100%; border: 1px solid black; border-collapse: collapse;">
	    <tr><th style=" border: 1px solid black; border-collapse: collapse;"><h1>LOGIN DE USUARIOS</h1></th> </tr>    
   		<tr><td>
   		
   		<form method="post" action="loginServlet">
   		<table style="width:80%;">
   		<tr>
   		<td>NOMBRE DE USUARIO: </td><td><input class="selector-css"  style='width:317px;' type="text" name="user"></td>
   		
   		</tr>
   		<br>
   		<tr>
   		<td>PASSWORD: </td><td><input class="selector-css"  style='width:317px;' type="password"  name="pass"></td>
   		
   		</tr>
   		<br>
   		<tr><td></td>
   		<td colspan=10 ><button type="submit" >VALIDAR USUARIO</button><p style="font-weight: 900;font-size: 14px; color:#FF0080;"><%=msg %></p></td>
   		
   		</tr>
   		
   		
   		
   		</table>
   		
   		
   		
   		
   		</form>
   		
   		
   		
   		
   		</td> </tr>
	  
	    <tr> <th style="border: 1px solid black; border-collapse: collapse;"><h6> EQUIPOS LOS SSL</h6></th> </tr>
   
    
    
    </table>
      </section>
    </body>
</html>