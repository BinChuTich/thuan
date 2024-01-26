/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repositoryTuyen;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelTuyen.Size;
import utilitys.DBConnection;
/**
 *
 * @author PC
 */
public class SizeRepo {
     public List<Size> getAllDM() {
        String query = """
                       SELECT [Id]
                               ,[Ma]
                               ,[Ten]
                               ,[NgayTao]
                               ,[NgaySua]
                               ,[TrangThai]
                           FROM [dbo].[Size]
                         ORDER BY [Ma]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<Size> lists = new ArrayList<>();
            while (rs.next()) {
                Size cl = new Size(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getDate(5), rs.getBoolean(6));
                lists.add(cl);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListMa() {
        String query = """
                       SELECT [Ma]
                         FROM [dbo].[Size]
                       ORDER BY [Ma]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String ma = rs.getString(1);
                lists.add(ma);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListTen() {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[Size]
                       ORDER BY [Ma]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String ten = rs.getString(1);
                lists.add(ten);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public boolean insert(Size cl) {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = " INSERT INTO Size(Id, Ma, Ten, NgayTao, NgaySua, TrangThai) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, cl.getId());
            ps.setObject(2, cl.getMaSize());
            ps.setObject(3, cl.getTenSize());
            ps.setObject(4,  cl.getNgayTao());
            ps.setObject(5, cl.getNgaySua());
            ps.setObject(6, cl.isTrangThai());
            ps.execute();

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean update(Size sp, String id) {
        int check = 0;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "UPDATE Size SET Ma =?,Ten = ?, NgayTao = ?, NgaySua = ?,TrangThai = ? WHERE Id = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, sp.getMaSize());
            ps.setObject(2, sp.getTenSize());
            ps.setDate(4, (Date) sp.getNgayTao());
            ps.setDate(5, (Date) sp.getNgayTao());
            ps.setObject(3, sp.isTrangThai());
            ps.setObject(6, sp.getId());
            check = ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean delete(String id){
      try {
          Connection conn = DBConnection.getConnection();
          String sql = " DELETE FROM Size WHERE Ma = ?";
          PreparedStatement ps = conn.prepareStatement(sql);
          ps.setString(1, id);
          ps.execute();
          return true;
      } catch (Exception e) {
      e.printStackTrace();
      return false;
      }
  }
}
