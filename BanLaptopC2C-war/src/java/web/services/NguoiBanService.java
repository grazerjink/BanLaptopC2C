/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.NguoiBanBusiness;
import ejb.entities.NguoiBan;
import ejb.sessions.NguoiBanFacade;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import web.commons.EncryptHelper;
import web.commons.LookupFactory;
import web.viewmodels.EntityMapping;
import web.viewmodels.NguoiBanViewModel;

/**
 *
 * @author Winson Mac
 */
@Component
public class NguoiBanService {

    @Autowired
    MailerService mailerService;

    NguoiBanBusiness nguoiBanBusiness = (NguoiBanBusiness) LookupFactory.lookupBeanBusiness("NguoiBanBusiness");
    NguoiBanFacade nguoiBanFacade = (NguoiBanFacade) LookupFactory.lookupBeanFacade("NguoiBanFacade");

    public boolean dangKyThongTin(ModelMap model, NguoiBanViewModel nguoiBanVM,
            HttpServletRequest req) {
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
                    nguoiBan.setTrangThai(true);
                    nguoiBan.setKichHoat(false);
                    try {
                        String url = req.getRequestURL().toString().replace("dang-ky", "activate/" + nguoiBan.getId());
                        String to = nguoiBan.getEmail();
                        String subject = "Chúc mừng bạn đã ký thành trở thành người bán hàng với V2Q MALL";
                        String body = "Vui lòng đến trụ sợ V2Q MALL xác thực hoặc gửi mail với những thông tin sau đây: <br>"
                                + "<ul>"
                                + "<li>Chứng minh nhân dân</li>"
                                + "<li>....................</li>"
                                + "</ul>"
                                + "<hr>";
                        mailerService.send(to, subject, body);
                    } catch (Exception e) {
                        model.addAttribute("error", "Lỗi hệ thống xin vui lòng thử lại sau.");
                        return false;
                        
                        
                    }
                    nguoiBanFacade.create(nguoiBan);
                    model.addAttribute("success", "Đăng ký tài khoản thành công.<br>Vui lòng kiểm tra hộp thư để kích hoạt tài khoản.");
                    return true;
                } catch (Exception ex) {
                    model.addAttribute("error", "Đăng ký thất bại.");
                    return false;
                }
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
                if (!nguoiBan.getTrangThai()) {
                    model.addAttribute("error", "Tài khoản đã bị tạm khóa.");
                    return false;
                } else if (!nguoiBan.getKichHoat()) {
                    model.addAttribute("error", "Tài khoản chưa được kích hoạt.");
                    return false;
                } else {
                    httpSession.setAttribute("merchant", nguoiBan);
                    return true;
                }
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
