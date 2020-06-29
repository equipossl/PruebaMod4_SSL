package Controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Mejora;
import Modelo.MejoraDAO;

/**
 * Servlet implementation class AsControlador
 */
public class AsControlador extends HttpServlet {
	
	MejoraDAO dao = new MejoraDAO();
	Mejora p = new Mejora();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AsControlador() {
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
		List<Mejora>datos=dao.listar();
		request.setAttribute("datos", datos);
		request.getRequestDispatcher("conectaAse.jsp").forward(request, response);
		break;
		case "Nuevo":
			request.getRequestDispatcher("addAse.jsp").forward(request, response);
		break;
		case "Guardar":
			//usaremos los nombres de cada imput del formulario por ende usaremos String
			
			
			
			String id=request.getParameter("txtid");
			String nom=request.getParameter("txtnom");
			String tase=request.getParameter("txttase");
			String fech=request.getParameter("txtfech");
			String espe=request.getParameter("txtespe");
			String deta=request.getParameter("txtdeta");
			//una vez capturados los valores ingresados por la caja de texto
			//y almacenadas en las variables anteriores, enviaremos al metodo DAO
			//para agregar a la base de datos
			p.setId(id);
			p.setNom(nom);
			p.setTase(tase);
			p.setFech(fech);
			p.setEspe(espe);
			p.setDeta(deta);
			dao.agregar(p);
			request.getRequestDispatcher("AsControlador?accion=Listar").forward(request, response);
			break;
			
		case "Editar":
			String ido = request.getParameter("id");//aca esta el truco el id qu estamos capturando es del imput que tenemos oculto
			Mejora pe=dao.listarId(ido);
			request.setAttribute("mejora", pe);
			request.getRequestDispatcher("editAse.jsp").forward(request, response);
			break;
		case "Actualizar":
			String id1=request.getParameter("txtid");
			String nom1=request.getParameter("txtnom");
			String tase1=request.getParameter("txttase");
			String fech1=request.getParameter("txtfech");
			String espe1=request.getParameter("txtespe");
			String deta1=request.getParameter("txtdeta");
			p.setId(id1);
			p.setNom(nom1);
			p.setTase(tase1);
			p.setFech(fech1);
			p.setEspe(espe1);
			p.setDeta(deta1);
			dao.actualizar(p);
			request.getRequestDispatcher("AsControlador?accion=Listar").forward(request, response);
			break;
		case "Eliminar":
			String id2=request.getParameter("id");
			dao.eliminar(id2);
			request.getRequestDispatcher("AsControlador?accion=Listar").forward(request, response);
			break;
		default:
			throw new AssertionError();
		
		}
	}

}