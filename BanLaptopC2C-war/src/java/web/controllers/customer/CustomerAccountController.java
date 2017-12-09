/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.services.NguoiMuaService;
import web.viewmodels.NguoiMuaViewModel;

/**
 *
 * @author Winson Mac
 */
@Controller
public class CustomerAccountController {

    @Autowired
    NguoiMuaService nguoiMuaService;

    @RequestMapping(value = "dang-ky", method = RequestMethod.POST)
    public String dangKyTaiKhoan(Model model,
            HttpServletRequest request,
            @ModelAttribute("nguoiMua") @Valid NguoiMuaViewModel nguoiMuaVM,
            BindingResult errors) {
        if (!errors.hasErrors()) {
            nguoiMuaService.dangKyThongTin(nguoiMuaVM, model, request);
        } else {
            model.addAttribute("error", "Thông tin đăng ký không hợp lệ.");
        }
        return "redirect:/";
    }

    @RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
    public String dangNhapHeThong(Model model,
            HttpServletRequest request,
            HttpSession httpSession,
            @ModelAttribute("nguoiMua") NguoiMuaViewModel nguoiMuaVM,
            BindingResult errors) {
        nguoiMuaService.dangNhapHeThong(httpSession, model, nguoiMuaVM);
        return "redirect:/";
    }

    @RequestMapping(value = "kich-hoat-tai-khoan/{id}")
    public String kichHoatTaiKhoan(Model model,
            @PathVariable Integer id) {
        nguoiMuaService.kichHoatTaiKhoan(model, id);
        return "redirect:/"; 
    }
    
    @RequestMapping("lich-su-giao-dich")
    public String lichSuGiaoDich(Model model) {
        return "customer/account/trang-cap-nhat-thong-tin";
    }
    @RequestMapping("lien-he")
    public String lienHe(Model model) {
        return "customer/account/trang-cap-nhat-thong-tin";
    }
    @RequestMapping("doi-mat-khau")
    public String doiMatKhau(Model model) {
        return "customer/account/trang-cap-nhat-thong-tin";
    }
    @RequestMapping("cap-nhat-thong-tin")
    public String capNhatThongTin(Model model) {
        return "customer/account/trang-cap-nhat-thong-tin";
    }
    
    @RequestMapping("dang-xuat")
    public String dangXuat(HttpSession httpSession) {
        httpSession.removeAttribute("customer");
        return "redirect:/";
    }

}
