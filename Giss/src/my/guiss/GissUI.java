/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my.guiss;
import java.util.ArrayList;
import javax.swing.JOptionPane;



/**
 *
 * @author Dario
 */
public class GissUI extends javax.swing.JFrame {

    
    /**
    * Inicializa qualquer funcao e/ou atributo
    *
    * @author  Dario Santos
    * @version 1.0
    * @since   2018-05-30
    */
    private void start()
    {
        
    
    }
    
    /**
     * Creates new form GissUI
     */
    public GissUI() {
        initComponents();
        
        start();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        TabbedMenu = new javax.swing.JTabbedPane();
        PanelMarcacao = new javax.swing.JPanel();
        ComboBoxTipoHorario = new javax.swing.JComboBox<>();
        jLabel2 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel5 = new javax.swing.JLabel();
        ComboBoxMarcacao = new javax.swing.JComboBox<>();
        ComboBoxNumSemana = new javax.swing.JComboBox<>();
        ComboBoxAno = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        TabelaHorario = new javax.swing.JTable();
        ComboBoxNome = new javax.swing.JComboBox<>();
        jButton2 = new javax.swing.JButton();
        BotaoCarregarHorario = new javax.swing.JButton();
        jTextField1 = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        PanelConsulta = new javax.swing.JPanel();
        PanelMeioComplementar = new javax.swing.JPanel();

        jButton1.setText("jButton1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        PanelMarcacao.setPreferredSize(new java.awt.Dimension(1024, 680));

        ComboBoxTipoHorario.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Tipo", "Colaborador", "Recurso", "Local" }));

        jLabel2.setText("Horário");

        jLabel5.setText("Marcação");

        ComboBoxMarcacao.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Sequencial", "Prévia" }));
        ComboBoxMarcacao.setToolTipText("");

        ComboBoxNumSemana.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Nº da Semana", "1", "2", "3", "4", "5" }));

        ComboBoxAno.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Ano", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "" }));

        TabelaHorario.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {"7:00-7:30", null, null, null, null, null, null, null},
                {"7:30-8:00", null, null, null, null, null, null, null},
                {"8:00-8:30", null, null, null, null, null, null, null},
                {"8:30-9:00", null, null, null, null, null, null, null},
                {"9:30-10:00", null, null, null, null, null, null, null},
                {"10:00-10:30", null, null, null, null, null, null, null},
                {"10:30-11:00", null, null, null, null, null, null, null},
                {"11:30-12:00", null, null, null, null, null, null, null},
                {"12:00-12:30", null, null, null, null, null, null, null},
                {"12:30-13:00", null, null, null, null, null, null, null},
                {"13:00-13:30", null, null, null, null, null, null, null},
                {"13:30-14:00", null, null, null, null, null, null, null},
                {"14:00-14:30", null, null, null, null, null, null, null},
                {"14:30-15:00", null, null, null, null, null, null, null},
                {"15:00-15:30", null, null, null, null, null, null, null},
                {"15:30-16:00", null, null, null, null, null, null, null},
                {"16:00-16:30", null, null, null, null, null, null, null},
                {"16:30-17:00", null, null, null, null, null, null, null},
                {"17:00-17:30", null, null, null, null, null, null, null},
                {"17:00-17:30", null, null, null, null, null, null, null},
                {"18:00-18:30", null, null, null, null, null, null, null},
                {"18:30-19:00", null, null, null, null, null, null, null}
            },
            new String [] {
                "Horas", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"
            }
        ));
        TabelaHorario.getTableHeader().setResizingAllowed(false);
        TabelaHorario.getTableHeader().setReorderingAllowed(false);
        jScrollPane1.setViewportView(TabelaHorario);

        ComboBoxNome.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "--Escolha--", "123456789012345678901234567890" }));
        ComboBoxNome.addPopupMenuListener(new javax.swing.event.PopupMenuListener() {
            public void popupMenuCanceled(javax.swing.event.PopupMenuEvent evt) {
            }
            public void popupMenuWillBecomeInvisible(javax.swing.event.PopupMenuEvent evt) {
                ComboBoxNomePopupMenuWillBecomeInvisible(evt);
            }
            public void popupMenuWillBecomeVisible(javax.swing.event.PopupMenuEvent evt) {
            }
        });

        jButton2.setText("Confirmar");

        BotaoCarregarHorario.setText("Carregar");
        BotaoCarregarHorario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                BotaoCarregarHorarioMouseClicked(evt);
            }
        });

        jTextField1.setText("IdUtente");

        jLabel1.setBackground(new java.awt.Color(255, 255, 255));
        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 20)); // NOI18N
        jLabel1.setText("12:35");
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jLabel1.setOpaque(true);

        javax.swing.GroupLayout PanelMarcacaoLayout = new javax.swing.GroupLayout(PanelMarcacao);
        PanelMarcacao.setLayout(PanelMarcacaoLayout);
        PanelMarcacaoLayout.setHorizontalGroup(
            PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel1)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 984, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jSeparator1, javax.swing.GroupLayout.DEFAULT_SIZE, 1, Short.MAX_VALUE))
                    .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                        .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                                .addGap(311, 311, 311)
                                .addComponent(jButton2))
                            .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(jLabel2)
                                .addGap(29, 29, 29)
                                .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                                        .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                            .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                                                .addComponent(ComboBoxAno, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(18, 18, 18)
                                                .addComponent(ComboBoxNumSemana, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(18, 18, 18)
                                                .addComponent(ComboBoxTipoHorario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                            .addComponent(ComboBoxNome, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.PREFERRED_SIZE, 262, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(96, 96, 96)
                                        .addComponent(jLabel5))
                                    .addComponent(BotaoCarregarHorario))
                                .addGap(18, 18, 18)
                                .addComponent(ComboBoxMarcacao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        PanelMarcacaoLayout.setVerticalGroup(
            PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                        .addGap(281, 281, 281)
                        .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(PanelMarcacaoLayout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 7, Short.MAX_VALUE)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 379, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2)
                            .addComponent(jLabel5)
                            .addGroup(PanelMarcacaoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(ComboBoxNumSemana, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(ComboBoxTipoHorario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(ComboBoxAno, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(ComboBoxMarcacao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(18, 18, 18)
                        .addComponent(ComboBoxNome, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(BotaoCarregarHorario)
                        .addGap(93, 93, 93)
                        .addComponent(jButton2)
                        .addContainerGap())))
        );

        TabbedMenu.addTab("Marcação", PanelMarcacao);

        javax.swing.GroupLayout PanelConsultaLayout = new javax.swing.GroupLayout(PanelConsulta);
        PanelConsulta.setLayout(PanelConsultaLayout);
        PanelConsultaLayout.setHorizontalGroup(
            PanelConsultaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1011, Short.MAX_VALUE)
        );
        PanelConsultaLayout.setVerticalGroup(
            PanelConsultaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 668, Short.MAX_VALUE)
        );

        TabbedMenu.addTab("Consulta", PanelConsulta);

        javax.swing.GroupLayout PanelMeioComplementarLayout = new javax.swing.GroupLayout(PanelMeioComplementar);
        PanelMeioComplementar.setLayout(PanelMeioComplementarLayout);
        PanelMeioComplementarLayout.setHorizontalGroup(
            PanelMeioComplementarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1011, Short.MAX_VALUE)
        );
        PanelMeioComplementarLayout.setVerticalGroup(
            PanelMeioComplementarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 668, Short.MAX_VALUE)
        );

        TabbedMenu.addTab("Meios Complementares", PanelMeioComplementar);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(TabbedMenu, javax.swing.GroupLayout.DEFAULT_SIZE, 1016, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(TabbedMenu, javax.swing.GroupLayout.DEFAULT_SIZE, 696, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    
    private void BotaoCarregarHorarioMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_BotaoCarregarHorarioMouseClicked
        // TODO add your handling code here:
        
        String data = tratarData();
        if("break".equals(data))
            return;//terminar função
        data = "2018-05-23";
        
        
        String tipoHorario = tratarTipoHorario();
        if("break".equals(tipoHorario))
            return; //terminar função
        
        //Marcacao.carregarHorario(data, tipoHorario, ComboBoxNome.getSelectedItem().toString());
        
        
    }//GEN-LAST:event_BotaoCarregarHorarioMouseClicked

    private void ComboBoxNomePopupMenuWillBecomeInvisible(javax.swing.event.PopupMenuEvent evt) {//GEN-FIRST:event_ComboBoxNomePopupMenuWillBecomeInvisible
        // TODO add your handling code here:
         // TODO add your handling code here:
        
        ArrayList<String> resultados = new ArrayList<>();
        resultados = Marcacao.buscarTodos(ComboBoxTipoHorario.getSelectedItem().toString());
        
        for(int i = 0 ; i <= resultados.size(); i++)
        {
            ComboBoxNome.addItem(resultados.get(i));
        }
    }//GEN-LAST:event_ComboBoxNomePopupMenuWillBecomeInvisible
    
    
    private String tratarData()
    {
        ArrayList<String> resultados = new ArrayList<>();
        String data = "";
        int ano = Integer.parseInt(ComboBoxAno.getSelectedItem().toString());
        //int numSemana = Integer.parseInt(ComboBoxNumSemana.getSelectedItem().toString());
        
        
        int diaSemana = diaDaSemana(2018, 21,5);
        //diaSemana - 1; // a menos que seja sabado
        int numSemanasAno = ano == 2020 ? 53 : 52;
        
        for(int i = 0 ; i <= 7 ; i++ )
        {
            
            resultados = Marcacao.carregarHorario(""+ano+"-"+"05"+"-"+(21+i) , "HorarioTrabalho", ComboBoxNome.getSelectedItem().toString());
            for(int j = 0 ; j < resultados.size() ; j++)
            {
                
                String[] parts = resultados.get(j).split(" ");     
                
                switch(parts[2])
                {
                    case "07:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 0,i+1);
                        break;
                    case "07:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 1,i+1);
                        break;
                    case "08:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 2,i+1);
                        break;
                    case "08:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 3,i+1);
                        break;
                    case "09:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 4,i+1);
                        break;
                    case "09:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 5,i+1);
                        break;
                    case "10:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 6,i+1);
                        break;
                    case "10:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 7,i+1);
                        break;
                    case "11:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 8,i+1);
                        break;
                    case "11:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 9,i+1);
                        break;
                    case "12:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 10,i+1);
                        break;
                    case "12:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 11,i+1);
                        break;
                    case "13:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 12,i+1);
                        break;
                    case "13:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 13,i+1);
                        break;
                    case "14:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 14,i+1);
                        break;
                    case "14:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 15,i+1);
                        break;
                    case "15:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 16,i+1);
                        break;
                    case "15:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 17,i+1);
                        break;   
                    case "16:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 18,i+1);
                        break;
                    case "16:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 19,i+1);
                        break;
                    case "17:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 20,i+1);
                        break;   
                    case "17:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 21,i+1);
                        break; 
                    case "18:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 22,i+1);
                        break;
                    case "18:30:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 23,i+1);
                        break;   
                    case "19:00:00.0000000":
                        TabelaHorario.setValueAt("Ocupado", 24,i+1);
                        break; 
                }    
            }
            
        }
        //falta a puta do mês
        
        return data;
    }
    
    private int diaDaSemana(int ano, int mes, int dia)
    {
 
        //N = d + 2m + [3(m+1)/5] + y + [y/4] - [y/100] + [y/400] + 2
        // d = nº de dias
        // m = nº do mês 
        // NO CASO DE JANEIRO E FEVEREIRO UTILIZAMOS 13 E 14 E NO ANO ANTERIOR
        // 1/1/1998 seria 1/13/1997
        // y = ano
        
        //After you find the number N, divide it by 7, and the REMAINDER of that 
        //division tells you the day of the week; 
        //1 = Domingo, 2 = Segunda, 3 = Terca, 4 = Quarta, 5 = Quinta, 6 = Sexta; BUT, if the remainder is 0, then the day is Saturday, 
        //that is: 0 = Saturday.
        
        float N = dia + 2*mes + (3 * (mes + 1) /5) + ano + ano/4 - ano/100 + ano/400 + 2;     
        int diaSemana =(int) N % 7;
        return diaSemana;
    }
    
    private String tratarTipoHorario()
    {
        String tipoHorario = ComboBoxTipoHorario.getSelectedItem().toString();
        switch(tipoHorario)
        {
            case "Colaborador":
                tipoHorario = "HorarioTrabalho";
                break;
            case "Local":
                tipoHorario = "HorarioRecurso";
                break;
            case "Recurso":
                tipoHorario = "HorarioLocal";
                break;
                
            default:
                JOptionPane.showMessageDialog(null, "Necessita de escolher um Tipo de Horário", "InfoBox: " + "Erro Tipo de Horário", JOptionPane.INFORMATION_MESSAGE);
                tipoHorario = "break";
                break;
        }
        
        return tipoHorario;
        
    }
    
    
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {

        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(GissUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(GissUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(GissUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(GissUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new GissUI().setVisible(true);
            }
        });    
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BotaoCarregarHorario;
    private javax.swing.JComboBox<String> ComboBoxAno;
    private javax.swing.JComboBox<String> ComboBoxMarcacao;
    private javax.swing.JComboBox<String> ComboBoxNome;
    private javax.swing.JComboBox<String> ComboBoxNumSemana;
    private javax.swing.JComboBox<String> ComboBoxTipoHorario;
    private javax.swing.JPanel PanelConsulta;
    private javax.swing.JPanel PanelMarcacao;
    private javax.swing.JPanel PanelMeioComplementar;
    private javax.swing.JTabbedPane TabbedMenu;
    private javax.swing.JTable TabelaHorario;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
