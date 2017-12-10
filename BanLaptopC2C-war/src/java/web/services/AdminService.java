/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.AdminBusiness;
import ejb.entities.Admin;
import ejb.sessions.AdminFacade;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Vivi
 */
@Component
public class AdminService {

    AdminBusiness adminBusiness = (AdminBusiness) LookupFactory.lookupBeanBusiness("AdminBusiness");
    AdminFacade adminFacade = (AdminFacade) LookupFactory.lookupBeanFacade("AdminFacade");

    public boolean themNguoiDung(Admin admin) {
        try {
            adminFacade.create(admin);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public Admin timNguoiDung(int id) {
        try {
            return adminFacade.find(id);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean capNhatNguoiDung(Admin admin) {
        try {
            adminFacade.edit(admin);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public List<Admin> layDanhSachNguoiDungKhongKhoa() {
        return adminBusiness.layDanhSachNguoiDungKhongKhoa();
    }
    
    // Đăng nhập
    public String dangNhap(String email, String password, HttpSession httpSession) {
        if (adminBusiness.kiemTraTonTaiEmail(email) == true) {
            Admin admin = adminBusiness.layAdmintheoemail(email);
            if (admin.getMatKhau().equals(password) == true) {
                httpSession.setAttribute("admin", admin);
                return "Đăng nhập thành công";
            }
            return "Mật khẩu không chính xác";
        }
        return "Email không tồn tại";
    }
    

}
