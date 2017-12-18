package web.controllers.customer;

import com.google.gson.Gson;
import ejb.business.QuanHuyenBusiness;
import ejb.entities.NguoiMua;
import ejb.entities.PhieuMuaHang;
import ejb.entities.QuanHuyen;
import ejb.entities.SanPham;
import ejb.entities.ThanhPho;
import ejb.sessions.ThanhPhoFacade;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.PhieuMuaHangService;
import web.services.PhuongXaService;
import web.services.QuanHuyenService;
import web.services.ShoppingCart;
import web.services.ThanhPhoService;
/**
 *
 * @author Winson Mac
 */
@Controller
public class CustomerShoppingCartController {



    @Autowired
    ShoppingCart cart;
    @Autowired
    ThanhPhoService thanhPhoService;
    @Autowired
    QuanHuyenService quanHuyenService;
    @Autowired
    PhuongXaService phuongXaService;
    @Autowired
    PhieuMuaHangService phieuMuaHangService;
    
    @RequestMapping("mua")
    @ResponseBody
    public String themSanPhamVaoGioHang(@RequestParam("id") Integer id) {
        cart.themGioHang(id);
        String json = String.format("[%d, %.2f]", cart.getTongSoLuong(), cart.getTongTien());
        
        return json;
    }

    @RequestMapping("gio-hang")
    public String view(Model model) {
        model.addAttribute("cart", cart);
        return "customer/shopping-cart/gio-hang";
    }

    @RequestMapping("xoa")
    @ResponseBody
    public String xoaSanPhamKhoiGioHang(@RequestParam("id") Integer id) {
        cart.xoaSanPhamTrongGioHang(id);
        String json = String.format("[%d, %.2f]", cart.getTongSoLuong(), cart.getTongTien());
        return json;
    }

    @RequestMapping("cap-nhat-so-luong")
    @ResponseBody
    public String capNhatSoLuong(@RequestParam("id") Integer id,
            @RequestParam("soLuongMoi") Integer soLuongMoi) {
        cart.capNhatSoLuongSanPham(id, soLuongMoi);
        SanPham p = cart.laySanPhamTheoId(id);
        double itemAmount = p.getGiaBan()* p.getTonKho();
        String json = String.format("[%d, %.2f, %.2f]", cart.getTongSoLuong(), cart.getTongTien(), itemAmount);
        return json;
    }

    @RequestMapping("xoa-gio-hang")
    public String clear(Model model) {
        cart.xoaGioHang();
        model.addAttribute("cart", cart);
        return "customer/shopping-cart/gio-hang";
    }
    
    @RequestMapping("thanh-toan")
    public String thanhToan(Model model, HttpSession session){
        
        NguoiMua ngmua= (NguoiMua) session.getAttribute("customer");
        PhieuMuaHang phieumuahang = new PhieuMuaHang();
        phieumuahang.setEmailNhan(ngmua.getEmail());
        phieumuahang.setDiaChiGiao(ngmua.getDiaChi());
        phieumuahang.setIdNguoiMua(ngmua);
        phieumuahang.setIdThanhPho(ngmua.getIdThanhPho());
        phieumuahang.setIdPhuongXa(ngmua.getIdPhuongXa());
        phieumuahang.setIdQuanHuyen(ngmua.getIdQuanHuyen());
        phieumuahang.setSoDienThoai(ngmua.getSoDienThoai());
        phieumuahang.setTenNguoiNhan(ngmua.getHoTen());
        phieumuahang.setEmailNhan(ngmua.getEmail());
        phieumuahang.setTongTien((float) cart.getTongTien());
        phieumuahang.setNgayDatHang(new Date());
        
        session.setAttribute("phieuMuaHang", phieumuahang);
        model.addAttribute("cart", cart);
        model.addAttribute("phieuMuaHang",phieumuahang);
        
        
        return "customer/shopping-cart/thanh-toan";
        
    }
    
    @RequestMapping(value = "thanh-toan", method = RequestMethod.POST)
    public String Thanhtoan(Model model, @ModelAttribute("phieuMuaHang") PhieuMuaHang phieuMuaHang,
            HttpSession session)
    {
        PhieuMuaHang pmh = (PhieuMuaHang) session.getAttribute("phieuMuaHang");
        
        pmh.setIdPhuongXa(phieuMuaHang.getIdPhuongXa());
        pmh.setIdQuanHuyen(phieuMuaHang.getIdQuanHuyen());
        pmh.setIdThanhPho(phieuMuaHang.getIdThanhPho());
        pmh.setTenNguoiNhan(phieuMuaHang.getTenNguoiNhan());
        pmh.setSoDienThoai(phieuMuaHang.getSoDienThoai());
        pmh.setDiaChiGiao(phieuMuaHang.getDiaChiGiao());
        pmh.setGhiChu(phieuMuaHang.getGhiChu());
        
            if(phieuMuaHang.getIdPhuongXa()==null||phieuMuaHang.getIdQuanHuyen()==null||
                    phieuMuaHang.getIdQuanHuyen()==null||phieuMuaHang.getDiaChiGiao()==null)
            {
                model.addAttribute("cart", cart);
                model.addAttribute("phieuMuaHang",phieuMuaHang);
                model.addAttribute("errormes", "Xin điền địa chỉ cụ thể");
            }
            else
            {
            phieuMuaHangService.themPhieuMuaHang(pmh,cart);
            
            cart.xoaGioHang();
            model.addAttribute("mes", "Đặt hàng thành công!");
            }
        
        
        return "customer/shopping-cart/thanh-toan";
    }
    
    @ModelAttribute("dsThanhPho")
    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoService.layDanhSachThanhPho();
    }
    
    @RequestMapping("quan-huyen")
    @ResponseBody
    public String layQuanHuyen(Model model,@RequestParam("id") Integer id){
        return new Gson().toJson(quanHuyenService.layDanhSachTenTheoThanhPho(id));
    }

    @ResponseBody
    @RequestMapping("phuong-xa")
    public String dsPhuongXaTheoQuanHuyen(@RequestParam("id") Integer id) {
        return new Gson().toJson(phuongXaService.layDanhSachTenTheoQuanHuyen(id));
    }
    
}
