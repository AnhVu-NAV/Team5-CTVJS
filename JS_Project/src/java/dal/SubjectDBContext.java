/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Subject;

/**
 *
 * @author ducta
 */
public class SubjectDBContext extends DBContext<Subject> {

    @Override
    public void insert(Subject s) {
        PreparedStatement stm = null;
        try {
            String sql = "INSERT INTO dbo.subject_table(subject,class,slot,contact)\n"
                    + "     VALUES (?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, s.getSubject());
            stm.setString(2, s.getClassid());
            stm.setString(3, s.getSlot());
            stm.setString(4, s.getContact());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
            } catch (SQLException ex) {
                Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public void update(Subject model, int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Subject model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Subject get(int id) {
        String sql = "SELECT [id] ,[subject] ,[class] ,[slot] ,[contact] FROM [FPTU_CHANGE_CLASS].[dbo].[subject_table] WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Subject sj = new Subject(rs.getInt("id"),
                        rs.getString("subject"),
                        rs.getString("class"),
                        rs.getString("slot"),
                        rs.getString("contact"));
                return sj;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    @Override
    public ArrayList<Subject> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public List<Subject> getSubject(String s) {
        List<Subject> list = new ArrayList<>();
        String sql = "select * from subject_table where subject=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Subject sj = new Subject(rs.getInt("id"),
                        rs.getString("subject"),
                        rs.getString("class"),
                        rs.getString("slot"),
                        rs.getString("contact"));
                list.add(sj);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Subject getSubject(String subject, String class_raw, String slot_raw, String contact_raw){
        
        return null;
    }

}
