/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.AdminBUSLocal;
import ejb.entities.Admin;
import ejb.entities.PhieuMuaTin;
import ejb.sessions.AdminFacadeLocal;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.springframework.stereotype.Component;

/**
 *
 * @author Vivi
 */
@Component
public class AdminService {

    AdminFacadeLocal adminFacade = lookupAdminFacadeLocal();
    AdminBUSLocal adminBUS = lookupAdminBUSLocal();
    
    public boolean themNguoiDung(Admin admin) {
        try {
            adminFacade.create(admin);
            return true;
        }
        catch(Exception e) {
            return false;
        }
    }
    
    public Admin timNguoiDung(int id) {
        try {            
            return adminFacade.find(id);
        }
        catch(Exception e) {
            return null;
        }
    }
    
    public boolean capNhatNguoiDung(Admin admin) {
        try {
            adminFacade.edit(admin);
            return true;
        }
        catch(Exception e) {
            return false;
        }
    }
    
    public List<Admin> layDanhSachNguoiDungKhongKhoa() {
        return adminBUS.layDanhSachNguoiDungKhongKhoa();
    }    

    private AdminBUSLocal lookupAdminBUSLocal() {
        try {
            Context c = new InitialContext();
            return (AdminBUSLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/AdminBUS!ejb.business.AdminBUSLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private AdminFacadeLocal lookupAdminFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (AdminFacadeLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/AdminFacade!ejb.sessions.AdminFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    
}
