/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package serviceTuyen;

import java.util.List;
import modelTuyen.Hang;
import repositoryTuyen.HangRepo;

/**
 *
 * @author PC
 */
public class HangService {
    private HangRepo repository = new HangRepo();
    
    public List<Hang> getAll(){
        return repository.getAllCL();
    }
    
    public List<String> listMaHang(){
        return repository.getListMa();
    }
    
    public List<String> listTenHang(){
        return repository.getListTen();
    }
    
    public boolean insert(Hang sp){
        return this.repository.insert(sp);
    }
    public Hang update(Hang sp){
        return this.repository.update(sp);
    }
    
     public boolean delete(String id){
        return this.repository.delete(id);
    }
     
     public List<Hang> timKiem(String tenHang){
         return repository.TimKiem(tenHang);
     }
}
