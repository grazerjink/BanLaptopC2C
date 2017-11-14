/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers;

import ejb.entities.NguoiBan;
import ejb.entities.ThanhPho;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.services.PhuongXaService;
import web.services.QuanHuyenService;
import web.services.ThanhPhoService;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant")
public class MerchantController {
    @Autowired
    ThanhPhoService thanhPhoService;
    @Autowired
    PhuongXaService phuongXaService;
    @Autowired
    QuanHuyenService quanHuyenService;
    
    @RequestMapping(value = {"","dang-nhap"})
    public String index() {
        return "merchant/home/login";
    }
    
    @RequestMapping("dang-ky")
    public String dangKy() {
        return "merchant/home/signup";
    }
    
    @RequestMapping(value={"dang-ky"},method = RequestMethod.POST)
    public String dangKy(ModelMap model,
            @ModelAttribute("nguoiBan") NguoiBan nguoiBan) {
        
        return "merchant/home/signup";
    }
    
    @ModelAttribute("dsThanhPho")
    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoService.layDanhSachThanhPho();
    }    
}
