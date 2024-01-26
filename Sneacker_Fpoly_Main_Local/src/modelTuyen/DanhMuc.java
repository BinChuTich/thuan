/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelTuyen;

import java.util.Date;

/**
 *
 * @author LENOVO
 */
public class DanhMuc {
    private String id;
    private String maDanhMuc;
    private String tenDanhMuc;
    private Date ngayTao;
    private Date ngaySua;
    private boolean trangThai;

    public DanhMuc() {
    }

    public DanhMuc(String id, String maDanhMuc, String tenDanhMuc, Date ngayTao, Date ngaySua, boolean trangThai) {
        this.id = id;
        this.maDanhMuc = maDanhMuc;
        this.tenDanhMuc = tenDanhMuc;
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

    public String getMaDanhMuc() {
        return maDanhMuc;
    }

    public void setMaDanhMuc(String maDanhMuc) {
        this.maDanhMuc = maDanhMuc;
    }

    public String getTenDanhMuc() {
        return tenDanhMuc;
    }

    public void setTenDanhMuc(String tenDanhMuc) {
        this.tenDanhMuc = tenDanhMuc;
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
        return new Object[]{id, maDanhMuc, tenDanhMuc, ngayTao, ngaySua, trangThai == true ? "Đang sử dụng" : "Chưa sử dụng"};
    }
    
    
}
