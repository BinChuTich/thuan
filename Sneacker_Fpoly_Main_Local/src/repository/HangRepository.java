/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Hang;
import utilitys.DBConnection;

/**
 *
 * @author DELL
 */
public class HangRepository {

    String sql = "select * from hang where idHang = ?";
    Hang hang = new Hang();

    public Hang getHangById(String id) {

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                hang.setId(rs.getString("idHang"));
                hang.setMaHang(rs.getString("maHang"));
                hang.setTenHang(rs.getString("tenHang"));
                hang.setNgayTao(rs.getDate("ngayTao"));
                hang.setNgaySua(rs.getDate("ngaySua"));
                hang.setTrangThai(rs.getInt("trangThai"));
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return hang;
    }
}
