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
public class MauSac {
    private String id;
    private String maMau;
    private String tenMau;
    private Date ngayTao;
    private Date ngaySua;
    private boolean trangThai;

    public MauSac() {
    }

    public MauSac(String id, String maMau, String tenMau, Date ngayTao, Date ngaySua, boolean trangThai) {
        this.id = id;
        this.maMau = maMau;
        this.tenMau = tenMau;
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

    public String getMaMau() {
        return maMau;
    }

    public void setMaMau(String maMau) {
        this.maMau = maMau;
    }

    public String getTenMau() {
        return tenMau;
    }

    public void setTenMau(String tenMau) {
        this.tenMau = tenMau;
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
        return new Object[]{id, maMau, tenMau, ngayTao, ngaySua, trangThai == true ? "Đang sử dụng" : "Chưa sử dụng"};
    }
    
}
