/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.ChucVu;
import model.NhanVien;
import utilitys.DBConnection;

/**
 *
 * @author Chien Duong
 */
public class ChucVuRepository {

    public ArrayList<ChucVu> getAll() {
        try {
            ArrayList<ChucVu> list = new ArrayList<>();
            java.sql.Connection con = DBConnection.getConnection();
            String query = "SELECT * FROM ChucVu";
            java.sql.Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                String idchucVu = rs.getString(1);
                String maChucVu = rs.getString(2);
                String tenChucVu = rs.getString(3);
                Date ngayTao = rs.getDate(4);
                Date ngaySua = rs.getDate(5);
                int trangThai = rs.getInt(6);
                list.add(new ChucVu(idchucVu, maChucVu, tenChucVu, trangThai));
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

 public ChucVu getCVByID(String idchucVu) {
    ChucVu cv = null;
    String sql = "SELECT * FROM CHUCVU WHERE id = ?";
    try {
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, idchucVu);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            idchucVu = rs.getString(1);
            String maChucVu = rs.getString(2);
            String tenChucVu = rs.getString(3);
            Date ngayTao = rs.getDate(4);
            Date ngaySua = rs.getDate(5);
            int trangThai = rs.getInt(6);
            cv = new ChucVu(sql, maChucVu, tenChucVu, ngayTao, ngaySua, trangThai);
        }

        con.close();
        ps.close();
        rs.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    return cv;
}

    public ChucVu insertCV(ChucVu cv) {
        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO CHUCVU VALUES(NEWID(),?,?,GetDate(),null,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cv.getMaChucVu());
            ps.setString(2, cv.getTenChucVu());
            ps.setInt(3, cv.getTrangThai());
            ps.executeUpdate();
            return cv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ChucVu updateCV(ChucVu cv) {
        try {
            Connection con = DBConnection.getConnection();
            String sql = "UPDATE ChucVu SET tenChucVu= ?, trangThai = ? WHERE maChucVu=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cv.getTenChucVu());
            ps.setInt(2, cv.getTrangThai());
            ps.setString(3, cv.getMaChucVu());

            ps.executeUpdate();
            return cv;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
