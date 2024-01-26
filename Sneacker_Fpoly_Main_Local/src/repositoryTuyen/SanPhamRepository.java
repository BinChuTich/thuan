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
import modelTuyen.SanPham;
import utilitys.DBConnection;

/**
 *
 * @author PC
 */
public class SanPhamRepository {
    public List<SanPham> getAll() {
        String query = """
                       SELECT [Id]
                               ,[maSanPham]
                               ,[tenSanPham]
                               ,[NgayTao]
                               ,[NgaySua]
                               ,[TrangThai]
                           FROM [dbo].[SanPham]
                         ORDER BY [maSanpham]
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<SanPham> lists = new ArrayList<>();
            while (rs.next()) {
                SanPham sp = new SanPham(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getDate(5), rs.getBoolean(6));
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListMa() {
        String query = """
                       SELECT [maSanPham]
                         FROM [dbo].[SanPham]
                       ORDER BY [maSanPham]
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
                       SELECT [tenSanPham]
                         FROM [dbo].[SanPham]
                       ORDER BY [maSanPham]
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
    
//    public List<SanPham> getListID() {
//        String query = """
//                       SELECT [Id]
//                         FROM [dbo].[SanPham]
//                       ORDER BY [maSanPham]
//                       """;
//        try (Connection con = DBConnection.getConnection();
//                PreparedStatement ps = con.prepareStatement(query)) {
//            ResultSet rs = ps.executeQuery();
//            List<SanPham> lists = new ArrayList<>();
//            while (rs.next()) {
//                String ten = rs.getString(1);
//                lists.add(ten);
//            }
//            return lists;
//        } catch (Exception e) {
//            e.printStackTrace(System.out);
//        }
//        return null;
//    }
    
    public boolean insert(SanPham sp) {
        try {
            Connection conn = DBConnection.getConnection();
            String sql = " INSERT INTO SanPham(Id, maSanPham, tenSanPham, NgayTao, NgaySua, TrangThai) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, sp.getId());
            ps.setObject(2, sp.getMaSanPham());
            ps.setObject(3, sp.getTenSanPham());
            ps.setObject(4,  sp.getNgayTao());
            ps.setObject(5, sp.getNgaySua());
            ps.setObject(6, sp.isTrangThai());
            ps.execute();

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean update(SanPham sp) {
        int check = 0;
        try {
            Connection conn = DBConnection.getConnection();
            String sql = "UPDATE SanPham SET tenSanPham = ?, NgayTao = ?, NgaySua = ?,TrangThai = ? WHERE maSanPham = ? ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setObject(1, sp.getTenSanPham());
            ps.setDate(2, new Date(sp.getNgayTao().getTime()));
            ps.setDate(3, new Date(sp.getNgaySua().getTime()));
            ps.setObject(4, sp.isTrangThai());
            ps.setObject(5, sp.getMaSanPham());
            check = ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
}
