/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.ArrayList;
import model.NhanVien;
import repository.ChucVuRepository;
import repository.NhanVienRepository;

/**
 *
 * @author Chien Duong
 */
public class NhanVienService {

    NhanVienRepository nhanVienRepository = new NhanVienRepository();

    public ArrayList<NhanVien> getALLNV() {
        return nhanVienRepository.getAllNV();
    }

    
    public ArrayList<NhanVien> getNVLAM() {
        return nhanVienRepository.getNVLAM();
    }

    
    public ArrayList<NhanVien> getNVNGHI() {
        return nhanVienRepository.getNVNGHI();
    }

    
    public ArrayList<NhanVien> getDLNVLAMBYCV(String tenCV) {
        return nhanVienRepository.getNVlamByCV(tenCV);
    }

    
    public NhanVien getNVbyID(String id) {
        return nhanVienRepository.getNVByID(id);
    }

    
    public ArrayList<NhanVien> getNVLamBySdt(String sdt) {
        return nhanVienRepository.getNVNghiBySdt(sdt);
    }
    
    
public ArrayList<NhanVien> getNVNghiByCV(String TenCV) {
        return nhanVienRepository.getNVNghiBySdt(TenCV);
    }


    public ArrayList<NhanVien> getNVNghiBySdt(String sdt) {
        return nhanVienRepository.getNVNghiBySdt(sdt);
    }

    
    public NhanVien insertNV(NhanVien nvm) {
        return nhanVienRepository.insertNV(nvm);
    }

    
    public NhanVien UpdateNV(NhanVien nvm) {
        return nhanVienRepository.updateNV(nvm);
    }
}
