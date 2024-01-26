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
import modelTuyen.Hang;
import utilitys.DBConnection;

/**
 *
 * @author PC
 */
public class HangRepo {
    public List<Hang> getAllCL() {
        String query = """
                       SELECT [idHang]
                               ,[maHang]
                               ,[tenHang]
                               ,[ngayTao]
                               ,[ngaySua]
                               ,[trangThai]
                           FROM [dbo].[hang]
                         ORDER BY [maHang]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<Hang> lists = new ArrayList<>();
            while (rs.next()) {
                Hang cl = new Hang(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getDate(5), rs.getBoolean(6));
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
                       SELECT [maHang]
                         FROM [dbo].[hang]
                       ORDER BY [maHang]
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
                       SELECT [tenHang]
                         FROM [dbo].[hang]
                       ORDER BY [maHang]
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
    
    public boolean insert(Hang cl) {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = " INSERT INTO hang(idHang, maHang, tenHang, ngayTao, ngaySua, trangThai) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, cl.getId());
            ps.setObject(2, cl.getMaHang());
            ps.setObject(3, cl. getTenHang());
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

    public Hang update(Hang sp) {
        String sql = "UPDATE hang SET tenHang = ?, ngayTao = ?, ngaySua = ?,trangThai = ? WHERE maHang = ? ";
        try {
            Connection conn = DBConnection.getConnection();
            
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, sp.getTenHang());
            ps.setDate(2, new Date(sp.getNgayTao().getTime()));
            ps.setDate(3, new Date(sp.getNgaySua().getTime()));
            ps.setBoolean(4, sp.isTrangThai());
            ps.setString(5, sp.getMaHang());
            ps.executeUpdate();
            return sp;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return null;
    }
    
    public boolean delete(String id){
      try {
          Connection conn = DBConnection.getConnection();
          String sql = " DELETE FROM hang WHERE maHang = ?";
          PreparedStatement ps = conn.prepareStatement(sql);
          ps.setString(1, id);
          ps.execute();
          return true;
      } catch (Exception e) {
      e.printStackTrace();
      return false;
      }
  }
    
    public List<Hang> TimKiem(String tenDM) {
        String query = """
                       SELECT [idHang]
                               ,[maHang]
                               ,[tenHang]
                               ,[ngayTao]
                               ,[ngaySua]
                               ,[trangThai]
                           FROM [dbo].[hang]
                         WHERE [tenHang] like CONCAT('%',?,'%')
                       ORDER BY [tenHang]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, tenDM);
            ResultSet rs = ps.executeQuery();
            List<Hang> lists = new ArrayList<>();
            while (rs.next()) {
                Hang pt = new Hang(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getDate(5), rs.getBoolean(6));
                lists.add(pt);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
}
