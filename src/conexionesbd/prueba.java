package conexionesbd;

import java.sql.SQLException;

public class prueba {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub
		Consultas con = new Consultas();
		con.crearConexion();	
		con.data_correo("hola");
	}

}
