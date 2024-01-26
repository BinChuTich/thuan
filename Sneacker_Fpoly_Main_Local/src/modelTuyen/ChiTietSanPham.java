/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelTuyen;

import java.math.BigDecimal;
import java.util.Date;

/**
 *
 * @author DELL
 */
public class ChiTietSanPham {
    private String id;
    private String SanPham;
    private BigDecimal giaNhap;
    private BigDecimal giaBan;
    private String soLuong;
    private String hang;
    private String chatLieu;
    private String mauSac;
    private String size;
    private String danhMuc;
    private String hinhAnh;
    private String moTa;
    private boolean trangThai;

    public ChiTietSanPham() {
    }

    public ChiTietSanPham(String id, String SanPham, BigDecimal giaNhap, BigDecimal giaBan, String soLuong, String hang, String chatLieu, String mauSac, String size, String danhMuc, String hinhAnh, String moTa, boolean trangThai) {
        this.id = id;
        this.SanPham = SanPham;
        this.giaNhap = giaNhap;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
        this.hang = hang;
        this.chatLieu = chatLieu;
        this.mauSac = mauSac;
        this.size = size;
        this.danhMuc = danhMuc;
        this.hinhAnh = hinhAnh;
        this.moTa = moTa;
        this.trangThai = trangThai;
    }

    public ChiTietSanPham(String SanPham, BigDecimal giaNhap, BigDecimal giaBan, String soLuong, String hang, String chatLieu, String mauSac, String size, String danhMuc, String hinhAnh, String moTa, boolean trangThai) {
        this.SanPham = SanPham;
        this.giaNhap = giaNhap;
        this.giaBan = giaBan;
        this.soLuong = soLuong;
        this.hang = hang;
        this.chatLieu = chatLieu;
        this.mauSac = mauSac;
        this.size = size;
        this.danhMuc = danhMuc;
        this.hinhAnh = hinhAnh;
        this.moTa = moTa;
        this.trangThai = trangThai;
    }

    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSanPham() {
        return SanPham;
    }

    public void setSanPham(String SanPham) {
        this.SanPham = SanPham;
    }

    public String getHang() {
        return hang;
    }

    public void setHang(String hang) {
        this.hang = hang;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getDanhMuc() {
        return danhMuc;
    }

    public void setDanhMuc(String danhMuc) {
        this.danhMuc = danhMuc;
    }

    public String getChatLieu() {
        return chatLieu;
    }

    public void setChatLieu(String chatLieu) {
        this.chatLieu = chatLieu;
    }

    public String getMauSac() {
        return mauSac;
    }

    public void setMauSac(String mauSac) {
        this.mauSac = mauSac;
    }
    
    public BigDecimal getGiaNhap() {
        return giaNhap;
    }

    public void setGiaNhap(BigDecimal giaNhap) {
        this.giaNhap = giaNhap;
    }

    public BigDecimal getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(BigDecimal giaBan) {
        this.giaBan = giaBan;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public String getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(String soLuong) {
        this.soLuong = soLuong;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }
    
}
