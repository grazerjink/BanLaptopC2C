/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.admin;

import ejb.entities.Admin;
import ejb.entities.DanhGia;
import ejb.entities.PhieuMuaHang;
import ejb.entities.PhieuMuaTin;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import web.services.AdminService;
import web.services.DanhGiaService;
import web.services.PhieuMuaHangService;
import web.services.PhieuMuaTinService;

/**
 *
 * @author Vivi
 */
@Controller
@RequestMapping("admin")
public class AdminController {

    @Autowired
    AdminService adminService;
    @Autowired
    PhieuMuaTinService phieuMuaTinService;
    @Autowired
    PhieuMuaHangService phieuMuaHangService;
    @Autowired
    DanhGiaService danhGiaService;

    // Đăng nhập 
    @RequestMapping("dangnhap")
    public String dangNhap() {
        return "admin/landing/dangnhap";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(Model model,
            @RequestParam("Email") String email,
            @RequestParam("Password") String password,
            HttpSession httpSession) {
        String temp = adminService.dangNhap(email, password, httpSession);
        if (temp.equals("Đăng nhập thành công")) {
            return "redirect:/admin/index";
        }
        model.addAttribute("mess", temp);
        return "admin/landing/dangnhap";
    }

    //local/c2c/admin/index
    @RequestMapping("index")
    public String index() {
        return "admin/home/index";
    }

    // dang ky
    @RequestMapping("dang-ky")
    public String dangKy(Model model) {
        model.addAttribute("admin", new Admin());
        return "admin/home/them-nguoi-dung";
    }

    @RequestMapping(value = "dang-ky", method = RequestMethod.POST)
    public String dangKy(Model model,
            @ModelAttribute("admin") Admin admin,
            HttpSession httpSession) {
        // goi phuong thuc service 1 phan
        boolean daThem = adminService.themNguoiDung(admin);
        if (daThem) {
            model.addAttribute("message", "Thêm thành công");
        } else {
            model.addAttribute("message", "Thêm thất bại");
        }
        return "admin/home/them-nguoi-dung";
    }

    @RequestMapping("cap-nhat/{id}")
    public String capNhat(Model model,
            @PathVariable("id") Integer id) {
        model.addAttribute("admin", adminService.timNguoiDung(id));
        return "admin/home/sua-nguoi-dung";
    }

    @RequestMapping(value = "cap-nhat", method = RequestMethod.POST)
    public String capNhat(Model model,
            @ModelAttribute("admin") Admin admin) {
        // goi phuong thuc service 1 phan
        boolean daSua = adminService.capNhatNguoiDung(admin);
        if (daSua) {
            model.addAttribute("message", "Cập nhật thành công");
            return "redirect:/admin/index/";
        } else {
            model.addAttribute("message", "Cập nhật thất bại");
            return "admin/home/sua-nguoi-dung";
        }
    }
    // danh sach nguoi dung

    @RequestMapping("danhsach-nguoidung")
    public String layDanhSachND(Model model) {
        return "admin/home/danhsach-nguoidung";
    }

    // Hàm lấy danh sách người dùng
    @ModelAttribute("dsAdmin")
    public List<Admin> layDanhSachNd() {
        return adminService.layDanhSachNguoiDungKhongKhoa();
    }

    // danh sach phieu mua tin cua Merchant
    @RequestMapping("danhsach-phieumuatin")
    public String layDanhSachPhieuMuaTin(Model model) {
        model.addAttribute("mess", "Tin nhan");
        return "admin/home/danhsach-phieumuatin";
    }

    @ModelAttribute("dsPhieuMua")
    public List<PhieuMuaTin> layDanhSachPhieuMua() {
        return phieuMuaTinService.layDanhSachPhieuMua();
    }

    // Danh sach phieu mua hang
    @RequestMapping("danhsach-phieumuahang")
    public String layDanhSachHoaDon(Model model) {
        return "admin/home/danhsach-phieumuahang";
    }

    @ModelAttribute("dsPhieuMuaHang")
    public List<PhieuMuaHang> layDanhSachPhieuMuaHang() {
        return phieuMuaHangService.layDanhSachPhieuMuaHang();
    }

    // Thong ke danh gia cua Merchant
    @RequestMapping("thongke-danhgia")
    public String layThongKeDanhGia(Model model) {
        return "admin/home/thongke-danhgia";
    }

    @ModelAttribute("dsThongKeDanhGia")
    public List<DanhGia> layDSThongKeDanhGia() {
        return danhGiaService.layDSThongKeDanhGia();
    }

}
