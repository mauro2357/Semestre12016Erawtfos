package conexionesbd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Consultas {

    public Connection conexion;

    public boolean crearConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "root");
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            return false;
        }

        return true;
    }

    public ResultSet ejecutarSQLSelect(String a) {
        ResultSet resultado;
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery(a);
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
        return resultado;
    }
    
    public ResultSet login(String usuario , String clave ){
        ResultSet resultado;
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("select usuario,clave, from cinema.usuario where usuario = '"+usuario+"'    and clave = '"+clave+"';");       
        } catch (SQLException ex) {
            ex.printStackTrace(); 
            return null;
        }
        return resultado;
    }

	public String data_correo(String documento) {	
		String correo = null;
		ResultSet resultado;
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT correo FROM hotel.usuario where documento='1036926701';");
            //correo = resultado.getString("correo");
            System.out.println(correo);
        } catch (SQLException ex) {
            ex.printStackTrace(); 
            return null;
        }
		return correo;
	}
    

}