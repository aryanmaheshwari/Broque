import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Scanner;

public class Connector
{
    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;
    
    public static void main(String[] argv) throws SQLException {
        System.out.println("test");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDatabase", "root", "pass"); 
        String sql = "select * from Accounts";
        preparedStatement = connection.prepareStatement(sql);
        ResultSet rs = preparedStatement.executeQuery(sql);
        while (rs.next()) {
            int aID = rs.getInt("aID");
            
            System.out.println("aID: " + aID);
        }
    }
    

}
