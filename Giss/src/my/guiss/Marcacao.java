package my.guiss;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Dário Santos
 * 
 */
public class Marcacao 
{
    
    
    
    //2018-03-24
    
    public static void carregarHorario(String data, String tipo, String id)
    {
    
        // Create a variable for the connection string.  
        String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
            "databaseName=Giss;user=sa;password=1234";  

        // Declare the JDBC objects.  
        Connection con = null;  
        Statement stmt = null;  
        ResultSet rs = null;  

        try 
        {  
            // Establish the connection.  
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
            con = DriverManager.getConnection(connectionUrl);  
            stmt = con.createStatement(); 
            
            
            String sql =   "SELECT * "
                    + "     FROM " + tipo + " T"
                    + "     WHERE T.Data = '" + data +"'";
            rs = stmt.executeQuery(sql);  
            
            System.out.println("\nHorario:");
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                System.out.println("ID:" + rs.getString(1)+ " Data: "+rs.getString(2) + " Hora Inicio: "+ rs.getString(3)+ " Hora Fim: "+rs.getString(4));  
            
            }
            
        }
        // Handle any errors that may have occurred.  
        catch (Exception e) 
        {  
            e.printStackTrace();  
        }  
        finally 
        {  
            if (rs != null) try { rs.close(); } catch(Exception e) {}  
            if (stmt != null) try { stmt.close(); } catch(Exception e) {}  
            if (con != null) try { con.close(); } catch(Exception e) {}  
        } 
    
    }
    
}