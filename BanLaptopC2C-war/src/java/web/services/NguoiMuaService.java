/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.NguoiMuaBusiness;
import ejb.entities.NguoiMua;
import ejb.sessions.NguoiMuaFacade;
import ejb.sessions.PhuongXaFacade;
import ejb.sessions.QuanHuyenFacade;
import ejb.sessions.ThanhPhoFacade;
import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import web.commons.EncryptHelper;
import web.commons.LookupFactory;
import web.commons.RandomString;
import web.viewmodels.NguoiMuaViewModel;

/**
 *
 * @author Winson Mac
 */
@Component
public class NguoiMuaService {

    @Autowired
    MailerService mailerService;
    ThanhPhoFacade thanhPhoFacade = (ThanhPhoFacade) LookupFactory.lookupBeanFacade("ThanhPhoFacade");
    QuanHuyenFacade quanHuyenFacade = (QuanHuyenFacade) LookupFactory.lookupBeanFacade("QuanHuyenFacade");
    PhuongXaFacade phuongXaFacade = (PhuongXaFacade) LookupFactory.lookupBeanFacade("PhuongXaFacade");
    NguoiMuaFacade nguoiMuaFacade = (NguoiMuaFacade) LookupFactory.lookupBeanFacade("NguoiMuaFacade");
    NguoiMuaBusiness nguoiMuaBusiness = (NguoiMuaBusiness) LookupFactory.lookupBeanBusiness("NguoiMuaBusiness");

    public boolean dangNhapHeThong(HttpSession httpSession, Model model, NguoiMuaViewModel nguoiMuaVM) {
        try {
            NguoiMua nguoiMua = nguoiMuaBusiness.timTheoEmail(nguoiMuaVM.getEmail());
            if (EncryptHelper.matches(nguoiMua.getMatKhau(), nguoiMuaVM.getMatKhau())) {
                if (!nguoiMua.getKichHoat()) {
                    model.addAttribute("error", "Tài khoản chưa được kích hoạt.");
                    return false;
                } else {
                    httpSession.setAttribute("customer", nguoiMua);
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
    
    public boolean dangKyThongTin(NguoiMuaViewModel nguoiMuaVM, Model model,
            HttpServletRequest request) {
        if (nguoiMuaVM.getMatKhau().equals(nguoiMuaVM.getMatKhauXacNhan())) {
            if (nguoiMuaBusiness.timTheoEmail(nguoiMuaVM.getEmail()) != null) {
                model.addAttribute("error", "Email đã được đăng ký rồi.");
                return false;
            } else {
                try {
                    NguoiMua nguoiMua = new NguoiMua();
                    nguoiMua.setEmail(nguoiMuaVM.getEmail());
                    nguoiMua.setMatKhau(EncryptHelper.encrypt(nguoiMuaVM.getMatKhau()));
                    nguoiMua.setNgayDangKi(new Date());
                    nguoiMua.setTrangThai(true);
                    nguoiMua.setKichHoat(false); 
                    try {                        
                        int newId = nguoiMuaBusiness.themThongTinNguoiMua(nguoiMua);
                        String url = request.getRequestURL().toString().replace("dang-ky", "kich-hoat-tai-khoan/" + newId);
                        String to = nguoiMua.getEmail();
                        String subject = "Chúc mừng bạn đã ký thành tài khoản mua hàng thành công của V2Q MALL";
                        String body = "<p>Chúc mừng bạn đã đăng ký tài khoản thành công tại V2Q MALL !!! <br>"
                                + "Xin vui lòng nhấn vào link dưới đây để kích hoạt tài khoản và tiến hành cập nhật thông tin để tiện cho việc giao dịch sau này.<br>"
                                + "<a href='"+ url +"'>Nhấn vào đây để kích hoạt</a></p>";
                        mailerService.send(to, subject, body);
                    } catch (Exception e) {
                        model.addAttribute("error", "Lỗi hệ thống xin vui lòng thử lại sau.");
                        return false;
                    }
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

    public void capNhatThongTinCaNhan(NguoiMuaViewModel nguoiMuaVM, Model model, HttpSession httpSession) {
        try {
            NguoiMua ngMua = (NguoiMua) httpSession.getAttribute("customer");
            NguoiMua tmp = nguoiMuaBusiness.timTheoSoDienThoai(nguoiMuaVM.getSoDienThoai());
            if (tmp != null && tmp.getId() != ngMua.getId()) {
                model.addAttribute("error", "Số điện thoại đã được sử dụng rồi.");
            } else {                
                NguoiMua nguoiMua = nguoiMuaFacade.find(ngMua.getId());
                nguoiMua.setHoTen(nguoiMuaVM.getHoTen());
                nguoiMua.setSoDienThoai(nguoiMuaVM.getSoDienThoai());
                nguoiMua.setDiaChi(nguoiMuaVM.getDiaChi());
                nguoiMua.setIdThanhPho(thanhPhoFacade.find(nguoiMuaVM.getIdThanhPho()));
                nguoiMua.setIdQuanHuyen(quanHuyenFacade.find(nguoiMuaVM.getIdQuanHuyen()));
                nguoiMua.setIdPhuongXa(phuongXaFacade.find(nguoiMuaVM.getIdPhuongXa()));
                nguoiMuaFacade.edit(nguoiMua);
                httpSession.setAttribute("customer", nguoiMua);
                model.addAttribute("success", "Cập nhật thông tin thành công.");
            }
        } catch (Exception ex) {
            model.addAttribute("error", "Xảy ra lỗi, xin vui lòng kiểm tra lại.");
        }
    }

    public void doiMatKhau(String matKhauCu, String matKhauMoi, String matKhauXacNhan,
            ModelMap model, HttpSession httpSession) {
        NguoiMua nguoiMua = (NguoiMua) httpSession.getAttribute("customer");
        String matKhau = nguoiMua.getMatKhau();
        if (matKhauMoi.equals(matKhauXacNhan)) {
            if (EncryptHelper.matches(matKhau, matKhauCu)) {
                nguoiMua.setMatKhau(EncryptHelper.encrypt(matKhauMoi));
                nguoiMuaFacade.edit(nguoiMua);
                httpSession.setAttribute("customer", nguoiMua);
                model.addAttribute("success", "Đổi mật khẩu thành công.");
            } else {
                model.addAttribute("message", "Mật khẩu hiện tại không đúng.");
            }
        } else {
            model.addAttribute("error", "Mật khẩu xác nhận không đúng.");
        }
    }

    public boolean taoMatKhauMoi(ModelMap model, String email) {
        try {
            NguoiMua nguoiMua = nguoiMuaBusiness.timTheoEmail(email);
            String matKhauMoi = new RandomString(8, ThreadLocalRandom.current()).nextString();
            nguoiMua.setMatKhau(EncryptHelper.encrypt(matKhauMoi));
            try {
                nguoiMuaFacade.edit(nguoiMua);
                String to = nguoiMua.getEmail();
                String subject = "Tạo mật khẩu mới thành công";
                String body = "<p>Mật khẩu mới hiện tại của bạn là:  <b>" + matKhauMoi + "</b></p>"
                        + "Xin vui lòng đăng nhập hệ thống người bán hàng để tiến hành thay đổi lại mật khẩu theo ý muốn.";
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

    public void kichHoatTaiKhoan(Model model, Integer id) {
        NguoiMua nguoiMua = nguoiMuaFacade.find(id);
        nguoiMua.setKichHoat(true);
        nguoiMuaFacade.edit(nguoiMua);
        model.addAttribute("success", "Kích hoạt tài khoản thành công.");
    }

}
