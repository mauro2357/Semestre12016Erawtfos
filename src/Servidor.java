
import java.io.IOException;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

@WebServlet("/Servidor")
public class Servidor extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Map<String, String[]> datos;

	
    public Servidor() {
        super();
       
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher responder = request.getRequestDispatcher("index.html");
        datos = request.getParameterMap();
        String insertar = "'"+datos.get("nombre")[0]+"',"
        				+ "'"+datos.get("apellido")[0]+"',"
        				+ "'"+datos.get("identificacion")[0]+"',"
        				+ "'"+datos.get("edad")[0]+"',"
        				+ "'"+datos.get("telefono")[0]+"',"
        				+ "'"+datos.get("correo")[0]+"'";
        Conector conexion= new Conector();
        conexion.crearConexion();
        conexion.ejecutarSQL(insertar);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
      

	}

}
