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
    public ResultSet resultado;

    public boolean crearConexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conexion = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/hotel", "root", "juan701");
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
		try {
			Statement sentencia = conexion.createStatement();
			resultado = sentencia
					.executeQuery("SELECT usuario.Nombres,tipo_usuarios.Cargo,usuario.Imagen FROM hotel.tipo_usuarios inner join hotel.usuario on usuario.Tipo = tipo_usuarios.Codigo  where documento='"
							+ usuario + "' and Clave='" + clave + "';");
			if (resultado.next()) {
				datos_usuario = new usuario(resultado.getString("Nombres"),
						resultado.getString("Cargo"),resultado.getString("Imagen"));
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
		String correo = null;
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT Correo FROM hotel.usuario where Documento='"+documento+"';");
            if (resultado.next()){
               correo = resultado.getString("Correo");
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
	
	public ResultSet huespeds(){
		try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT * FROM hotel.usuario inner join hotel.tipo_usuarios  on usuario.Tipo = tipo_usuarios.Codigo where usuario.Tipo = '9';");
            return resultado; 
         
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
	
	}
	
	public ResultSet empleados(){
		try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT * FROM hotel.usuario inner join hotel.tipo_usuarios  on usuario.Tipo = tipo_usuarios.Codigo where not usuario.Tipo = '9';");
            return resultado; 
    
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
		}
	
	public ResultSet Buscar(String a ,String b ){
		try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT * FROM hotel.usuario inner join hotel.tipo_usuarios  on usuario.Tipo = tipo_usuarios.Codigo where  usuario."+a+" = '"+b+"';");
            return resultado; 
    
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
		}
	
	public ResultSet BuscarTodos(){
		try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT * FROM hotel.usuario inner join hotel.tipo_usuarios  on usuario.Tipo = tipo_usuarios.Codigo ;");
            return resultado; 
    
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
		}
}