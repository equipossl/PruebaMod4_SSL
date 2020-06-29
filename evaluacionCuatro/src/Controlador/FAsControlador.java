package Controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.Asesoria;
import Modelo.AsesoriaDAO;

/**
 * Servlet implementation class FAsControlador
 */
public class FAsControlador extends HttpServlet {
	
	AsesoriaDAO dao = new AsesoriaDAO();
	Asesoria p = new Asesoria();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FAsControlador() {
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
		List<Asesoria>datos=dao.listar();
		request.setAttribute("datos", datos);
		request.getRequestDispatcher("conectaFase.jsp").forward(request, response);
		break;
		case "Nuevo":
			request.getRequestDispatcher("addFase.jsp").forward(request, response);
		break;
		case "Guardar":
			//usaremos los nombres de cada imput del formulario por ende usaremos String
			
			
			
			String id=request.getParameter("txtid");
			String nom=request.getParameter("txtnom");
			String fech=request.getParameter("txtfech");
			String tase=request.getParameter("txttase");
			String aespe=request.getParameter("txtaespe");
			String adeta=request.getParameter("txtadeta");
			//una vez capturados los valores ingresados por la caja de texto
			//y almacenadas en las variables anteriores, enviaremos al metodo DAO
			//para agregar a la base de datos
			p.setId(id);
			p.setNom(nom);
			p.setFech(fech);
			p.setTase(tase);
			p.setAespe(aespe);
			p.setAdeta(adeta);
			dao.agregar(p);
			request.getRequestDispatcher("FAsControlador?accion=Listar").forward(request, response);
			break;
			
		case "Editar":
			String ido = request.getParameter("id");//aca esta el truco el id qu estamos capturando es del imput que tenemos oculto
			Asesoria pe=dao.listarId(ido);
			request.setAttribute("asesoria", pe);
			request.getRequestDispatcher("editFase.jsp").forward(request, response);
			break;
		case "Actualizar":
			String id1=request.getParameter("txtid");
			String nom1=request.getParameter("txtnom");
			String fech1=request.getParameter("txtfech");
			String tase1=request.getParameter("txttase");
			String aespe1=request.getParameter("txtaespe");
			String adeta1=request.getParameter("txtadeta");
			p.setId(id1);
			p.setNom(nom1);
			p.setFech(fech1);
			p.setTase(tase1);
			p.setAespe(aespe1);
			p.setAdeta(adeta1);
			dao.actualizar(p);
			request.getRequestDispatcher("FAsControlador?accion=Listar").forward(request, response);
			break;
		case "Eliminar":
			String id2=request.getParameter("id");
			dao.eliminar(id2);
			request.getRequestDispatcher("FAsControlador?accion=Listar").forward(request, response);
			break;
		default:
			throw new AssertionError();
		
		}
	}

}