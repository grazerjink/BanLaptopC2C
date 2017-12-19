/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.customer;

import ejb.entities.HangSanXuat;
import ejb.entities.SanPham;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import web.services.HangSanXuatService;
import web.services.NguoiBanService;
import web.services.SanPhamService;
import web.viewmodels.SanPhamSearchViewModel;

/**
 *
 * @author Administrator
 */
@Controller
public class CustomerSearchProductController {
    @Autowired
    SanPhamService sanPhamService;
    @Autowired
    HangSanXuatService hangService;
    @Autowired
    NguoiBanService nguoiBanService;
    
    
    @RequestMapping(value="tim-kiem-san-pham", method = RequestMethod.POST)
    public String Sanpham(Model model, @RequestParam("tensp") String tensp,
            @RequestParam("country") String mahang)
    {
        
        SanPhamSearchViewModel sanphamVM = new SanPhamSearchViewModel();
        sanphamVM.setTen(tensp);
        sanphamVM.setHang(mahang);
        sanphamVM.setGia(0);
        sanphamVM.setNguoiBan(0);
        
        List<SanPham> dssanpham= sanPhamService.timkiemsanphamnangcao(sanphamVM);
        
        model.addAttribute("dssanphamkt", dssanpham);
        model.addAttribute("dsnguoiban", nguoiBanService.layDanhSachNguoiBan());
        model.addAttribute("dsHangSanXuat", hangService.layDanhSachHangSanXuat());
        model.addAttribute("sanphamVM", new SanPhamSearchViewModel());
        
        return "customer/home/tim-kiem-san-pham";
    }
    
    @RequestMapping(value="tim-kiem-san-pham-nang-cao", method = RequestMethod.POST)
    public String Sanpham(Model model, @ModelAttribute("sanphamVM") SanPhamSearchViewModel sanphamVM)
    {
      
        List<SanPham> dssanpham= sanPhamService.timkiemsanphamnangcao(sanphamVM);
        
        model.addAttribute("dssanphamkt", dssanpham);
        model.addAttribute("dsHangSanXuat", hangService.layDanhSachHangSanXuat());
        model.addAttribute("dsnguoiban", nguoiBanService.layDanhSachNguoiBan());
        model.addAttribute("sanphamVM", sanphamVM);
        return "customer/home/tim-kiem-san-pham";
    }
    
     @RequestMapping(value="tim-kiem-san-pham-nang-cao")
    public String Sanpham(Model model)
    {
      
        List<SanPham> dssanpham= sanPhamService.layTatCaSanPham();
        
        model.addAttribute("dssanphamkt", dssanpham);
        model.addAttribute("dsHangSanXuat", hangService.layDanhSachHangSanXuat());
        model.addAttribute("dsnguoiban", nguoiBanService.layDanhSachNguoiBan());
        model.addAttribute("sanphamVM",new SanPhamSearchViewModel());
        return "customer/home/tim-kiem-san-pham";
    }
}
