package login.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public loginServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest solicitud, HttpServletResponse respuesta) throws ServletException, IOException {

		String usuario = solicitud.getParameter("usuario");
		String contrasena = solicitud.getParameter("contrasena");
		if ("usuarioprueba".equals(usuario) && "1234".equals(contrasena)) {
			response(respuesta, "Se ha logueado exitosamente");
		} else {
			response(respuesta, "Ups! Los datos ingresados son incorrectos");
		}
	}
    
	private void response(HttpServletResponse response, String mensaje) throws IOException {
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>" + mensaje + "</t1>");
		out.println("</body>");
		out.println("</html>");
	}

}
