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
					.executeQuery("SELECT usuario.nombres,tipo_usuarios.cargo,usuario.imagen FROM hotel.tipo_usuarios inner join hotel.usuario on usuario.tipo_usuario = tipo_usuarios.codigo  where documento='"
							+ usuario + "' and clave='" + clave + "';");
			if (resultado.next()) {
				datos_usuario = new usuario(resultado.getString("nombres"),
						resultado.getString("cargo"),resultado.getString("imagen"));
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
            resultado = sentencia.executeQuery("SELECT correo FROM hotel.usuario where documento='"+documento+"';");
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
	
	public ResultSet huespeds(){
		try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT * FROM hotel.usuario where tipo_usuario ='1';");
            if (resultado.next()){
                return resultado; 
            }
            
            
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
	
	}
	
	public ResultSet empleados(){
		try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery("SELECT * FROM hotel.usuario where tipo_usuario ='1';");
            if (resultado.next()){
                return resultado; 
            }
            
            
        } catch (SQLException ex) {
            ex.printStackTrace(); 
         }
        return null;
		}
}