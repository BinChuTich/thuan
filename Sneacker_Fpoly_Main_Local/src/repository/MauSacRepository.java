/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.MauSac;
import utilitys.DBConnection;

/**
 *
 * @author DELL
 */
public class MauSacRepository {

    String sql = "select * from MauSac where id = ?";
    MauSac mauSac = new MauSac();

    public MauSac getMauSacById(String id) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                mauSac.setId(rs.getString(1));
                mauSac.setMaMau(rs.getString(2));
                mauSac.setTenMau(rs.getString(3));
                mauSac.setNgayTao(rs.getDate(4));
                mauSac.setNgaySua(rs.getDate(5));
                mauSac.setTrangThai(rs.getInt(6));

            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return mauSac;
    }
}
