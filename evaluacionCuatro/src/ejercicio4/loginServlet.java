package ejercicio4;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;




/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    /*
    @Override
	protected void doGet(HttpServletRequest solicitud, HttpServletResponse respuesta) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = solicitud.getParameter("user");
		String pass = solicitud.getParameter("pass");
		if ("indefensoInformatico".equals(user) && "0023Do".equals(pass)) {
			response(respuesta, "logeo pulento!");
		} else {
			response(respuesta, "logue penca!");
		}
	}
    */
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @SuppressWarnings("null")
	@Override
	protected void doPost(HttpServletRequest solicitud, HttpServletResponse respuesta) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = solicitud.getParameter("user");
		String pass = solicitud.getParameter("pass");
		//enviaremos respuesta para capturar dentro de la pagina login
		String incorrecto = "VALOR(ES) INGRESADO(S) INCORRECTO(S)";
		// si es correcto la pagina debe direccionar al interior del sistema
		
		
	
	    RequestDispatcher rd=solicitud.getRequestDispatcher("/login.jsp");
	    
		if ("12345".equals(user) && "12345".equals(pass)) {
			// si es correcto vamos a la pagina de administracion
			// CREAREMOS UNA SESION COMO SISTEMA DE SEGURIDAD 
			//PARA AUTENTIFICAR AL USUARIO
			// no mostraremos los resultados por pantalla solo evitaremos que 
			// alguien ingrese sin logearse
			
			
			HttpSession session= solicitud.getSession(true);
			Usuario usuario = new Usuario("Administrador",user,pass);
			session.setAttribute("usuario", usuario);
		//CAMBIAR PAGINA DE ADMINISTRADOR PARA ADMINISTRADOR	
		respuesta.sendRedirect("administrador.jsp") ; 
		
		
		} else if ("c12345".equals(user) && "c12345".equals(pass)) {
			
			HttpSession session= solicitud.getSession(true);
			Usuario usuario = new Usuario("Administrador",user,pass);
			session.setAttribute("usuario", usuario);
			
			//VA A LA PAGINA DE ADMINISTRADOR DE CLIENTE
		respuesta.sendRedirect("admin.jsp") ; 	
			
			
		}else {
			//enviamos la respuesta a la pagina de logeo
			solicitud.setAttribute("a",incorrecto);
			
			rd.forward(solicitud, respuesta); 
			//rd.include(solicitud, respuesta);  
		}
	}
    
    // no usaremos este metodo pero lo guardamos por sea acaso
//	private void response(HttpServletResponse response, String mensaje) throws IOException {
//		PrintWriter out = response.getWriter();
//		out.println("<html>");
//		out.println("<body>");
//		out.println("<t1>" + mensaje + "</t1>");
//		out.println("</body>");
//		out.println("</html>");
//	}

}
