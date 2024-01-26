/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.util.ArrayList;
import model.SanPham;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import utilitys.DBConnection;
import java.sql.PreparedStatement;

/**
 *
 * @author DELL
 */
public class SanPhamRepository {

    ArrayList<SanPham> lstSanPham = new ArrayList<>();
    String sql = "Select * from sanpham";

    public ArrayList<SanPham> getAllSanPham() {
        try {
            Connection con = DBConnection.getConnection();
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                SanPham sanPham = new SanPham();
                sanPham.setId(rs.getString("id"));
                sanPham.setMaSanPham(rs.getString("maSanPham"));
                sanPham.setTenSanPham(rs.getString("tenSanPham"));
                sanPham.setNgayTao(rs.getDate("ngayTao"));
                sanPham.setNgaySua(rs.getDate("ngaySua"));
                sanPham.setTrangThai(rs.getInt("trangThai"));
                lstSanPham.add(sanPham);
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return lstSanPham;
    }

    public SanPham getSPByID(String id) {
        String sql = " Select * from sanPham where id=?";
        SanPham sanPham = new SanPham();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                sanPham.setId(rs.getString("id"));
                sanPham.setMaSanPham(rs.getString("maSanPham"));
                sanPham.setTenSanPham(rs.getString("tenSanPham"));
                sanPham.setNgayTao(rs.getDate("ngayTao"));
                sanPham.setNgaySua(rs.getDate("ngaySua"));
                sanPham.setTrangThai(rs.getInt("trangThai"));
            }

        } catch (Exception e) {
            System.out.println("" + e);
        }
        return sanPham;
    }
}
