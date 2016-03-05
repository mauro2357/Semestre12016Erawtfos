

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Conector {

    public Connection conexion;

    public boolean crearConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/Hotel", "root", "root");
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            return false;
        }

        return true;
    }

    public boolean ejecutarSQL(String a) {
        try {
            Statement sentencia = conexion.createStatement();
            sentencia.executeUpdate("INSERT INTO `Hotel`.`registro` (`nombre`, `apellido`, `identificacion`, `edad`, `telefono`, `correo`) VALUES ("+a+");");
            JOptionPane.showMessageDialog(null,"INSERT INTO `Hotel`.`registro` (`nombre`, `apellido`, `identificacion`, `edad`, `telefono`, `correo`) VALUES ("+a+");", "Registro Fallido", JOptionPane.ERROR_MESSAGE);
        } catch (SQLException ex) {
            if (ex.getSQLState().equals("23000")) {
                JOptionPane.showMessageDialog(null, "No se pudo registrar; la identificacion ya existe ", "Registro Fallido", JOptionPane.ERROR_MESSAGE);
            }
            return false;
        }
        return true;
    }

    public ResultSet ejecutarSQLSelect(String select) {
        ResultSet resultado;
        try {
            Statement sentencia = conexion.createStatement();
            resultado = sentencia.executeQuery(select);    
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
        return resultado;
    }

}
