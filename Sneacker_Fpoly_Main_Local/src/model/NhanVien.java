/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class NhanVien {
    private String id;
    private String maNhanVien;
    private String hoVaTen;
    private Date ngaySinh;
    private String gioiTinh;
    private String diaChi;
    private String sdt;
    private String email;
    private String matKhau;
    private ChucVu IDCV;
    private String hinh;
    private Date ngayTao;
    private Date ngaySua;
    private int trangThai;

    public NhanVien() {
    }

    public NhanVien(String id, String maNhanVien, String hoVaTen, Date ngaySinh, String gioiTinh, String diaChi, String sdt, String email, String matKhau, ChucVu IDCV, String hinh, Date ngayTao, Date ngaySua, int trangThai) {
        this.id = id;
        this.maNhanVien = maNhanVien;
        this.hoVaTen = hoVaTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.email = email;
        this.matKhau = matKhau;
        this.IDCV = IDCV;
        this.hinh = hinh;
        this.ngayTao = ngayTao;
        this.ngaySua = ngaySua;
        this.trangThai = trangThai;
    }

    public NhanVien(String id, String maNhanVien, String hoVaTen) {
        this.id = id;
        this.maNhanVien = maNhanVien;
        this.hoVaTen = hoVaTen;
    }

    public NhanVien(String id, String maNhanVien, String hoVaTen, Date ngaySinh, String gioiTinh, String diaChi, String sdt, String email, String matKhau, ChucVu IDCV, String hinh, int trangThai) {
        this.id = id;
        this.maNhanVien = maNhanVien;
        this.hoVaTen = hoVaTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.email = email;
        this.matKhau = matKhau;
        this.IDCV = IDCV;
        this.hinh = hinh;
        this.trangThai = trangThai;
    }
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMaNhanVien() {
        return maNhanVien;
    }

    public void setMaNhanVien(String maNhanVien) {
        this.maNhanVien = maNhanVien;
    }

    public String getHoVaTen() {
        return hoVaTen;
    }

    public void setHoVaTen(String hoVaTen) {
        this.hoVaTen = hoVaTen;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public ChucVu getIDCV() {
        return IDCV;
    }

    public void setIDCV(ChucVu IDCV) {
        this.IDCV = IDCV;
    }

    public String getHinh() {
        return hinh;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
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

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public Object[] toDataRow(){
        return new Object[]{
          id,maNhanVien,hoVaTen,ngaySinh,gioiTinh,diaChi,sdt,email,matKhau,IDCV,hinh,trangThai==1?"Đi làm":"Nghỉ làm"  
        };
    }
   
}
