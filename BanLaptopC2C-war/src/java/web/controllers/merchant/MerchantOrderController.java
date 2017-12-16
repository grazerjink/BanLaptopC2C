/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.merchant;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant")
public class MerchantOrderController {
    
    @RequestMapping("don-dat-hang")
    public String donDatHang(Model model) { 
        
        return "merchant/dashboard/order/trang-don-hang";
    }
    
}
