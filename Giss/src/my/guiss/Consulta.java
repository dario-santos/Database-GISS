package my.guiss;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class Consulta 
{
    
    public static boolean isIdUtenteValido(String idUtente)
    {
         boolean valido = false;
        
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
            String sql = " SELECT idUtente"
                    + "    FROM Utente"
                    + "    Where IdUtente = " + idUtente;
            
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                                    
                if(idUtente.equals(rs.getString(1)))
                {
                    valido = true;
                }
                
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
        return valido;
        
    }
    
    public static String buscarNomeUtente(String IdUtente)
    {
        String resultado = "";
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

             
            sqlNome =   "SELECT Nome " +
                        "FROM Utente " +
                        "WHERE IdUtente = " + IdUtente;
         
            
            rs = stmt.executeQuery(sqlNome);  
      
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            { 
                resultado = rs.getString(1);
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
        
        
        return resultado;
        
        
        
    }
    
    public static ArrayList<String> buscarEpisodiosClinicos(String idUtente)
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
            
                
            sql =     "     SELECT DISTINCT E.IdECli, E.Observacao "
                    + "     FROM EpisodioClinico E" 
                    + "     WHERE E.IdUtente=" + idUtente;
         
            rs = stmt.executeQuery(sql);
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
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
    
    public static ArrayList<String> buscarExames(String idECli)
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
            
                
            sql =   "SELECT AO.Descricao " +
                    "FROM EpisodioClinico E, Anexo AO, TipoAnexo TA " +
                    "WHERE E.IdECli = " + idECli +
                    "AND E.IdECli = AO.IdECli " +
                    "AND AO.IdTipoAnexo = TA.IdTipoAnexo " +
                    "AND TA.Descricao = 'Exame'";
         
            rs = stmt.executeQuery(sql);
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
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
    
    public static ArrayList<String> buscarAnalises(String idECli)
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
            
                
            sql =   "SELECT AO.Descricao " +
                    "FROM EpisodioClinico E, Anexo AO, TipoAnexo TA " +
                    "WHERE E.IdECli = "+ idECli +
                    "AND E.IdECli = AO.IdECli " +
                    "AND AO.IdTipoAnexo = TA.IdTipoAnexo " +
                    "AND TA.Descricao = 'Analise Clinica'";
         
            rs = stmt.executeQuery(sql);
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
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
    
     public static ArrayList<String> buscarPrescricoes(String idECli)
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
            
                
            sql =   "SELECT AO.Descricao " +
                    "FROM EpisodioClinico E, Anexo AO, TipoAnexo TA " +
                    "WHERE E.IdECli = "+ idECli +
                    "AND E.IdECli = AO.IdECli " +
                    "AND AO.IdTipoAnexo = TA.IdTipoAnexo " +
                    "AND TA.Descricao = 'Prescricoes'";
         
            rs = stmt.executeQuery(sql);
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
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
