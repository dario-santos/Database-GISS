/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.guiss;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class MeiosComplementares 
{
    public static String buscarUltimoIdAnexo()
    {
        String idAnexo = "";
        
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
            String sql = " SELECT TOP(1) IdAnexo"
                    + "    FROM Anexo" 
                    + "    Order by IdAnexo DESC";
            
            
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
                idAnexo = rs.getString(1);
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
        return idAnexo;
    }
    
    public static String buscarIdTipoAnexo(String descricao)
    {
        String idTipoAnexo = "";
        
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
            String sql = " SELECT IdTipoAnexo"
                    + "    FROM TipoAnexo" 
                    + "    WHERE Descricao ='"+ descricao+ "'";
            
            
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
                idTipoAnexo = rs.getString(1);
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
        return idTipoAnexo;
    }
    
    public static void gerarAnexo(String idAnexo, String descricao, String idTipoAnexo, String idECli)
    {
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
          
            String sql = "INSERT INTO Anexo" +
                         " VALUES (" + idAnexo + ",'" + descricao + "'," + idTipoAnexo + ","+ idECli+");";
          
            
            stmt.executeUpdate(sql);  
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
            
            if("Analise Clinica".equals(tipo))     
            {
                
                sql =   "SELECT EC.IdECli " +
                        "FROM EpisodioClinico EC, Estado E " +
                        "WHERE E.Descricao = 'Analises' " +
                        "AND E.IdEstado = EC.IdEstado ";
            }
            else if("Exame".equals(tipo))
            {
                sql =   "SELECT EC.IdECli " +
                        "FROM EpisodioClinico EC, Estado E " +
                        "WHERE E.Descricao = 'Exames' " +
                        "AND E.IdEstado = EC.IdEstado ";
            }
           
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) {  
                
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
