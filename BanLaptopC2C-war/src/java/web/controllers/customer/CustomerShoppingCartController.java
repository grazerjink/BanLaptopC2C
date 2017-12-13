package web.controllers.customer;

import ejb.entities.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.ShoppingCart;
/**
 *
 * @author Winson Mac
 */
@Controller
public class CustomerShoppingCartController {

    @Autowired
    ShoppingCart cart;

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

}
