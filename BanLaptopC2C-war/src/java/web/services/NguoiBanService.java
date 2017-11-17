/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.NguoiBanBusiness;
import ejb.entities.NguoiBan;
import ejb.sessions.NguoiBanFacade;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import web.commons.EncryptHelper;
import web.viewmodels.EntityMapping;
import web.viewmodels.NguoiBanViewModel;

/**
 *
 * @author Winson Mac
 */
@Component
public class NguoiBanService {

    NguoiBanBusiness nguoiBanBusiness = lookupNguoiBanBusinessBean();
    NguoiBanFacade nguoiBanFacade = lookupNguoiBanFacadeBean();

    private NguoiBanFacade lookupNguoiBanFacadeBean() {
        try {
            Context c = new InitialContext();
            return (NguoiBanFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/NguoiBanFacade!ejb.sessions.NguoiBanFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private NguoiBanBusiness lookupNguoiBanBusinessBean() {
        try {
            Context c = new InitialContext();
            return (NguoiBanBusiness) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/NguoiBanBusiness!ejb.business.NguoiBanBusiness");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public boolean dangKyThongTin(ModelMap model, NguoiBanViewModel nguoiBanVM) {
        if (nguoiBanVM.getMatKhau().equals(nguoiBanVM.getMatKhauXacNhan())) {
            if (nguoiBanBusiness.timTheoCMND(nguoiBanVM.getCmnd()) != null) {
                model.addAttribute("error", "CMND đã được đăng ký rồi.");
                return false;
            } else if (nguoiBanBusiness.timTheoEmail(nguoiBanVM.getEmail()) != null) {
                model.addAttribute("error", "Email đã được đăng ký rồi.");
                return false;
            } else {
                try {
                    NguoiBan nguoiBan = EntityMapping.convertFrom(nguoiBanVM);
                    nguoiBan.setMatKhau(EncryptHelper.encrypt(nguoiBanVM.getMatKhau()));
                    nguoiBanFacade.create(nguoiBan);
                } catch (Exception ex) {
                    model.addAttribute("error", "Đăng ký thất bại.");
                    return false;
                }
                model.addAttribute("success", "Đăng ký tài khoản bán hàng thành công.");
                return true;
            }
        } else {
            model.addAttribute("error", "Mật khẩu xác nhận không khớp.");
            return false;
        }
    }

    public boolean dangNhapHeThong(HttpSession httpSession, ModelMap model, NguoiBanViewModel nguoiBanVM) {
        try {
            NguoiBan nguoiBan = nguoiBanBusiness.timTheoEmail(nguoiBanVM.getEmail());
            String matKhau = EncryptHelper.encrypt(nguoiBanVM.getMatKhau());
            if (nguoiBan.getMatKhau().equals(matKhau)) {
                httpSession.setAttribute("merchant", nguoiBan);
                return true;
            } else {
                model.addAttribute("error", "Sai mật khẩu.");
                return false;
            }
        } catch (Exception ex) {
            model.addAttribute("error", "Sai email đăng ký.");
            return false;
        }
    }
}
