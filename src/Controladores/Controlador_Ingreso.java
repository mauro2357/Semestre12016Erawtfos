package Controladores;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Clases.usuario;
import conexionesbd.Consultas;

/**
 * Servlet implementation class Controlador_Ingreso
 */
@WebServlet("/Controlador_Ingreso")
public class Controlador_Ingreso extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Consultas consultar_mail;
	private Consultas consultar_usuario;
	private RequestDispatcher responder;
    private ResultSet consultabd; 
    private String correo;
    private usuario cliente;
    public HttpSession session;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_Ingreso() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		session = request.getSession();
		response.setContentType("text/html;charset=ISO-8859-1");
		if(request.getParameter("formlogin").equals("login")){
			this.IngresarUsuario(request.getParameter("documento"),request.getParameter("clave"));
			response.sendRedirect("/confortware/general/Home.jsp");
		}
		if (request.getParameter("formlogin").equals("recuperar")){
			this.EnviarCorreo(request.getParameter("doc_recuperacion"));
			response.sendRedirect("/confortware/general/Login.jsp");
		}
			
		}
	
	
	private void IngresarUsuario(String a,String b)throws ServletException, IOException {
		consultar_usuario = new Consultas();
		if(consultar_usuario.crearConexion()){
			cliente = new usuario();
			cliente = consultar_usuario.login(a,b);
			System.out.println(cliente.getnombre());
			System.out.println(cliente.gettipo());
			session.setAttribute("usuario", cliente);
			
		}
		
	}


	private void EnviarCorreo(String a)throws ServletException, IOException {
		consultar_mail = new Consultas();
		if (consultar_mail.crearConexion()){
			correo = consultar_mail.data_correo(a);
			System.out.println(correo);
				
		}
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
