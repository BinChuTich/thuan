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
import java.util.List;
import modelTuyen.MauSac;
import utilitys.DBConnection;

/**
 *
 * @author PC
 */
public class MauSacRepo {
    public List<MauSac> getAllDM() {
        String query = """
                       SELECT [Id]
                               ,[Ma]
                               ,[Ten]
                               ,[NgayTao]
                               ,[NgaySua]
                               ,[TrangThai]
                           FROM [dbo].[MauSac]
                         ORDER BY [Ma]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<MauSac> lists = new ArrayList<>();
            while (rs.next()) {
                MauSac cl = new MauSac(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getDate(5), rs.getBoolean(6));
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
                         FROM [dbo].[MauSac]
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
                         FROM [dbo].[MauSac]
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
    
    public boolean insert(MauSac cl) {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = " INSERT INTO MauSac(Id, Ma, Ten, NgayTao, NgaySua, TrangThai) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, cl.getId());
            ps.setObject(2, cl.getMaMau());
            ps.setObject(3, cl.getTenMau());
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

    public boolean update(MauSac sp) {
        int check = 0;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "UPDATE MauSac SET Ten = ?, NgayTao = ?, NgaySua = ?,TrangThai = ? WHERE Ma = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, sp.getTenMau());
            ps.setDate(2, new Date(sp.getNgayTao().getTime()));
            ps.setDate(3, new Date(sp.getNgaySua().getTime()));
            ps.setObject(4, sp.isTrangThai());
            ps.setObject(5, sp.getMaMau());
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
          String sql = " DELETE FROM MauSac WHERE Ma = ?";
          PreparedStatement ps = conn.prepareStatement(sql);
          ps.setString(1, id);
          ps.execute();
          return true;
      } catch (Exception e) {
      e.printStackTrace();
      return false;
      }
  }
    
    public List<MauSac> TimKiem(String tenMS) {
        String query = """
                       SELECT [Id]
                               ,[Ma]
                               ,[Ten]
                               ,[NgayTao]
                               ,[NgaySua]
                               ,[TrangThai]
                           FROM [dbo].[MauSac]
                         WHERE [Ten] like CONCAT('%',?,'%')
                       ORDER BY [Ten]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, tenMS);
            ResultSet rs = ps.executeQuery();
            List<MauSac> lists = new ArrayList<>();
            while (rs.next()) {
                MauSac pt = new MauSac(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getDate(5), rs.getBoolean(6));
                lists.add(pt);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
}
