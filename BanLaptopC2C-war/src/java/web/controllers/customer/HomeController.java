package web.controllers.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
