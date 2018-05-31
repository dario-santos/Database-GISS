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
                resultados.add(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3)+ " " + rs.getString(4)+ " " + rs.getString(5) + " " + rs.getString(6));
            }
            return resultados;
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
            String sql = null;
            
            if(tipo.equals("HorarioTrabalho"))
            {
                sql =   "SELECT  C.IdColaborador, C.Nome "
                    + "     FROM HorarioTrabalho T, Colaborador C"
                    + "     WHERE T.IdColaborador =  C.Colaborador";
            }
            else if(tipo.equals("HorarioRecurso"))
            {
                sql =   "SELECT  R.IdRecurso, R.Nome "
                    + "     FROM HorarioTrabalho T, Recurso R"
                    + "     WHERE T.IdRecurso =  R.IdRecurso";
            }
            else if(tipo.equals("HorarioLocal"))
            {
                sql =   "SELECT  L.Idlocal, L.Nome "
                    + "     FROM HorarioLocal T, Local L"
                    + "     WHERE T.IdLocal =  L.IdLocal";
            }
            else
            {
                return resultados;
            }
            rs = stmt.executeQuery(sql);  
            
            System.out.println("\nTodos os elementos:");
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                System.out.println("ID:" + rs.getString(1) + ", Nome: " + rs.getString(1));  
                resultados.add(rs.getString(1) + " " + rs.getString(2));
            }
            return resultados;
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


    