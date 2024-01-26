/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package repositoryTuyen;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelTuyen.ChiTietSanPham;
import modelTuyen.SanPham;
import utilitys.DBConnection;

/**
 *
 * @author PC
 */
public class SPCTRepository {
    
    public List<ChiTietSanPham> getAll() {
        String query = """
                       SELECT
                                CTS.Id,
                                dbo.SanPham.tenSanPham ,
                                CTS.giaNhap,
                                CTS.giaBan,
                                CTS.SoLuong,
                         	Hang.TenHang AS TenHang,
                                dbo.ChatLieu.Ten,
                                MauSac.Ten AS TenMau,
                         	Size.Ten AS TenSize,
                                DanhMuc.Ten AS TenDanhMuc,
                                CTS.HinhAnh, 
                                CTS.MoTa, 
                                dbo.SanPham.TrangThai
                         
                         FROM
                             ChiTietSanPham AS CTS
                         	JOIN dbo.SanPham ON CTS.idSanPham=dbo.SanPham.Id
                         JOIN
                             MauSac ON CTS.MauSac = MauSac.id
                         JOIN
                             DanhMuc ON CTS.DanhMuc = DanhMuc.Id
                         JOIN
                             Size ON CTS.Size = Size.Id
                         JOIN
                             Hang ON CTS.hang = Hang.idHang
                         JOIN
                         	dbo.ChatLieu ON cts.ChatLieu=ChatLieu.id
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<ChiTietSanPham> lists = new ArrayList<>();
            while (rs.next()) {
                ChiTietSanPham ctsp = new ChiTietSanPham(rs.getString(1), rs.getString(2), rs.getBigDecimal(3), rs.getBigDecimal(4), rs.getString(5), rs.getString(6)
                                                        , rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11)
                                                        , rs.getString(12), rs.getBoolean(13));
                lists.add(ctsp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public boolean add(ChiTietSanPham ctsp) {
        int check = 0;
        String query = """
                       INSERT INTO [dbo].[ChiTietSanPham]
                                  ([Id]
                                  ,[idSanPham]
                                  ,[giaNhap]
                                  ,[giaBan]
                                  ,[SoLuong]
                                  ,[hang]
                                  ,[ChatLieu]
                                  ,[MauSac]
                                  ,[Size]
                                  ,[DanhMuc]
                                  ,[HinhAnh]
                                  ,[MoTa]
                                  ,[TrangThai])
                            VALUES
                                  (?,?,?,?,?,?,?,?,?,?,?,?,?)
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ctsp.getId());
            ps.setObject(2, ctsp.getSanPham());
            ps.setObject(3, ctsp.getGiaNhap());
            ps.setObject(4, ctsp.getGiaBan());
            ps.setObject(5, ctsp.getSoLuong());
            ps.setObject(6, ctsp.getHang());
            ps.setObject(7, ctsp.getChatLieu());
            ps.setObject(8, ctsp.getMauSac());
            ps.setObject(9, ctsp.getSize());
            ps.setObject(10, ctsp.getDanhMuc());
            ps.setObject(11, ctsp.getHinhAnh());
            ps.setObject(12, ctsp.getMoTa());
            ps.setObject(13, ctsp.isTrangThai());
            check = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return check > 0;
    }
    
    public boolean update(ChiTietSanPham ctsp) {
        int check = 0;
        String query = """
                       UPDATE [dbo].[ChiTietSanPham]
                          SET [idSanPham] = ?
                       ,[giaNhap] = ?
                       ,[giaBan] = ?
                       ,[SoLuong] = ?
                       ,[hang] = ?
                       ,[ChatLieu] = ?
                       ,[MauSac] = ?
                       ,[Size] = ?
                       ,[DanhMuc] = ?
                       ,[MoTa] = ?
                       ,[HinhAnh] = ?
                       ,[TrangThai] = ?
                        WHERE [Id] = ?
                       """;
        try (Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setObject(1, ctsp.getSanPham());
            ps.setObject(2, ctsp.getGiaNhap());
            ps.setObject(3, ctsp.getGiaBan());
            ps.setObject(4, ctsp.getSoLuong());
            ps.setObject(5, ctsp.getHang());
            ps.setObject(6, ctsp.getChatLieu());
            ps.setObject(7, ctsp.getMauSac());
            ps.setObject(8, ctsp.getSize());
            ps.setObject(9, ctsp.getDanhMuc());
            ps.setObject(10, ctsp.getHinhAnh());
            ps.setObject(11, ctsp.getMoTa());
            ps.setObject(12, ctsp.isTrangThai());
            ps.setObject(13, ctsp.getId());
            check = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return check > 0;
    }
    
    public ArrayList<ChiTietSanPham> getListIDSP(String id) {
        ArrayList<ChiTietSanPham> lists = new ArrayList<>();
        String query = """
                       SELECT * FROM ChiTietSanPham WHERE idSanPham LIKE ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
             ps.setString(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                ChiTietSanPham ctsp =  new ChiTietSanPham(rs.getString(1), rs.getString(2), rs.getBigDecimal(3), rs.getBigDecimal(4), rs.getString(5), rs.getString(6)
                                                        , rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11)
                                                        , rs.getString(12), rs.getBoolean(13));
                lists.add(ctsp);
            }
            
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return lists;
    }
    
    public List<String> getListSP() {
        String query = """
                       SELECT [tenSanPham]
                         FROM [dbo].[SanPham]
                       Order By [maSanPham] asc
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String sp = rs.getString(1);
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getSPByID(String id) {
        String query = """
                       SELECT [tenSanPham]
                         FROM [dbo].[SanPham]
                       Where [Id] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String s = rs.getString(1);
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getIDBySP(String ten) {
        String query = """
                       SELECT [Id]
                         FROM [dbo].[SanPham]
                       Where [tenSanPham] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ten);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListDanhMuc() {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[DanhMuc]
                       Order By [Ma] asc
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String sp = rs.getString(1);
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getDanhMucByID(String id) {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[DanhMuc]
                       Where [Id] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String s = rs.getString(1);
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getIDByDanhMuc(String ten) {
        String query = """
                       SELECT [Id]
                         FROM [dbo].[DanhMuc]
                       Where [Ten] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ten);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListHang() {
        String query = """
                       SELECT [tenHang]
                         FROM [dbo].[hang]
                       Order By [maHang] asc
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String sp = rs.getString(1);
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getHangByID(String id) {
        String query = """
                       SELECT [tenHang]
                         FROM [dbo].[hang]
                       Where [idHang] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String s = rs.getString(1);
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getIDByHang(String ten) {
        String query = """
                       SELECT [idHang]
                         FROM [dbo].[hang]
                       Where [tenHang] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ten);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListSize() {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[Size]
                       Order By [Ma] asc
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String sp = rs.getString(1);
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getSizeByID(String id) {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[Size]
                       Where [Id] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String s = rs.getString(1);
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getIDBySize(String ten) {
        String query = """
                       SELECT [Id]
                         FROM [dbo].[Size]
                       Where [Ten] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ten);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListMauSac() {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[MauSac]
                       Order By [Ma] asc
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String sp = rs.getString(1);
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getMauSacByID(String id) {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[MauSac]
                       Where [Id] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String s = rs.getString(1);
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getIDByMauSac(String ten) {
        String query = """
                       SELECT [Id]
                         FROM [dbo].[MauSac]
                       Where [Ten] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ten);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public List<String> getListChatLieu() {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[ChatLieu]
                       Order By [Ma] asc
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            List<String> lists = new ArrayList<>();
            while (rs.next()) {
                String sp = rs.getString(1);
                lists.add(sp);
            }
            return lists;
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getChatLieuByID(String id) {
        String query = """
                       SELECT [Ten]
                         FROM [dbo].[ChatLieu]
                       Where [Id] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String s = rs.getString(1);
                return s;
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public String getIDByChatLieu(String ten) {
        String query = """
                       SELECT [Id]
                         FROM [dbo].[ChatLieu]
                       Where [Ten] = ?
                       """;
        try ( Connection con = DBConnection.getConnection();  PreparedStatement ps = con.prepareStatement(query)) {
            ps.setObject(1, ten);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
}
