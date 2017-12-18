/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.customer;

import ejb.entities.CtPhieuMuaHang;
import ejb.entities.NguoiMua;
import ejb.entities.PhieuMuaHang;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import web.services.PhieuMuaHangService;

/**
 *
 * @author Administrator
 */
@Controller
public class CustomerShoppingHistoryController {
    @Autowired
    PhieuMuaHangService phieuMuaHangService;
    
    @RequestMapping("xem-phieu-mua")
    public String Xemphieumua(Model model, HttpSession session)
    {
        NguoiMua ngmua= (NguoiMua) session.getAttribute("customer");
        List<PhieuMuaHang> dsphieumua = phieuMuaHangService.layDanhSachPhieuMuaHangTheoIDKH(ngmua.getId());
        
        model.addAttribute("dsphieumua", dsphieumua);
        return"customer/shopping-history/xem-phieu-mua";
    }
    
    @RequestMapping("xem-ct-phieu-mua/{id}")
    public String XemCtphieumua(Model model,@PathVariable("id") int id)
    {
        List<CtPhieuMuaHang> ctphieumua= phieuMuaHangService.layCtPhieuMuaHang(id);
        
        model.addAttribute("ctphieumua", ctphieumua);
        
        return "customer/shopping-history/xem-ct-phieu-mua";
    }
}
