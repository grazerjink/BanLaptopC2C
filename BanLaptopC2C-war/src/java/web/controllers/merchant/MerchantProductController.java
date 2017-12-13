/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.merchant;

import ejb.entities.CardManHinh;
import ejb.entities.Cpu;
import ejb.entities.DoPhanGiai;
import ejb.entities.HangSanXuat;
import ejb.entities.KichThuocManHinh;
import ejb.entities.LoaiManHinh;
import ejb.entities.NguoiBan;
import ejb.entities.OCung;
import ejb.entities.Ram;
import ejb.entities.SanPham;
import java.util.List;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import web.services.CardManHinhService;
import web.services.CpuService;
import web.services.DoPhanGiaiService;
import web.services.HangSanXuatService;
import web.services.KichThuocManHinhService;
import web.services.LoaiManHinhService;
import web.services.NguoiBanService;
import web.services.OCungService;
import web.services.RamService;
import web.services.SanPhamService;
import web.viewmodels.SanPhamViewModel;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant")
public class MerchantProductController {

    @Autowired
    HangSanXuatService hangSanXuatService;
    @Autowired
    RamService ramService;
    @Autowired
    CpuService cpuService;
    @Autowired
    DoPhanGiaiService doPhanGiaiService;
    @Autowired
    LoaiManHinhService loaiManHinhService;
    @Autowired
    CardManHinhService cardManHinhService;
    @Autowired
    OCungService oCungService;
    @Autowired
    KichThuocManHinhService kichThuocManHinhService;
    @Autowired
    NguoiBanService nguoiBanService;
    @Autowired
    SanPhamService sanPhamService;
    @Autowired
    ServletContext app;

    @RequestMapping("cap-nhat-he-thong")
    public String lamMoiHeThong(Model model) {
        model.addAttribute("success", "Thêm sản phẩm thành công.");
        return "redirect:/merchant/danh-sach-san-pham/";
    }

    @RequestMapping("danh-sach-san-pham")
    public String danhSachSanPham(Model model, HttpSession httpSession) {
        NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsSanPham", sanPhamService.layDanhSachSanPhamTheoNguoiBan(nguoiBan.getId()));
        return "merchant/dashboard/product/trang-danh-sach-san-pham";
    }

    @RequestMapping("dang-tin-san-pham")
    public String dangTinSanPham(Model model, HttpSession httpSession) {
        NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
        if (!nguoiBan.getTrangThai()) {
            model.addAttribute("error", "Tài khoản đã bị tạm khóa.");
            return "redirect:/merchant/danh-sach-san-pham/";
        }
        model.addAttribute("sanPham", new SanPhamViewModel());
        return "merchant/dashboard/product/trang-dang-tin-san-pham";
    }

    @RequestMapping(value = "dang-tin-san-pham", method = RequestMethod.POST)
    public String dangTinSanPham(Model model,
            HttpSession httpSession,
            @RequestParam("fileUploads[]") MultipartFile[] fileUploads,
            @ModelAttribute("sanPham") @Valid SanPhamViewModel sanPhamVM,
            BindingResult errors) {
        if (!errors.hasErrors()) {
            String path = app.getRealPath("/assets/merchant/images/products/");
            if (nguoiBanService.dangTinSanPham(sanPhamVM, fileUploads, httpSession, model, path)) {
                return "redirect:/merchant/cap-nhat-he-thong/";
            }
        } else {
            model.addAttribute("serverErrors", "Khai báo thông tin sản phẩm không hợp lệ.<br>Xin vui lòng kiểm tra lại.");
        }
        return "merchant/dashboard/product/trang-dang-tin-san-pham";
    }

    @ModelAttribute("dsHangSanXuat")
    public List<HangSanXuat> layDanhSachHangSanXuat() {
        return hangSanXuatService.layDanhSachHangSanXuat();
    }

    @ModelAttribute("dsRam")
    public List<Ram> layDanhSachRam() {
        return ramService.layDanhSachRam();
    }

    @ModelAttribute("dsCpu")
    public List<Cpu> layDanhSachCpu() {
        return cpuService.layDanhSachCpu();
    }

    @ModelAttribute("dsCardManHinh")
    public List<CardManHinh> layDanhSachCardManHinh() {
        return cardManHinhService.layDanhSachCardManHinh();
    }

    @ModelAttribute("dsOCung")
    public List<OCung> layDanhSachOCung() {
        return oCungService.layDanhSachOCung();
    }

    @ModelAttribute("dsLoaiManHinh")
    public List<LoaiManHinh> layDanhSachLoaiManHinh() {
        return loaiManHinhService.layDanhSachLoaiManHinh();
    }

    @ModelAttribute("dsDoPhanGiai")
    public List<DoPhanGiai> layDanhSachDoPhanGiai() {
        return doPhanGiaiService.layDanhSachDoPhanGiai();
    }

    @ModelAttribute("dsKichThuocManHinh")
    public List<KichThuocManHinh> layDanhSachKichThuocManHinh() {
        return kichThuocManHinhService.layDanhSachKichThuocManHinh();
    }

}
