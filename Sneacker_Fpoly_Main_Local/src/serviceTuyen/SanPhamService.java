/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package serviceTuyen;

import java.util.List;
import modelTuyen.SanPham;
import repositoryTuyen.SanPhamRepository;

/**
 *
 * @author PC
 */
public class SanPhamService {
    private SanPhamRepository repository = new SanPhamRepository();
    
    public List<SanPham> getAll(){
        return repository.getAll();
    }
    
    public List<String> listMaSP(){
        return repository.getListMa();
    }
    
    public List<String> listTenSP(){
        return repository.getListTen();
    }
    
    public boolean insert(SanPham sp){
        return this.repository.insert(sp);
    }
    public boolean update(SanPham sp){
        return this.repository.update(sp);
    }
    
}
