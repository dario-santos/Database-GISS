package my.guiss;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Dário Santos
 * 
 */
public class Marcacao 
{
    
    
    
    //2018-03-24
    
    public static ArrayList<String> carregarHorario(String data, String tipo, String id)
    {
        ArrayList<String> resultados = new ArrayList<>();
        
        // Create a variable for the connection string.  
        String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
            "databaseName=Giss;user=sa;password=Lelo69Lelo69";  

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
            String sql ="";
            if("HorarioTrabalho".equals(tipo))     
            {

                sql =   "SELECT *\n" +
                        "FROM HorarioTrabalho T, Colaborador C\n" +
                        "WHERE T.IdColaborador =  C.IdColaborador"
                        + " AND T.IdColaborador = " + id
                        + " AND T.Data = '" + data + "'";
            }
            else if("HorarioRecurso".equals(tipo))
            {
                sql =   "SELECT * "
                    + "     FROM HorarioRecurso T, Recurso R"
                    + "     WHERE T.IdRecurso =  R.IdRecurso"
                        + " AND T.IdRecurso = " + id
                        + " AND T.Data = '" + data + "'";
            }
            else if("HorarioLocal".equals(tipo))
            {
                sql =   "SELECT *"
                    + "     FROM HorarioLocal T, Local L"
                    + "     WHERE T.IdLocal =  L.IdLocal"
                        + " AND T.IdLocal = '" + id
                    + "     AND T.Data = '" + data + "'";
            }
            
            
            rs = stmt.executeQuery(sql);  
            
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                resultados.add(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3)+ " " + rs.getString(4)+ " " + rs.getString(5) + " " + rs.getString(6));
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
    
    
     
    public static ArrayList<String> buscarTodos(String tipo)
    {
        ArrayList<String> resultados = new ArrayList<>();
        
        // Create a variable for the connection string.  
        String connectionUrl = "jdbc:sqlserver://localhost:1433;" +  
            "databaseName=Giss;user=sa;password=Lelo69Lelo69";  

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
            String sql = "";
            
            if("HorarioTrabalho".equals(tipo))     
            {
                
                sql =   "SELECT DISTINCT C.IdColaborador, C.Nome\n" +
                        "FROM HorarioTrabalho T, Colaborador C\n" +
                        "WHERE T.IdColaborador =  C.IdColaborador";
            }
            else if("HorarioRecurso".equals(tipo))
            {
                sql =   "SELECT DISTINCT R.IdRecurso, R.Descricao "
                    + "     FROM HorarioRecurso T, Recurso R"
                    + "     WHERE T.IdRecurso =  R.IdRecurso";
            }
            else if("HorarioLocal".equals(tipo))
            {
                sql =   "SELECT DISTINCT L.Idlocal, L.Nome "
                    + "     FROM HorarioLocal T, Local L"
                    + "     WHERE T.IdLocal =  L.IdLocal";
            }
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                
                resultados.add(rs.getString(1) + " - " + rs.getString(2));
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


    