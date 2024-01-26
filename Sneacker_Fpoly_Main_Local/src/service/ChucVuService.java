/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.ArrayList;
import model.ChucVu;
import repository.ChucVuRepository;
import repository.ChucVuRepository;

/**
 *
 * @author Chien Duong
 */
public class ChucVuService {

    ChucVuRepository chucVuRepository = new ChucVuRepository();

    public ArrayList<ChucVu> getALLCV() {
        return chucVuRepository.getAll();
    }

    public ChucVu getCVByID(String idChucVu) {
        return chucVuRepository.getCVByID(idChucVu);
    }

    public ChucVu InsertCV(ChucVu cvm) {
        return chucVuRepository.insertCV(cvm);
    }

    public ChucVu UpdateCV(ChucVu cv){
        return chucVuRepository.updateCV(cv);
    }
}
