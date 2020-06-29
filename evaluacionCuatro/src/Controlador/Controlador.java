package Controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Persona;
import Modelo.PersonaDAO;

/**
 * Servlet implementation class Controlador
 */
public class Controlador extends HttpServlet {
	
	PersonaDAO dao = new PersonaDAO();
	Persona p = new Persona();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @SuppressWarnings("null")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String accion = request.getParameter("accion");
		switch (accion) {
		case "Listar":
		List<Persona>datos=dao.listar();
		request.setAttribute("datos", datos);
		request.getRequestDispatcher("conecta.jsp").forward(request, response);
		break;
		case "Nuevo":
			request.getRequestDispatcher("add.jsp").forward(request, response);
		break;
		case "Guardar":
			//usaremos los nombres de cada imput del formulario por ende usaremos String
			String id=request.getParameter("txtid");
			String nom=request.getParameter("txtnom");
			String fech=request.getParameter("txtfech");
			String ident=request.getParameter("txtident");
			String desc=request.getParameter("txtdesc");
			//una vez capturados los valores ingresados por la caja de texto
			//y almacenadas en las variables anteriores, enviaremos al metodo DAO
			//para agregar a la base de datos
			p.setId(id);
			p.setNom(nom);
			p.setFech(fech);
			p.setIdent(ident);
			p.setDesc(desc);
			dao.agregar(p);
			request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
			break;
		case "Editar":
			String ido = request.getParameter("id");//aca esta el truco el id qu estamos capturando es del imput que tenemos oculto
			Persona pe=dao.listarId(ido);
			request.setAttribute("persona", pe);
			request.getRequestDispatcher("edit.jsp").forward(request, response);
			break;
		case "Actualizar":
			String id1=request.getParameter("txtid");
			String nom1=request.getParameter("txtnom");
			String fech1=request.getParameter("txtfech");
			String ident1=request.getParameter("txtident");
			String desc1=request.getParameter("txtdesc");
			p.setId(id1);
			p.setNom(nom1);
			p.setFech(fech1);
			p.setIdent(ident1);
			p.setDesc(desc1);
			dao.actualizar(p);
			request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
			break;
		case "Eliminar":
			String id2=request.getParameter("id");
			dao.eliminar(id2);
			request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
			break;
		default:
			throw new AssertionError();
		
		}
	}

}
