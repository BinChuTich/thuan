/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.ChatLieu;
import utilitys.DBConnection;

/**
 *
 * @author DELL
 */
public class ChatLieuRepository {

    public ChatLieu getChatLieuById(String id) {
        ChatLieu chatLieu = new ChatLieu();
        try {
            String sql = "select * from chatlieu where id = ?";
            Connection con = DBConnection.getConnection();

            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                chatLieu.setId(rs.getString("id"));
                chatLieu.setMaChatlieu(rs.getString("ma"));
                chatLieu.setTenChatLieu(rs.getString("ten"));
                chatLieu.setNgayTao(rs.getDate("ngayTao"));
                chatLieu.setNgaySua(rs.getDate("ngaySua"));
                chatLieu.setTrangThai(rs.getInt("trangThai"));
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }

        return chatLieu;
    }
}
