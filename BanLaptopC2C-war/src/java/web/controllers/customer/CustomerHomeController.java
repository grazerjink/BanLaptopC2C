package web.controllers.customer;

import ejb.entities.SanPham;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import web.services.SanPhamService;

@Controller
@RequestMapping("/")
public class CustomerHomeController {

    @Autowired
    SanPhamService sanPhamService;

    @RequestMapping(value = {"", "index"})
    public String trangChu() {
        return "customer/home/trang-chu";
    }

    @RequestMapping("chi-tiet/{id}")
    public String chiTiet(Model model, @PathVariable Integer id) {
        SanPham sp = sanPhamService.timSanPhamTheoId(id);
        model.addAttribute("sp", sp);
        return "customer/home/chi-tiet";
    }
    
    @ModelAttribute("dsSanPham")
    public List<SanPham> layTatCaSanPham() {
        return sanPhamService.layTatCaSanPham();
    }
}
