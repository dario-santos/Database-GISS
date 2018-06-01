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
                
                sql = "     SELECT *"
                    + "     FROM HorarioLocal T, Local L"
                    + "     WHERE T.IdLocal =  L.IdLocal"
                    + "     AND T.IdLocal = " + id
                    + "     AND T.Data = '" + data + "'";
                    
            }
            
            
            rs = stmt.executeQuery(sql);  
            
            System.out.println("QUI TOU AQUI");
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                System.out.println("QUI TOU AQUI");
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
                
                sql =   "SELECT DISTINCT C.IdColaborador, C.Nome " +
                        "FROM HorarioTrabalho T, Colaborador C " +
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
     

    /**
     * 
     * @param data
     * @param horaInicio
     * @return IdHorarioTrabalho IdHorarioLocal Data HoraInicio
     */
    public static ArrayList<String> buscarHorariosDisponiveis(String data, String horaInicio)
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
            String sql = "Select HT.IdHorarioTrabalho, HL.IdHorarioLocal, HT.Data, HT.HoraInicio "
                    + "   From HorarioTrabalho HT, HorarioLocal HL" 
                    + "   Where HT.HoraInicio >= '" + horaInicio + "'"
                    + "   AND HL.HoraInicio = HT.HoraInicio " 
                    + "   AND HT.Data >='" + data + "'"
                    + "   AND HL.Data = HT.Data"
                    + "   AND HT.Disponibilidade = 'T'"
                    +"    AND HL.Disponibilidade = 'T'";
            
            
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
                resultados.add(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4));
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
            String sql = " SELECT IdUtente"
                    + "    FROM Utente"
                    + "    Where IdUtente = " + idUtente;
            
            
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
                if(idUtente.equals(rs.getString(1)))
                    valido = true;
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
    
    public static String buscarUltimoIdMarcacao()
    {
        String idMarcacao = "";
        
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
            String sql = " SELECT TOP(1) IdMarcacao"
                    + "    FROM Marcacao" 
                    + "    Order by IdMarcacao DESC";
            
            
         
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
                idMarcacao = rs.getString(1);
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
        return idMarcacao;
    }
    
    public static void atualizarHorarioTrabalho(String IdHorarioTrabalho)
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
            
            String sql = "UPDATE HorarioTrabalho "
                    + "   SET Disponibilidade = 'F' " 
                    + "   WHERE IdHorarioTrabalho = '"+ IdHorarioTrabalho + "'";
          
         
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
    
    public static void atualizarHorarioLocal(String IdHorarioLocal)
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
            
            String sql = "UPDATE HorarioLocal "
                    + "   SET Disponibilidade = 'F' " 
                    + "   WHERE IdHorarioLocal = '"+ IdHorarioLocal + "'";
          
         
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
    
    public static void atualizarHorarioRecurso(String IdHorarioRecurso)
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
            
            String sql = "UPDATE HorarioRecurso "
                    + "   SET Disponibilidade = 'F' " 
                    + "   WHERE IdHorarioRecurso = '"+ IdHorarioRecurso + "'";
          
         
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
    
    public static void gerarMarcacao(String idMarcacao, String motivo, String idUtente)
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
            System.out.println("idMarcacao: " + idMarcacao);
            System.out.println("motivo: " + motivo);
            System.out.println("idUtente: " + idUtente);
            String sql = "INSERT INTO Marcacao" +
                         " VALUES (" + idMarcacao + ",'" + motivo + "'," + idUtente + ");";
          
         
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
    
    public static void gerarMarcar(String idMarcacao,String idHorarioTrabalho)
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
            String sql = "INSERT INTO Marcar" +
                         " VALUES (" + idMarcacao + "," + idHorarioTrabalho +");" ;
          
         
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
    
     public static void gerarEscolhe(String idMarcacao,String idHorarioLocal)
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
            String sql = "INSERT INTO Escolhe" +
                         " VALUES (" + idMarcacao + "," + idHorarioLocal +");" ;
          
         
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
    
    public static ArrayList<String> buscarTodosTipos(String tipo)
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
            
            if("Colaborador".equals(tipo))     
            {
                
                sql =   "SELECT DISTINCT C.IdColaborador, C.Nome " +
                        "FROM Colaborador C";
            }
            else if("Recurso".equals(tipo))
            {
                sql =   "SELECT DISTINCT R.IdRecurso, R.Descricao "
                    + "     FROM Recurso R";
            }
            else if("Local".equals(tipo))
            {
                sql =   "SELECT DISTINCT L.Idlocal, L.Nome "
                    + "     FROM Local L";
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
     
    public static boolean isColaboradorExistente(String idColaborador, String nomeColaborador)
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
            String sql = " SELECT IdColaborador, Nome"
                    + "    FROM Colaborador"
                    + "    Where IdColaborador = " + idColaborador
                    + "    AND Nome = '" + nomeColaborador + "'";
            
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                                    
                if(idColaborador.equals(rs.getString(1)) &&  nomeColaborador.equals(rs.getString(2)))
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
    
    public static boolean isLocalExistente(String idLocal, String nomeLocal)
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
            String sql = " SELECT IdLocal, Nome"
                    + "    FROM Local"
                    + "    Where IdLocal = " + idLocal
                    + "    AND Nome = '" + nomeLocal + "'";
            
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                                    
                if(idLocal.equals(rs.getString(1)) &&  nomeLocal.equals(rs.getString(2)))
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
    
    public static boolean isRecursoExistente(String idRecurso, String descricaoRecurso)
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
            String sql = " SELECT IdRecurso, Descricao"
                    + "    FROM Recurso"
                    + "    Where IdRecurso = " + idRecurso
                    + "    AND Descricao = '" + descricaoRecurso + "'";
            
            rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                                    
                if(idRecurso.equals(rs.getString(1)) &&  descricaoRecurso.equals(rs.getString(2)))
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
    
    public static ArrayList<String> buscarHorariosParaReserva(ArrayList<String> colaboradores, ArrayList<String> locais, ArrayList<String> recursos, String data, String horaInicio)
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
            String from = " FROM Colaborador C0, HorarioTrabalho HT0";
            String where = " WHERE C0.IdColaborador= HT0.IdColaborador "; 
            for(int i = 0 ; i < colaboradores.size()  ; i++)
            {
                if(i > 0)
                    from +=   ", Colaborador C"+i+", HorarioTrabalho HT"+i;
                
                where  += " AND C"+i+".IdColaborador = " + colaboradores.get(i).split(" - ")[0]
                        + " AND HT"+i+".IdColaborador = C"+i+".IdColaborador"
                        + " AND HT"+i+".Data >= '"+ data+"'"
                        + " AND HT"+i+".HoraInicio >= '"+ horaInicio+"'"
                        + " AND HT"+i+".Disponibilidade = 'T'";
            
            }
            
            sql = "SELECT * "+ from + where;
            System.out.println("sql:\n" + sql);
            //rs = stmt.executeQuery(sql);  
           
            
            // Iterate through the data in the result set and display it.  
            while (rs.next()) 
            {  
                
                resultados.add(rs.getString(1) + " " + rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4));
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


    