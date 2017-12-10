/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.merchant.controllers;

import ejb.entities.DanhGia;
import ejb.entities.NguoiBan;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import web.services.DanhGiaService;
import web.services.NguoiBanService;

/**
 *
 * @author Vivi
 */
@Controller
@RequestMapping("admin")


public class NguoiBanController {
    
    
    @Autowired
    NguoiBanService nguoiBanService;
    // Hien danh sach nguoi ban 
    @RequestMapping("danhsach-nguoiban")
    public String layDanhSachNguoiBan(Model model) {
        return "admin/home/danhsach-nguoiban";
    }
    
    @ModelAttribute("dsNguoiBan")
    public List<NguoiBan> layDSNguoiBan() {
    return nguoiBanService.layDanhSachNguoiBan();
    }
}
