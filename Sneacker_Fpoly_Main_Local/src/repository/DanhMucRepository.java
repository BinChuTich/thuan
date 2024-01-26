/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.DanhMuc;
import utilitys.DBConnection;

/**
 *
 * @author LENOVO
 */
public class DanhMucRepository {

    public DanhMuc getDanhMucById(String id) {
        DanhMuc danhMuc = new DanhMuc();
         try {
        String sql = "select * from danhmuc where id = ? ";
        Connection con = DBConnection.getConnection();
        
       
            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                danhMuc.setId(rs.getString("id"));
                danhMuc.setMaDanhMuc(rs.getString("ma"));
                danhMuc.setTenDanhMuc(rs.getString("ten"));
                danhMuc.setNgayTao(rs.getDate("ngayTao"));
                danhMuc.setNgaySua(rs.getDate("ngaySua"));
                danhMuc.setTrangThai(rs.getInt("trangThai"));
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return danhMuc;
    }
}
