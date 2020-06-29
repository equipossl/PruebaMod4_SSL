package Controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.MProfesional;
import Modelo.MProfesionalDAO;

/**
 * Servlet implementation class MPControlador
 */
public class MPControlador extends HttpServlet {
	
	MProfesionalDAO dao = new MProfesionalDAO();
	MProfesional p = new MProfesional();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MPControlador() {
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
		List<MProfesional>datos=dao.listar();
		request.setAttribute("datos", datos);
		request.getRequestDispatcher("conectaMantep.jsp").forward(request, response);
		break;
		case "Nuevo":
			request.getRequestDispatcher("addMp.jsp").forward(request, response);
		break;
		case "Guardar":
			//usaremos los nombres de cada imput del formulario por ende usaremos String
			
			
			
			String id=request.getParameter("txtid");
			String nom=request.getParameter("txtnom");
			String rut=request.getParameter("txtrut");
			String tel=request.getParameter("txttel");
			String ema=request.getParameter("txtema");
			String act=request.getParameter("txtact");
			
			//una vez capturados los valores ingresados por la caja de texto
			//y almacenadas en las variables anteriores, enviaremos al metodo DAO
			//para agregar a la base de datos
			p.setId(id);
			p.setNom(nom);
			p.setRut(rut);
			p.setTel(tel);
			p.setEma(ema);
			p.setAct(act);
			
			dao.agregar(p);
			request.getRequestDispatcher("MPControlador?accion=Listar").forward(request, response);
			break;
			
		case "Editar":
			String ido = request.getParameter("id");//aca esta el truco el id qu estamos capturando es del imput que tenemos oculto
			MProfesional pe=dao.listarId(ido);
			request.setAttribute("mprofesional", pe);
			request.getRequestDispatcher("editMp.jsp").forward(request, response);
			break;
		case "Actualizar":
			String id1=request.getParameter("txtid");
			String nom1=request.getParameter("txtnom");
			String rut1=request.getParameter("txtrut");
			String tel1=request.getParameter("txttel");
			String ema1=request.getParameter("txtema");
			String act1=request.getParameter("txtact");
			
			p.setId(id1);
			p.setNom(nom1);
			p.setRut(rut1);
			p.setTel(tel1);
			p.setEma(ema1);
			p.setAct(act1);
		
			dao.actualizar(p);
			request.getRequestDispatcher("MPControlador?accion=Listar").forward(request, response);
			break;
		case "Eliminar":
			String id2=request.getParameter("id");
			dao.eliminar(id2);
			request.getRequestDispatcher("MPControlador?accion=Listar").forward(request, response);
			break;
		default:
			throw new AssertionError();
		
		}
	}

}