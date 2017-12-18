/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.customer;

import ejb.entities.NguoiBan;
import ejb.entities.NguoiMua;
import ejb.entities.PhuongXa;
import ejb.entities.QuanHuyen;
import ejb.entities.ThanhPho;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import web.services.NguoiMuaService;
import web.services.PhuongXaService;
import web.services.QuanHuyenService;
import web.services.ThanhPhoService;
import web.viewmodels.NguoiBanViewModel;
import web.viewmodels.NguoiMuaViewModel;

/**
 *
 * @author Winson Mac
 */
@Controller
public class CustomerAccountController {

    @Autowired
    NguoiMuaService nguoiMuaService;
    @Autowired
    QuanHuyenService quanHuyenService;
    @Autowired
    ThanhPhoService thanhPhoService;
    @Autowired
    PhuongXaService phuongXaService;
    

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
        return "customer/account/thay-doi-mat-khau";
    }
    @RequestMapping("cap-nhat-thong-tin")
    public String capNhatThongTin(Model model,HttpSession session) {
        NguoiMua nguoimua = (NguoiMua) session.getAttribute("customer");
        List<QuanHuyen> dsQuanHuyen=null;
        List<PhuongXa> dsPhuongXa =null;
        try
        {
        dsQuanHuyen = quanHuyenService.layDanhSachQuanHuyenTheoThanhPho(nguoimua.getIdThanhPho().getId());
        dsPhuongXa = phuongXaService.layDanhSachPhuongXaTheoQuanHuyen(nguoimua.getIdQuanHuyen().getId());
        }
        catch(Exception ex)
        {
            
            nguoimua.setIdThanhPho(thanhPhoService.layThanhPho(1));
            dsQuanHuyen = quanHuyenService.layDanhSachQuanHuyenTheoThanhPho(1);      
            dsPhuongXa = phuongXaService.layDanhSachPhuongXaTheoQuanHuyen(1);
        }
        model.addAttribute("dsThanhPho", thanhPhoService.layDanhSachThanhPho());
        model.addAttribute("nguoimua", new NguoiMuaViewModel());
        model.addAttribute("nguoimuasession", nguoimua);
        model.addAttribute("dsQuanHuyen", dsQuanHuyen);
        model.addAttribute("dsPhuongXa", dsPhuongXa);
        return "customer/account/trang-cap-nhat-thong-tin";
    }    
    @RequestMapping(value="cap-nhat-thong-tin", method = RequestMethod.POST)
    public String capNhatThongTin(Model model,HttpSession httpSession,            
            @ModelAttribute("nguoimua") @Valid NguoiMuaViewModel nguoiMuaVM,
            BindingResult errors) {
        if (errors.hasErrors()) { 
            model.addAttribute("serverErrors", "Thông tin thay đổi không hợp lệ.");
        } else {
           nguoiMuaService.capNhatThongTinCaNhan(nguoiMuaVM, model, httpSession);
        }        
        
        
        return "customer/account/trang-cap-nhat-thong-tin";
    }   
    @RequestMapping("dang-xuat")
    public String dangXuat(HttpSession httpSession) {
        httpSession.removeAttribute("customer");
        return "redirect:/";
    }
    @RequestMapping(value="doi-mat-khau-customer", method = RequestMethod.POST)
    public String doiMatKhau(@RequestParam("matKhauCu") String matKhauCu,
            @RequestParam("matKhauMoi") String matKhauMoi,
            @RequestParam("matKhauXacNhan") String matKhauXacNhan,
            HttpSession httpSession,
            ModelMap model) {
        nguoiMuaService.doiMatKhau(matKhauCu, matKhauMoi, matKhauXacNhan, model, httpSession);
        return "redirect:/doi-mat-khau";
    }
}
