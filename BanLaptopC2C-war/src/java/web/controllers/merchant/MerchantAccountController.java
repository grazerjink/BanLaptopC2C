/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controllers.merchant;

import com.google.gson.Gson;
import com.paypal.api.payments.Payment;
import ejb.entities.NguoiBan;
import ejb.entities.PhuongXa;
import ejb.entities.QuanHuyen;
import ejb.entities.ThanhPho;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.services.GoiTinService;
import web.services.NguoiBanService;
import web.services.PaymentService;
import web.services.PhieuMuaTinService;
import web.services.PhuongXaService;
import web.services.QuanHuyenService;
import web.services.SoTinTonService;
import web.services.ThanhPhoService;
import web.viewmodels.NguoiBanViewModel;

/**
 *
 * @author Winson Mac
 *
 * Controller xử lý những gì liên quan tới merchant account
 */
@Controller
@RequestMapping("merchant")
public class MerchantAccountController {

    @Autowired
    SoTinTonService soTinTonService;
    @Autowired
    GoiTinService goiTinService;
    @Autowired
    PaymentService paymentService;
    @Autowired
    PhieuMuaTinService phieuMuaTinService;
    @Autowired
    QuanHuyenService quanHuyenService;
    @Autowired
    ThanhPhoService thanhPhoService;
    @Autowired
    PhuongXaService phuongXaService;
    @Autowired
    NguoiBanService nguoiBanService;

    /**
     * Thực hiện những xử lí khi user đăng xuất
     */
    @RequestMapping("dang-xuat")
    public String dangXuat(HttpSession httpSession) {
        httpSession.removeAttribute("merchant");
        return "redirect:/merchant/dang-nhap/";
    }

    /**
     * Hiển thị trang mua gói tin cho merchant
     */
    @RequestMapping("goi-tin")
    public String muaGoiTin(ModelMap model, HttpSession httpSession) {
        model.addAttribute("dsGoiTin", goiTinService.layDanhSachGoiTin());
        return "merchant/dashboard/account/trang-mua-goi-tin";
    }

    /**
     * Xử lí mua gói tin khi merchant chọn thanh toán bằng Paypal
     */
    @RequestMapping("thanh-toan/{id}")
    public String thanhToanGoiTin(ModelMap model,
            @PathVariable("id") String id) {
        try {
            String redirectURL = paymentService.paymentWithPaypal(goiTinService.timGoiTinTheoId(id));
            if (redirectURL != null) {
                return "redirect:" + redirectURL;
            } else {
                model.addAttribute("error", "Hệ thống bảo trì, xin vui lòng thử lại.");
            }
        } catch (Exception ex) {
            model.addAttribute("error", "Lỗi hệ thống, xin vui lòng thử lại.");
        }
        return "merchant/dashboard/account/trang-mua-goi-tin";
    }

    /**
     * Khi giao dịch thành công ở trang paypal, sẽ chuyển tới trang này rùi lưu
     * lại id liên quan đến hóa đơn giao dịch đó
     */
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

    /**
     * Nhằm update trạng thái số tin đăng ngay tức khắc nên tạo hàm phụ này để
     * qua 1 redirect để server lấy đc số tin đăng mới nhất.
     */
    @RequestMapping("xu-ly-du-lieu")
    public String xuLyDuLieu(ModelMap model) {
        /// Hàm tạo để hệ thống cập nhật dữ liệu số tin đăng tức thì
        return "redirect:/merchant/thanh-toan-thanh-cong";
    }

    /**
     * Hiển thị những thông báo về trạng thái sau khi thực hiện giao dịch gói
     * tin
     */
    @RequestMapping("thanh-toan-thanh-cong")
    public String xacNhanThanhToanPaypalThanhCong(ModelMap model) {
        model.addAttribute("success", "Thanh toán gói tin thành công.");
        model.addAttribute("message", "Quý khách đã thanh toán gói tin thành công qua cổng thanh toán trực tuyến Paypal");
        return "merchant/dashboard/account/trang-xac-nhan";
    }

    /**
     * Khi merchant chọn hủy giao dịch tại trang paypal sẽ được chuyển tới trang
     * này thông báo trạng thái là hủy giao dịch cho merchant biết
     */
    @RequestMapping("huy-thanh-toan")
    public String huyXacNhan(ModelMap model) {
        model.addAttribute("success", "Hủy gói tin thành công.");
        model.addAttribute("message", "Quý khách đã hủy thành công thanh toán paypal với gói tin đã chọn.");
        return "merchant/dashboard/account/trang-xac-nhan";
    }

    /**
     * Xử lí yêu cầu khi merchant mua gói tin bằng cách trả trực tiếp hay thanh
     * toán thông qua ngân hàng
     */
    @RequestMapping("xac-nhan-goi-tin/{id}")
    public String xacNhanGoiTinThanhToanTrucTiep(ModelMap model,
            @PathVariable("id") String id,
            HttpSession httpSession) {
        phieuMuaTinService.taoPhieuMuaTinTrucTiep(
                (NguoiBan) httpSession.getAttribute("merchant"), goiTinService.timGoiTinTheoId(id));
        return "redirect:/merchant/xac-nhan-thanh-cong/";
    }

    /**
     * Hiển thị thông báo trạng thái khi thực hiện chọn mua thanh toán gói tin
     * bằng cách trực tiếp hoặc qua ngân hàng
     */
    @RequestMapping("xac-nhan-thanh-cong")
    public String xacNhanGoiTinThanhToanTrucTiepThanhCong(ModelMap model) {
        model.addAttribute("success", "Xác nhận gói tin thành công.");
        model.addAttribute("message", "Quý khách đã chọn mua gói tin thành công. Vui lòng đến công ty thanh toán trực tiếp hoặc chuyển khoản qua ngân hàng.");
        return "merchant/dashboard/account/trang-xac-nhan";
    }

    /**
     * Hiển thị thông tin cá nhân của merchant lên trang thông tin cá nhân
     */
    @RequestMapping("thong-tin-ca-nhan")
    public String thongTinCaNhan(ModelMap model, HttpSession httpSession) {
        NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
        List<QuanHuyen> dsQuanHuyen = quanHuyenService.layDanhSachQuanHuyenTheoThanhPho(nguoiBan.getIdThanhPho().getId());
        List<PhuongXa> dsPhuongXa = phuongXaService.layDanhSachPhuongXaTheoQuanHuyen(nguoiBan.getIdQuanHuyen().getId());
        model.addAttribute("nguoiBan", new NguoiBanViewModel());
        model.addAttribute("dsQuanHuyen", dsQuanHuyen);
        model.addAttribute("dsPhuongXa", dsPhuongXa);
        return "merchant/dashboard/account/trang-thong-tin-ca-nhan";
    }
    
    /**
     * Xử lí thay đổi thông tin cá nhân cho NguoiBan
     */
    @RequestMapping(value="cap-nhat-thong-tin", method = RequestMethod.POST)
    public String capNhatThongTinCaNhan(ModelMap model,
            HttpSession httpSession,            
            @ModelAttribute("nguoiBan") @Valid NguoiBanViewModel nguoiBanVM,
            BindingResult errors) {
        if (errors.hasErrors()) { 
            model.addAttribute("serverErrors", "Thông tin thay đổi không hợp lệ.");
        } else {
           nguoiBanService.capNhatThongTin(nguoiBanVM, model, httpSession);
        }        
        return "redirect:/merchant/thong-tin-ca-nhan/";
    }
    
    /**
     * Xử lí thay đổi mật khẩu 
     */
    @RequestMapping(value="doi-mat-khau", method = RequestMethod.POST)
    public String doiMatKhau(@RequestParam("matKhauCu") String matKhauCu,
            @RequestParam("matKhauMoi") String matKhauMoi,
            @RequestParam("matKhauXacNhan") String matKhauXacNhan,
            HttpSession httpSession,
            ModelMap model) {
        nguoiBanService.doiMatKhau(matKhauCu, matKhauMoi, matKhauXacNhan, model, httpSession);
        return "redirect:/merchant/thong-tin-ca-nhan/";
    }

    @ModelAttribute("dsThanhPho")
    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoService.layDanhSachThanhPho();
    }

    @ResponseBody
    @RequestMapping("lay-goi-tin")
    public String layGoiTin(@RequestParam("id") String id) {
        return new Gson().toJson(goiTinService.timGoiTinTheoId(id));
    }
}
