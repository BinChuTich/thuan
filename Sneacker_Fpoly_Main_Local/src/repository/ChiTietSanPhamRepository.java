/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repository;

import java.util.ArrayList;
import model.ChiTietSanPham;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import model.ChatLieu;
import model.DanhMuc;
import model.Hang;
import model.KhuyenMai;
import model.MauSac;
import model.SanPham;
import model.Size;
import utilitys.DBConnection;
import java.sql.PreparedStatement;

/**
 *
 * @author DELL
 */
public class ChiTietSanPhamRepository {

    HangRepository hangRepo = new HangRepository();
    SizeRepository sizeRepo = new SizeRepository();
    SanPhamRepository sanPhamRepo = new SanPhamRepository();
    DanhMucRepository danhMucRepo = new DanhMucRepository();
    ChatLieuRepository chatLieuRepo = new ChatLieuRepository();
    MauSacRepository mauSacRepo = new MauSacRepository();
    KhuyenMaiRepository khuyenMaiRepo = new KhuyenMaiRepository();

    public ArrayList<ChiTietSanPham> getAllChiTietSanPham() {
        ArrayList<ChiTietSanPham> listChiTietSanPham = new ArrayList<>();

        try {
            String sql = "Select * from ChiTietSanPham";
            Connection con = DBConnection.getConnection();

            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                ChiTietSanPham ctsp = new ChiTietSanPham();
                ctsp.setId(rs.getString("id"));
                SanPham sanPham = sanPhamRepo.getSPByID(rs.getString("idSanPham"));
                Hang hang = hangRepo.getHangById(rs.getString("hang"));
                Size size = sizeRepo.getSizeById(rs.getString("size"));
                DanhMuc danhMuc = danhMucRepo.getDanhMucById(rs.getString("DanhMuc"));
                ChatLieu chatLieu = chatLieuRepo.getChatLieuById(rs.getString("ChatLieu"));
                MauSac mauSac = mauSacRepo.getMauSacById(rs.getString("MauSac"));
                KhuyenMai khuyenMai = khuyenMaiRepo.getKhuyenMaiById(rs.getString("idKhuyenMai"));
                ctsp.setSanPham(sanPham.getTenSanPham());
                ctsp.setHang(hang.getTenHang());
                ctsp.setSize(size.getTenSize());
                ctsp.setMauSac(mauSac.getTenMau());
                ctsp.setTenKhuyenMai(khuyenMai.getTenKhuyenMai());
                ctsp.setGiaNhap(rs.getBigDecimal("giaNhap"));
                ctsp.setGiaBan(rs.getBigDecimal("giaBan"));
                ctsp.setQR(rs.getInt("QR"));
                ctsp.setHinhAnh(rs.getString("hinhAnh"));
                ctsp.setSoLuong(rs.getInt("soLuong"));
                ctsp.setMoTa(rs.getString("moTa"));
                ctsp.setNgayTao(rs.getDate("ngayTao"));
                ctsp.setNgaySua(rs.getDate("ngaySua"));
                ctsp.setTrangThai(rs.getInt("trangThai"));

                listChiTietSanPham.add(ctsp);

            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return listChiTietSanPham;
    }

    public ChiTietSanPham getChiTietSanPhamById(String id) {
        ChiTietSanPham ctsp = new ChiTietSanPham();

        try {
            String sql = "Select * from ChiTietSanPham where id = ?";
            Connection con = DBConnection.getConnection();

            PreparedStatement ptsm = con.prepareStatement(sql);
            ptsm.setString(1, id);
            ResultSet rs = ptsm.executeQuery();
            while (rs.next()) {
                ctsp.setId(rs.getString("id"));
                SanPham sanPham = sanPhamRepo.getSPByID(rs.getString("idSanPham"));
                Hang hang = hangRepo.getHangById(rs.getString("hang"));
                Size size = sizeRepo.getSizeById(rs.getString("size"));
                DanhMuc danhMuc = danhMucRepo.getDanhMucById(rs.getString("danhmuc"));
                ChatLieu chatLieu = chatLieuRepo.getChatLieuById(rs.getString("chatlieu"));
                MauSac mauSac = mauSacRepo.getMauSacById(rs.getString("mausac"));
                KhuyenMai khuyenMai = khuyenMaiRepo.getKhuyenMaiById(rs.getString("idKhuyenMai"));
                ctsp.setSanPham(sanPham.getTenSanPham());
                ctsp.setHang(hang.getTenHang());
                ctsp.setSize(size.getTenSize());
                ctsp.setMauSac(mauSac.getTenMau());
                ctsp.setDanhMuc(danhMuc.getTenDanhMuc());
                ctsp.setChatLieu(chatLieu.getTenChatLieu());
                ctsp.setTenKhuyenMai(khuyenMai.getTenKhuyenMai());
                ctsp.setGiaNhap(rs.getBigDecimal("giaNhap"));
                ctsp.setGiaBan(rs.getBigDecimal("giaBan"));
                ctsp.setQR(rs.getInt("QR"));
                ctsp.setHinhAnh(rs.getString("hinhAnh"));
                ctsp.setSoLuong(rs.getInt("soLuong"));
                ctsp.setMoTa(rs.getString("moTa"));
                ctsp.setNgayTao(rs.getDate("ngayTao"));
                ctsp.setNgaySua(rs.getDate("ngaySua"));
                ctsp.setTrangThai(rs.getInt("trangThai"));
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
        return ctsp;
    }
}
