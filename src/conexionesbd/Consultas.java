package conexionesbd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import Clases.usuario;


public class Consultas {

    public Connection conexion;
    public usuario datos_usuario;

    public boolean crearConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "juan701");
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
    
    public usuario login(String usuario , String clave ){
        ResultSet resultado;      
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("select tipo_usuario,nombres from hotel.usuario where documento = '1036926701' and clave = 'carlos';");       
            if (resultado.next()){
            	datos_usuario = new usuario(resultado.getString("nombres"),resultado.getString("tipo_usuario"));
             }
             resultado.close();
             sentencia.close();
             conexion.close();
             return datos_usuario;   
        } catch (SQLException ex) {
            ex.printStackTrace(); 
        }
        return null;
    }

	public String data_correo(String documento) {	
		ResultSet resultado;
		String correo = null;
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT correo FROM hotel.usuario where documento='"+documento+"';");
            //System.out.println("SELECT correo FROM hotel.usuario where documento='"+documento+"';");
            if (resultado.next()){
               correo = resultado.getString("correo");
            }
            resultado.close();
            sentencia.close();
            conexion.close();
            return correo; 
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
	}
	
    

}