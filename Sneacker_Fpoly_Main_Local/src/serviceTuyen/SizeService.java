/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package serviceTuyen;

import java.util.List;
import modelTuyen.Size;
import repositoryTuyen.SizeRepo;

/**
 *
 * @author PC
 */
public class SizeService {
    private SizeRepo repository = new SizeRepo();
    
    public List<Size> getAll(){
        return repository.getAllDM();
    }
    
    public List<String> listMaCL(){
        return repository.getListMa();
    }
    
    public List<String> listTenCL(){
        return repository.getListTen();
    }
    
    public boolean insert(Size sp){
        return this.repository.insert(sp);
    }
    public boolean update(Size sp, String id){
        return this.repository.update(sp, id);
    }
    
     public boolean delete(String id){
        return this.repository.delete(id);
    }
}
