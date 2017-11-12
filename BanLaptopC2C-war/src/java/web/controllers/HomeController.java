package web.controllers;

import ejb.entities.HangSanXuat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.services.HangSanXuatService;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    HangSanXuatService hangSanXuatService;

    @RequestMapping(value = {"", "index"})
    public String index() {
        return "customer/home/index";
    }

    @RequestMapping("single")
    public String single() {
        return "customer/home/single";
    }

    @RequestMapping("demo-list")
    public String demoListBrands(ModelMap model) {
        model.addAttribute("dsHSX", hangSanXuatService.layDanhSachHangSanXuat());
        return "customer/demo/demo-list";
    }

    @RequestMapping("demo-insert")
    public String demoInsert(ModelMap model) {
        model.addAttribute("hsx", new HangSanXuat());
        return "customer/demo/demo-insert";
    }

    @RequestMapping(value = "demo-insert", method = RequestMethod.POST)
    public String demoInsert(ModelMap model,
            @ModelAttribute("hsx") HangSanXuat hangSanXuat) {
        if (hangSanXuatService.themHangSanXuat(hangSanXuat)) {
            model.addAttribute("message", "Thêm mới thành công");
        } else {
            model.addAttribute("message", "Thêm mới thất bại");
        }
        return "customer/demo/demo-insert";
    }
    
    @RequestMapping("demo-update/{id}")
    public String demoUpdate(ModelMap model,
            @PathVariable("id") String id) {
        model.addAttribute("hsx", hangSanXuatService.tim(id));
        return "customer/demo/demo-update";
    }

    @RequestMapping(value = "demo-update", method = RequestMethod.POST)
    public String demoUpdate(ModelMap model,
            @ModelAttribute("hsx") HangSanXuat hangSanXuat) {
        if (hangSanXuatService.capNhatHangSanXuat(hangSanXuat)) {
            model.addAttribute("message", "Cập nhật thành công");
        } else {
            model.addAttribute("message", "Cập nhật thất bại");
        }
        return "customer/demo/demo-update";
    }
}
