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
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador_Ingreso() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    
    
    protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
    	response.setContentType("text/html;charset=UTF-8");
    	HttpSession session = request.getSession();
    	if (request.getParameter("recuperacion").equals(null)){
    		consultar_usuario = new Consultas();
    		if(consultar_usuario.crearConexion()){    			
    			consultabd = consultar_usuario.login(request.getParameter("documento"),request.getParameter("clave"));
    			System.out.println(consultabd.getDate("tipo_usuario"));
    		}
    	}
    	else{
    		consultar_mail = new Consultas();
    		if(consultar_mail.crearConexion()){
    			correo = consultar_mail.data_correo(request.getParameter("recuperacion"));
    		}
    		
    	} 	
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
