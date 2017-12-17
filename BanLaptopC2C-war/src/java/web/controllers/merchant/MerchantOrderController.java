/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.merchant;

import com.google.gson.Gson;
import ejb.entities.NguoiBan;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.commons.Constants;
import web.services.PhieuMuaHangService;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant/don-dat-hang")
public class MerchantOrderController {

    @Autowired
    PhieuMuaHangService phieuMuaHangService;

    @RequestMapping("moi")
    public String donDatHangMoi(Model model, HttpSession httpSession) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangMoi(ng.getId()));
        return "merchant/dashboard/order/trang-don-hang-moi";
    }

    @RequestMapping("moi/loc-du-lieu")
    public String locDonHangMoiTheoThoiGian(Model model,
            HttpSession httpSession,
            @RequestParam("batDau") Date batDau,
            @RequestParam("ketThuc") Date ketThuc) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangMoiTheoKhoangThoiGian(ng.getId(), batDau, ketThuc));
        return "merchant/dashboard/order/trang-don-hang-moi";
    }

    @RequestMapping("dang-giao")
    public String donDatHangDangGiao(Model model, HttpSession httpSession) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangDangGiao(ng.getId()));
        return "merchant/dashboard/order/trang-don-hang-dang-giao";
    }

    @RequestMapping("dang-giao/loc-du-lieu")
    public String locDonHangDangGiaoTheoThoiGian(Model model,
            HttpSession httpSession,
            @RequestParam("batDau") Date batDau,
            @RequestParam("ketThuc") Date ketThuc) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangDangGiaoTheoKhoangThoiGian(ng.getId(), batDau, ketThuc));
        return "merchant/dashboard/order/trang-don-hang-moi";
    }

    @RequestMapping("thanh-cong")
    public String donDatHangThanhCong(Model model, HttpSession httpSession) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangThanhCong(ng.getId()));
        return "merchant/dashboard/order/trang-don-hang-thanh-cong";
    }

    @RequestMapping("thanh-cong/loc-du-lieu")
    public String locDonHangThanhCongTheoThoiGian(Model model,
            HttpSession httpSession,
            @RequestParam("batDau") Date batDau,
            @RequestParam("ketThuc") Date ketThuc) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangThanhCongTheoKhoangThoiGian(ng.getId(), batDau, ketThuc));
        return "merchant/dashboard/order/trang-don-hang-moi";
    }

    @RequestMapping("huy")
    public String donDatHangHuy(Model model, HttpSession httpSession) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangHuy(ng.getId()));
        return "merchant/dashboard/order/trang-don-hang-huy";
    }

    @RequestMapping("huy/loc-du-lieu")
    public String locDonHangHuyTheoThoiGian(Model model,
            HttpSession httpSession,
            @RequestParam("batDau") Date batDau,
            @RequestParam("ketThuc") Date ketThuc) {
        NguoiBan ng = (NguoiBan) httpSession.getAttribute("merchant");
        model.addAttribute("dsDonHang", phieuMuaHangService.layDanhSachDonHangDaHuyTheoKhoangThoiGian(ng.getId(), batDau, ketThuc));
        return "merchant/dashboard/order/trang-don-hang-moi";
    }

    @RequestMapping("moi/cap-nhat-tinh-trang")
    @ResponseBody
    public String capNhatHoaDonMoi(Model model,
            @RequestParam("idTinhTrang") String idTinhTrang,
            @RequestParam("idDonHang") Integer idDonHang) {
        if (!idTinhTrang.equals(Constants.TT_DANG_XU_LY)) {
            phieuMuaHangService.capNhatTinhTrangDonHang(idDonHang, idTinhTrang);
        }
        return new Gson().toJson(200);
    }

    @RequestMapping("dang-giao/cap-nhat-tinh-trang")
    @ResponseBody
    public String capNhatHoaDonDangGiao(Model model,
            @RequestParam("idTinhTrang") String idTinhTrang,
            @RequestParam("idDonHang") Integer idDonHang) {
        if (!idTinhTrang.equals(Constants.TT_DANG_GIAO)) {
            phieuMuaHangService.capNhatTinhTrangDonHang(idDonHang, idTinhTrang);
        }
        return new Gson().toJson(200);
    }

}
