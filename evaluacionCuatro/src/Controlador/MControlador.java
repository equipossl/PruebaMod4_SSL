package Controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelo.MCliente;
import Modelo.MClienteDAO;

/**
 * Servlet implementation class MControlador
 */
public class MControlador extends HttpServlet {
	
	MClienteDAO dao = new MClienteDAO();
	MCliente p = new MCliente();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MControlador() {
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
		List<MCliente>datos=dao.listar();
		request.setAttribute("datos", datos);
		request.getRequestDispatcher("conectaMantec.jsp").forward(request, response);
		break;
		case "Nuevo":
			request.getRequestDispatcher("addMc.jsp").forward(request, response);
		break;
		case "Guardar":
			//usaremos los nombres de cada imput del formulario por ende usaremos String
			
			
			
			String id=request.getParameter("txtid");
			String nom=request.getParameter("txtnom");
			String rut=request.getParameter("txtrut");
			String tel=request.getParameter("txttel");
			String ema=request.getParameter("txtema");
			
			//una vez capturados los valores ingresados por la caja de texto
			//y almacenadas en las variables anteriores, enviaremos al metodo DAO
			//para agregar a la base de datos
			p.setId(id);
			p.setNom(nom);
			p.setRut(rut);
			p.setTel(tel);
			p.setEma(ema);
			
			dao.agregar(p);
			request.getRequestDispatcher("MControlador?accion=Listar").forward(request, response);
			break;
			
		case "Editar":
			String ido = request.getParameter("id");//aca esta el truco el id qu estamos capturando es del imput que tenemos oculto
			MCliente pe=dao.listarId(ido);
			request.setAttribute("mcliente", pe);
			request.getRequestDispatcher("editMc.jsp").forward(request, response);
			break;
		case "Actualizar":
			String id1=request.getParameter("txtid");
			String nom1=request.getParameter("txtnom");
			String rut1=request.getParameter("txtrut");
			String tel1=request.getParameter("txttel");
			String ema1=request.getParameter("txtema");
			
			p.setId(id1);
			p.setNom(nom1);
			p.setRut(rut1);
			p.setTel(tel1);
			p.setEma(ema1);
		
			dao.actualizar(p);
			request.getRequestDispatcher("MControlador?accion=Listar").forward(request, response);
			break;
		case "Eliminar":
			String id2=request.getParameter("id");
			dao.eliminar(id2);
			request.getRequestDispatcher("MControlador?accion=Listar").forward(request, response);
			break;
		default:
			throw new AssertionError();
		
		}
	}

}