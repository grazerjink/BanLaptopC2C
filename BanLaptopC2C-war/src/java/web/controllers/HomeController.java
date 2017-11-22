package web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import web.services.HangSanXuatService;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    HangSanXuatService hangSanXuatService;
    
    @RequestMapping(value = {"", "index"})
    public String index() {
        return "user/home/index";
    }

    @RequestMapping("single")
    public String single() {
        return "user/home/single";
    }

    @RequestMapping("demo")
    public String demoListBrands(ModelMap model) {
        model.addAttribute("dsHSX",hangSanXuatService.getList());
        return "user/home/demo";
    }
}
