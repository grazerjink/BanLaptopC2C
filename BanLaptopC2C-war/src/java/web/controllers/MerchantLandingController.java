/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers;

import com.google.gson.Gson;
import ejb.entities.NguoiBan;
import ejb.entities.ThanhPho;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.PhuongXaService;
import web.services.QuanHuyenService;
import web.services.ThanhPhoService;

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
    
    @RequestMapping(value = {"","dang-nhap"})
    public String dangNhap() {
        return "merchant/landing/login";
    }
    
    @RequestMapping("dang-ky")
    public String dangKy() {
        return "merchant/landing/signup";
    }
    
    @RequestMapping(value={"dang-ky"},method = RequestMethod.POST)
    public String dangKy(ModelMap model,
            @ModelAttribute("nguoiBan") NguoiBan nguoiBan) {
        
        return "merchant/landing/signup";
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
