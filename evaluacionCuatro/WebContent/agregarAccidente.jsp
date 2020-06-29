<%@page import="model.Accidentes"%>
<%@page import="java.util.LinkedList"%>
<%
	String nombre = request.getParameter("nombre");
	String fecha = request.getParameter("fecha");
	String identificador = request.getParameter("identificador");
	String descripcion = request.getParameter("descripcion");
	
	out.println(nombre);
	out.println(fecha);
	out.println(identificador);
	out.println(descripcion);
	
	Accidentes accidentes = new Accidentes(nombre, fecha, identificador, descripcion);
	
	// hay que guardar los daros en una base de datos como ahora no la tenemos usaremos
	// aplication
	
	LinkedList<Accidentes> listadoAccidentes = (LinkedList)application.getAttribute("listadoAccidentes");
	// si el listado es nulo o no se a guardado uno antes hay que crear un listado
	if(listadoAccidentes == null){	
		//creamos o ya esta creado
		listadoAccidentes = new LinkedList();
	}
	
	// se crea o se guarda el listado en la aplicacion
	listadoAccidentes.add(accidentes);	
	application.setAttribute("listadoAccidentes", listadoAccidentes);
	response.sendRedirect("faccidentes.jsp");
	
%>

