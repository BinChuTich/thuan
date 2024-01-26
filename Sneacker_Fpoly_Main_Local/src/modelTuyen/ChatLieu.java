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
public class ChatLieu {
    private String id;
    private String maChatlieu;
    private String tenChatLieu;
    private Date ngayTao;
    private Date ngaySua;
    private boolean trangThai;

    public ChatLieu() {
    }

    public ChatLieu(String id, String maChatlieu, String tenChatLieu, Date ngayTao, Date ngaySua, boolean trangThai) {
        this.id = id;
        this.maChatlieu = maChatlieu;
        this.tenChatLieu = tenChatLieu;
        this.ngayTao = ngayTao;
        this.ngaySua = ngaySua;
        this.trangThai = trangThai;
    }

    public ChatLieu(String maChatlieu, String tenChatLieu, Date ngayTao, Date ngaySua, boolean trangThai) {
        this.maChatlieu = maChatlieu;
        this.tenChatLieu = tenChatLieu;
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

    public String getMaChatlieu() {
        return maChatlieu;
    }

    public void setMaChatlieu(String maChatlieu) {
        this.maChatlieu = maChatlieu;
    }

    public String getTenChatLieu() {
        return tenChatLieu;
    }

    public void setTenChatLieu(String tenChatLieu) {
        this.tenChatLieu = tenChatLieu;
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
        return new Object[]{maChatlieu, tenChatLieu, ngayTao, ngaySua, trangThai == false ? "Đang còn hàng" : "Hết hàng"};
    }

}
