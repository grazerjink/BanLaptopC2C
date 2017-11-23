/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.merchant.controllers;

import com.google.gson.Gson;
import ejb.entities.NguoiBan;
import ejb.entities.ThanhPho;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.NguoiBanService;
import web.services.PhuongXaService;
import web.services.QuanHuyenService;
import web.services.ThanhPhoService;
import web.viewmodels.NguoiBanViewModel;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant")
public class MerchantLandingController {

    @Autowired
    ThanhPhoService thanhPhoService;
    @Autowired
    PhuongXaService phuongXaService;
    @Autowired
    QuanHuyenService quanHuyenService;
    @Autowired
    NguoiBanService nguoiBanService;

    @RequestMapping(value = {"", "dang-nhap"})
    public String dangNhap(ModelMap model, HttpSession httpSession) {
        if(httpSession.getAttribute("merchant")!=null) {
            return "redirect:/merchant/quan-ly-gian-hang/";
        }
        model.addAttribute("nguoiBan", new NguoiBanViewModel());
        return "merchant/landing/trang-dang-nhap";
    }

    @RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
    public String dangNhap(ModelMap model,
            HttpSession httpSession,
            @ModelAttribute("nguoiBan") NguoiBanViewModel nguoiBanVM) {
        if (nguoiBanService.dangNhapHeThong(httpSession, model, nguoiBanVM)) {
            return "redirect:/merchant/quan-ly-gian-hang";
        }
        return "merchant/landing/trang-dang-nhap";
    }

    @RequestMapping("dang-ky")
    public String dangKy(ModelMap model, HttpSession httpSession) {
        if(httpSession.getAttribute("merchant")!=null) {
            return "redirect:/merchant/quan-ly-gian-hang/";
        }
        model.addAttribute("nguoiBan", new NguoiBanViewModel());
        return "merchant/landing/trang-dang-ky";
    }

    @RequestMapping(value = {"dang-ky"}, method = RequestMethod.POST)
    public String dangKy(ModelMap model,
            HttpServletRequest req,
            @ModelAttribute("nguoiBan") @Valid NguoiBanViewModel nguoiBanVM, BindingResult errors) {
        if (errors.hasErrors()) {
            model.addAttribute("serverErrors", "Xin vui lòng điền thông tin chính xác để được kích hoạt tài khoản.");
        } else {
            if (nguoiBanService.dangKyThongTin(model, nguoiBanVM, req)) {
                return "redirect:/merchant/dang-nhap/";
            }
        }
        return "merchant/landing/trang-dang-ky";
    }

    @ModelAttribute("dsThanhPho")
    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoService.layDanhSachThanhPho();
    }

    @ResponseBody
    @RequestMapping("ds-quanhuyen-theo-tp")
    public String dsQuanHuyenTheoThanhPho(@RequestParam("id") Integer id) {
        return new Gson().toJson(quanHuyenService.layDanhSachTheoThanhPho(id));
    }

    @ResponseBody
    @RequestMapping("ds-phuongxa-theo-quanhuyen")
    public String dsPhuongXaTheoQuanHuyen(@RequestParam("id") Integer id) {
        return new Gson().toJson(phuongXaService.layDanhSachTheoQuanHuyen(id));
    }
}
