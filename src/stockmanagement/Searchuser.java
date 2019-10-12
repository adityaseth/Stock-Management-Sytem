/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crazyshop;

import static crazyshop.constants.myurl1;
import static crazyshop.constants.uname;
import static crazyshop.constants.upass;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author abhis
 */
public class Searchuser extends javax.swing.JInternalFrame {

    /**
     * Creates new form adduser
     */
    public Searchuser() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel3 = new javax.swing.JLabel();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);

        jLabel1.setText("name");

        jButton1.setText("Search");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "name", "phone", "usertype"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel3.setText("Search User");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addComponent(jLabel1)
                .addGap(52, 52, 52)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 157, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 752, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(537, Short.MAX_VALUE)
                .addComponent(jLabel3)
                .addGap(349, 349, 349))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addComponent(jLabel3)
                .addGap(55, 55, 55)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(jButton1)
                        .addGap(0, 357, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 387, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
            try
    {
        Connection myconn = DriverManager.getConnection(myurl1, uname, upass);
        try
            {
                DefaultTableModel mymodel = (DefaultTableModel)jTable1.getModel();
                String q="select * from manageseller where name like ?";
                PreparedStatement myst = myconn.prepareStatement(q);
                myst.setString(1, jTextField1.getText() + "%");
                ResultSet myres = myst.executeQuery();
                while(mymodel.getRowCount()>0){
                    mymodel.removeRow(mymodel.getRowCount()-1);
                }
                if(myres.next()==true)
                {
                    do
                    {
                        String n,ph,ut;
                        n=myres.getString("name");
                        ph=myres.getString("phone");
                        ut="Seller";
                        Object myrow[] = {n,ph,ut};

                        mymodel.addRow(myrow);
                    }
                    
                    while(myres.next());

                }
         
                q="select * from managecustomer where name like ?";
               PreparedStatement myst2 = myconn.prepareStatement(q);
                myst2.setString(1, jTextField1.getText() + "%");
                myres = myst2.executeQuery();
                if(myres.next()==true)
                {
                    do
                    {
                        String n,ph,ut;
                        n=myres.getString("name");
                        ph=myres.getString("phone");
                        ut="Customer";
                        Object myrow[] = {n,ph,ut};

                        mymodel.addRow(myrow);
                    }
                    
                    while(myres.next());

                }
                q="select * from manageemployee where name like ?";
               PreparedStatement myst1 = myconn.prepareStatement(q);
                myst1.setString(1, jTextField1.getText() + "%");
                myres = myst1.executeQuery();
                if(myres.next()==true)
                {
                    do
                    {
                        String n,ph,ut;
                        n=myres.getString("name");
                        ph=myres.getString("phone");
                        ut=myres.getString("position");
                        Object myrow[] = {n,ph,ut};

                        mymodel.addRow(myrow);
                    }
                    
                    while(myres.next());

                }
        

        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(rootPane, "Error " + e.getMessage());
        }
        finally
        {
             myconn.close();
        }
    }
    catch(Exception e)
    {
        JOptionPane.showMessageDialog(rootPane, "Error in connection " + e.getMessage());
    }
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
