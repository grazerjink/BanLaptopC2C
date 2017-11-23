/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.merchant.controllers;

import com.google.gson.Gson;
import com.paypal.api.payments.Payment;
import ejb.entities.NguoiBan;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.GoiTinService;
import web.services.PaymentService;
import web.services.PhieuMuaTinService;
import web.services.SoTinTonService;
import web.viewmodels.NguoiBanViewModel;

/**
 *
 * @author Winson Mac
 */
@Controller
@RequestMapping("merchant")
public class MerchantDashboardController {

    @Autowired
    SoTinTonService soTinTonService;
    @Autowired
    GoiTinService goiTinService;
    @Autowired
    PaymentService paymentService;
    @Autowired
    PhieuMuaTinService phieuMuaTinService;

    @RequestMapping("quan-ly-gian-hang")
    public String trangQuanLy() {
        return "merchant/dashboard/trang-quan-ly";
    }

    @RequestMapping("goi-tin")
    public String muaGoiTin(ModelMap model, HttpSession httpSession) {
        model.addAttribute("dsGoiTin", goiTinService.layDanhSachGoiTin());
        return "merchant/dashboard/trang-mua-goi-tin";
    }

    @RequestMapping("dang-xuat")
    public String dangXuat(HttpSession httpSession) {
        httpSession.removeAttribute("merchant");
        return "redirect:/merchant/dang-nhap/";
    }

    @RequestMapping("thanh-toan/{id}")
    public String thanhToanGoiTin(ModelMap model,
            @PathVariable("id") String id) {
        String redirectURL = paymentService.paymentWithPaypal(goiTinService.timGoiTinTheoId(id));
        if (redirectURL != null) {
            return "redirect:" + redirectURL;
        }
        model.addAttribute("error", "Lỗi hệ thống, xin vui lòng thử lại.");
        return "merchant/dashboard/trang-mua-goi-tin";
    }

    @RequestMapping("xac-nhan-thanh-toan")
    public String xacNhanThanhToanPaypal(ModelMap model,
            @RequestParam(value = "paymentId", defaultValue = "") String paymentId,
            @RequestParam(value = "PayerID", defaultValue = "") String payerId,
            HttpSession httpSession) {

        if (paymentId.isEmpty() || payerId.isEmpty()) {
            return "redirect:/merchant/goi-tin/";
        } else {
            Payment hoaDonPaypal = paymentService.completePaymentProcess(paymentId, payerId);
            String idGoiTin = hoaDonPaypal.getTransactions().get(0).getItemList().getItems().get(0).getSku();
            /// Cập nhật số tin            
            soTinTonService.capNhatSoTinDang((NguoiBan) httpSession.getAttribute("merchant"),
                    goiTinService.timGoiTinTheoId(idGoiTin));
            /// Tạo phiếu mua tin
            phieuMuaTinService.taoPhieuMuaTinQuaPayPal((NguoiBan) httpSession.getAttribute("merchant"),
                    goiTinService.timGoiTinTheoId(idGoiTin), paymentId, payerId);
            return "redirect:/merchant/xu-ly-du-lieu/";
        }
    }

    @RequestMapping("xu-ly-du-lieu")
    public String xuLyDuLieu(ModelMap model) {
        /// Hàm tạo để hệ thống cập nhật dữ liệu số tin đăng tức thì
        return "redirect:/merchant/thanh-toan-thanh-cong";
    }

    @RequestMapping("thanh-toan-thanh-cong")
    public String xacNhanThanhToanPaypalThanhCong(ModelMap model) {
        model.addAttribute("success", "Thanh toán gói tin thành công.");
        model.addAttribute("message", "Quý khách đã thanh toán gói tin thành công qua cổng thanh toán trực tuyến Paypal");
        return "merchant/dashboard/trang-xac-nhan";
    }

    @RequestMapping("xac-nhan-goi-tin/{id}")
    public String xacNhanGoiTinThanhToanTrucTiep(ModelMap model,
            @PathVariable("id") String id,
            HttpSession httpSession) {
        phieuMuaTinService.taoPhieuMuaTinTrucTiep(
                (NguoiBan) httpSession.getAttribute("merchant"), goiTinService.timGoiTinTheoId(id));
        return "redirect:/merchant/xac-nhan-thanh-cong/";
    }

    @RequestMapping("xac-nhan-thanh-cong")
    public String xacNhanGoiTinThanhToanTrucTiepThanhCong(ModelMap model) {
        model.addAttribute("success", "Xác nhận gói tin thành công.");
        model.addAttribute("message", "Quý khách đã chọn mua gói tin thành công. Vui lòng đến công ty thanh toán trực tiếp hoặc chuyển khoản qua ngân hàng.");
        return "merchant/dashboard/trang-xac-nhan";
    }

    @RequestMapping("huy-thanh-toan")
    public String huyXacNhan(ModelMap model) {
        model.addAttribute("success", "Hủy gói tin thành công.");
        model.addAttribute("message", "Quý khách đã hủy thành công thanh toán paypal với gói tin đã chọn.");
        return "merchant/dashboard/trang-xac-nhan";
    }
    
    @RequestMapping("thong-tin-ca-nhan")
    public String thongTinCaNhan(ModelMap model) {
        model.addAttribute("nguoiBan", new NguoiBanViewModel());
        return "merchant/dashboard/trang-thong-tin-ca-nhan";
    }
    
    @ResponseBody
    @RequestMapping("lay-goi-tin")
    public String layGoiTin(@RequestParam("id") String id) {
        return new Gson().toJson(goiTinService.timGoiTinTheoId(id));
    }
}
