/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelTuyen;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class Hang {
    private String id;
    private String maHang;
    private String tenHang;
    private Date ngayTao;
    private Date ngaySua;
    private boolean trangThai;

    public Hang() {
    }

    public Hang(String id, String maHang, String tenHang, Date ngayTao, Date ngaySua, boolean trangThai) {
        this.id = id;
        this.maHang = maHang;
        this.tenHang = tenHang;
        this.ngayTao = ngayTao;
        this.ngaySua = ngaySua;
        this.trangThai = trangThai;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMaHang() {
        return maHang;
    }

    public void setMaHang(String maHang) {
        this.maHang = maHang;
    }

    public String getTenHang() {
        return tenHang;
    }

    public void setTenHang(String tenHang) {
        this.tenHang = tenHang;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public Date getNgaySua() {
        return ngaySua;
    }

    public void setNgaySua(Date ngaySua) {
        this.ngaySua = ngaySua;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }
    
    public Object[] toDataRow() {
        return new Object[]{id, maHang, tenHang, ngayTao, ngaySua, trangThai == true ? "Đang sử dụng" : "Chưa sử dụng"};
    }

}
