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
    private usuario datos;
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
		HttpSession session = request.getSession();
		System.out.println(request.getParameter("recuperacion"));
		if (!request.getParameter("recuperacion").equals("")){
			Consultas consultar_mail = new Consultas();
			if (consultar_mail.crearConexion()){
				correo = consultar_mail.data_correo(request.getParameter("recuperacion"));
				System.out.println(correo);
			}
		}
		else{
			Consultas consultar_usuario = new Consultas();
			if(consultar_usuario.crearConexion()){
				datos = new usuario();
				datos = consultar_usuario.login("hola","hola");
				System.out.println(datos.getnombre());
				System.out.println(datos.gettipo());
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
