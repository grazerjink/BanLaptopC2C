/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.AdminBusiness;
import ejb.entities.Admin;
import ejb.entities.NguoiBan;
import ejb.sessions.AdminFacade;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import web.commons.EncryptHelper;
import web.commons.LookupFactory;
import web.commons.RandomString;

/**
 *
 * @author Vivi
 */
@Component
public class AdminService {
    
    
    @Autowired
    MailerService mailerService;
    AdminBusiness adminBusiness = (AdminBusiness) LookupFactory.lookupBeanBusiness("AdminBusiness");
    AdminFacade adminFacade = (AdminFacade) LookupFactory.lookupBeanFacade("AdminFacade");

    public boolean themNguoiDung(Admin admin) {
        try {
            String matKhauMaHoa = EncryptHelper.encrypt(admin.getMatKhau());
            admin.setMatKhau(EncryptHelper.encrypt(matKhauMaHoa));
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
    
    // tạo mật khẩu mới cho admin
    public boolean taoMatKhauMoi(ModelMap model, String email) {
        try {
            Admin admin = adminBusiness.timtheoEmail(email);
            String matKhauMoi = new RandomString(8, ThreadLocalRandom.current()).nextString();
            admin.setMatKhau(EncryptHelper.encrypt(matKhauMoi));
            try {
                adminFacade.edit(admin);
                String to = admin.getEmail();
                String subject = "Tạo mật khẩu mới thành công";
                String body = "<p>Mật khẩu mới hiện tại của bạn là:  <b>" + matKhauMoi + "</b></p>";
                mailerService.send(to, subject, body);
                model.addAttribute("success", "Cấp mật khẩu mới thành công.<br>Xin vui lòng kiểm tra mail.");
            } catch (Exception e) {
                model.addAttribute("error", "Lỗi hệ thống xin vui lòng thử lại sau.");
                return false;
            }
            return true;
        } catch (Exception ex) {
            model.addAttribute("message", "Email không tồn tại trong hệ thống.");
            return false;
        }
    }
    

}
