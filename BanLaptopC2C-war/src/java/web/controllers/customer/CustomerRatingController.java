/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.customer;

import ejb.entities.DanhGia;
import ejb.entities.NguoiMua;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.DanhGiaService;

/**
 *
 * @author Administrator
 */
@Controller
public class CustomerRatingController {
@Autowired
DanhGiaService danhGiaService;
    
    @RequestMapping("danh-gia-nguoi-ban")
    public String danhgiasanpham(Model model, HttpSession session)
    {
        NguoiMua ngmua = (NguoiMua) session.getAttribute("customer");
        List<DanhGia> danhgias= danhGiaService.layDSThongKeDanhGia(ngmua.getId());
        
       model.addAttribute("danhgias",danhgias);
       return "customer/account/danh-gia-nguoi-ban";
    }
    
    @ResponseBody
    @RequestMapping("rated")
    public String rated(Model model, HttpSession session,
            @RequestParam("idDanhgia") Integer idDanhgia,
            @RequestParam("rating") Integer rating) {
        try {
            danhGiaService.danhGia(idDanhgia,rating);
            
            return "customer/account/danh-gia-nguoi-ban";
        } catch (Exception e) {
            return "customer/account/danh-gia-nguoi-ban";
        }

    }
    
}
