/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package serviceTuyen;

import java.util.List;
import modelTuyen.ChatLieu;
import repositoryTuyen.ChatLieuRepo;

/**
 *
 * @author PC
 */
public class ChatLieuService {
    private ChatLieuRepo repository = new ChatLieuRepo();
    
    public List<ChatLieu> getAll(){
        return repository.getAllCL();
    }
    
    public List<String> listMaCL(){
        return repository.getListMa();
    }
    
    public List<String> listTenCL(){
        return repository.getListTen();
    }
    
    public boolean insert(ChatLieu sp){
        return this.repository.insert(sp);
    }
    public boolean update(ChatLieu sp){
        return this.repository.update(sp);
    }
    
     public boolean delete(String id){
        return this.repository.delete(id);
    }
     
     public List<ChatLieu> timKiem(String tenCL){
         return repository.TimKiem(tenCL);
     }
}
