/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Size;
import utilitys.DBConnection;

/**
 *
 * @author DELL
 */
public class SizeRepository {

    String sql = "select * from size where id = ?";
    Size size = new Size();

    public Size getSizeById(String id) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                size.setId(rs.getString(1));
                size.setMaSize(rs.getString(2));
                size.setTenSize(rs.getString(3));
                size.setNgayTao(rs.getDate(4));
                size.setNgaySua(rs.getDate(5));
                size.setTrangThai(rs.getInt(6));
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return size;
    }
}
