package my.guiss;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class Consulta 
{
    
    
    
    
    
    
    public static String ProcuraUtente(String IdUtente)
    {
        String a="";
        String connectionUrl = "jdbc:sqlserver://localhost:1433;" + "databaseName=Giss;user=sa;password=Lelo69Lelo69";
        
        
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
            String sqlNome ="";

             
            sqlNome =   "SELECT Nome\n" +
                        "FROM Utente \n" +
                        "WHERE IdUtente = "+IdUtente;
         
            
            rs = stmt.executeQuery(sqlNome);  
      
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                System.out.println(rs.getString(1));  
                a=rs.getString(1);
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
        
        
        return a;
        
        
        
    }
    
    public static ArrayList<String> ProcuraIdECli(String IdUtente)
    {
        ArrayList<String> resultados=new ArrayList<String>();
        String connectionUrl = "jdbc:sqlserver://localhost:1433;" + "databaseName=Giss;user=sa;password=Lelo69Lelo69";
        
        
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
            String sqlIdECli ="";

             
            sqlIdECli = "SELECT IdECli\n" +
                        "FROM EpisodioClinico \n" +
                        "WHERE IdUtente = "+IdUtente;
         
            
            rs = stmt.executeQuery(sqlIdECli);  
      
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                System.out.println(rs.getString(1));  
                resultados.add(rs.getString(1));
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
        
        
        return resultados;
        
        
    }
    
    public static ArrayList<String> ProcuraMotivo(String IdUtente)
    {
        ArrayList<String> resultados=new ArrayList<String>();
        String connectionUrl = "jdbc:sqlserver://localhost:1433;" + "databaseName=Giss;user=sa;password=Lelo69Lelo69";
        
        
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
            String sqlMotivo ="";

             
            sqlMotivo = "SELECT Motivo\n" +
                        "FROM Marcacao \n" +
                        "WHERE IdUtente = "+IdUtente;
         
            
            rs = stmt.executeQuery(sqlMotivo);  
      
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                System.out.println(rs.getString(1));  
                resultados.add(rs.getString(1));
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
        
        
        return resultados;
    }
    
    
}
