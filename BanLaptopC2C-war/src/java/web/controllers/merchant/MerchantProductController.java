/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.merchant;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import web.viewmodels.SanPhamViewModel;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant")
public class MerchantProductController {

    @RequestMapping("dang-tin-san-pham")
    public String dangTinSanPham(Model model) {
        model.addAttribute("sanPham", new SanPhamViewModel());
        return "merchant/dashboard/product/trang-dang-tin-san-pham";
    }
    
    @RequestMapping(value = "dang-tin-san-pham", method = RequestMethod.POST)
    public String dangTinSanPham(Model model, 
            @RequestParam("fileUploads[]") MultipartFile[] fileUploads,
            @ModelAttribute("sanPham") @Valid SanPhamViewModel sanPhamVM,
            BindingResult errors) {
        if(!errors.hasErrors()) {            
            model.addAttribute("sanPham", new SanPhamViewModel());
        }
        else {            
            model.addAttribute("serverErrors", "Khai báo thông tin sản phẩm không hợp lệ.<br>Xin vui lòng kiểm tra lại.");
        }
        return "merchant/dashboard/product/trang-dang-tin-san-pham";
    }
    
}
