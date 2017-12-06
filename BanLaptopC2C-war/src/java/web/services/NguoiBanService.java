/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.NguoiBanBusiness;
import ejb.business.SanPhamBusiness;
import ejb.business.SoTinTonBusiness;
import ejb.entities.HinhAnhSanPham;
import ejb.entities.NguoiBan;
import ejb.entities.SanPham;
import ejb.entities.SoTinTon;
import ejb.entities.ThongSoKiThuat;
import ejb.sessions.CardManHinhFacade;
import ejb.sessions.CpuFacade;
import ejb.sessions.DoPhanGiaiFacade;
import ejb.sessions.HangSanXuatFacade;
import ejb.sessions.HinhAnhSanPhamFacade;
import ejb.sessions.KichThuocManHinhFacade;
import ejb.sessions.LoaiManHinhFacade;
import ejb.sessions.NguoiBanFacade;
import ejb.sessions.OCungFacade;
import ejb.sessions.PhuongXaFacade;
import ejb.sessions.QuanHuyenFacade;
import ejb.sessions.RamFacade;
import ejb.sessions.SanPhamFacade;
import ejb.sessions.SoTinTonFacade;
import ejb.sessions.ThanhPhoFacade;
import ejb.sessions.ThongSoKiThuatFacade;
import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.UserTransaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;
import web.commons.EncryptHelper;
import web.commons.LookupFactory;
import web.commons.RandomString;
import web.viewmodels.EntityMapping;
import web.viewmodels.NguoiBanViewModel;
import web.viewmodels.SanPhamViewModel;

/**
 *
 * @author Winson Mac
 */
@Component
public class NguoiBanService {
    
    @Autowired
    MailerService mailerService;
    
    UserTransaction tx = LookupFactory.lookupUserTransaction();
    SoTinTonFacade soTinTonFacade = (SoTinTonFacade) LookupFactory.lookupBeanFacade("SoTinTonFacade");
    SoTinTonBusiness soTinTonBusiness = (SoTinTonBusiness) LookupFactory.lookupBeanBusiness("SoTinTonBusiness");
    HinhAnhSanPhamFacade hinhAnhSanPhamFacade = (HinhAnhSanPhamFacade) LookupFactory.lookupBeanFacade("HinhAnhSanPhamFacade");
    SanPhamBusiness sanPhamBusiness = (SanPhamBusiness) LookupFactory.lookupBeanBusiness("SanPhamBusiness");
    SanPhamFacade sanPhamFacade = (SanPhamFacade) LookupFactory.lookupBeanFacade("SanPhamFacade");
    HangSanXuatFacade hangSanXuatFacade = (HangSanXuatFacade) LookupFactory.lookupBeanFacade("HangSanXuatFacade");
    ThanhPhoFacade thanhPhoFacade = (ThanhPhoFacade) LookupFactory.lookupBeanFacade("ThanhPhoFacade");
    QuanHuyenFacade quanHuyenFacade = (QuanHuyenFacade) LookupFactory.lookupBeanFacade("QuanHuyenFacade");
    PhuongXaFacade phuongXaFacade = (PhuongXaFacade) LookupFactory.lookupBeanFacade("PhuongXaFacade");
    NguoiBanBusiness nguoiBanBusiness = (NguoiBanBusiness) LookupFactory.lookupBeanBusiness("NguoiBanBusiness");
    NguoiBanFacade nguoiBanFacade = (NguoiBanFacade) LookupFactory.lookupBeanFacade("NguoiBanFacade");
    CardManHinhFacade cardManHinhFacade = (CardManHinhFacade) LookupFactory.lookupBeanFacade("CardManHinhFacade");
    DoPhanGiaiFacade doPhanGiaiFacade = (DoPhanGiaiFacade) LookupFactory.lookupBeanFacade("DoPhanGiaiFacade");
    LoaiManHinhFacade loaiManHinhFacade = (LoaiManHinhFacade) LookupFactory.lookupBeanFacade("LoaiManHinhFacade");
    KichThuocManHinhFacade kichThuocManHinhFacade = (KichThuocManHinhFacade) LookupFactory.lookupBeanFacade("KichThuocManHinhFacade");
    CpuFacade cpuFacade = (CpuFacade) LookupFactory.lookupBeanFacade("CpuFacade");
    RamFacade ramFacade = (RamFacade) LookupFactory.lookupBeanFacade("RamFacade");
    OCungFacade oCungFacade = (OCungFacade) LookupFactory.lookupBeanFacade("OCungFacade");
    ThongSoKiThuatFacade thongSoKiThuatFacade = (ThongSoKiThuatFacade) LookupFactory.lookupBeanFacade("ThongSoKiThuatFacade");
    
    public boolean dangKyThongTin(ModelMap model, NguoiBanViewModel nguoiBanVM,
            HttpServletRequest req) {
        if (nguoiBanVM.getMatKhau().equals(nguoiBanVM.getMatKhauXacNhan())) {
            if (nguoiBanBusiness.timTheoCMND(nguoiBanVM.getCmnd()) != null) {
                model.addAttribute("error", "CMND đã được đăng ký rồi.");
                return false;
            } else if (nguoiBanBusiness.timTheoEmail(nguoiBanVM.getEmail()) != null) {
                model.addAttribute("error", "Email đã được đăng ký rồi.");
                return false;
            } else {
                try {
                    NguoiBan nguoiBan = EntityMapping.convertFrom(nguoiBanVM);
                    nguoiBan.setMatKhau(EncryptHelper.encrypt(nguoiBanVM.getMatKhau()));
                    nguoiBan.setLanDauMuaTin(true);
                    nguoiBan.setSoLanCanhCao(0);
                    nguoiBan.setSoLanDanhGia(0);
                    nguoiBan.setSoLanDangTin(0);
                    nguoiBan.setTrangThai(true);
                    nguoiBan.setKichHoat(false);
                    try {
                        String url = req.getRequestURL().toString().replace("dang-ky", "activate/" + nguoiBan.getId());
                        String to = nguoiBan.getEmail();
                        String subject = "Chúc mừng bạn đã ký thành trở thành người bán hàng với V2Q MALL";
                        String body = "Vui lòng đến trụ sợ V2Q MALL xác thực hoặc gửi mail với những thông tin sau đây: <br>"
                                + "<ul>"
                                + "<li>Chứng minh nhân dân</li>"
                                + "<li>....................</li>"
                                + "</ul>"
                                + "<hr>";
                        mailerService.send(to, subject, body);
                    } catch (Exception e) {
                        model.addAttribute("error", "Lỗi hệ thống xin vui lòng thử lại sau.");
                        return false;
                    }
                    nguoiBanFacade.create(nguoiBan);
                    model.addAttribute("success", "Đăng ký tài khoản thành công.<br>Vui lòng kiểm tra hộp thư để kích hoạt tài khoản.");
                    return true;
                } catch (Exception ex) {
                    model.addAttribute("error", "Đăng ký thất bại.");
                    return false;
                }
            }
        } else {
            model.addAttribute("error", "Mật khẩu xác nhận không khớp.");
            return false;
        }
    }
    
    public boolean dangNhapHeThong(HttpSession httpSession, ModelMap model, NguoiBanViewModel nguoiBanVM) {
        try {
            NguoiBan nguoiBan = nguoiBanBusiness.timTheoEmail(nguoiBanVM.getEmail());
            
            String matKhau = EncryptHelper.encrypt(nguoiBanVM.getMatKhau());
            if (nguoiBan.getMatKhau().equals(matKhau)) {
                if (!nguoiBan.getTrangThai()) {
                    model.addAttribute("error", "Tài khoản đã bị tạm khóa.");
                    return false;
                } else if (!nguoiBan.getKichHoat()) {
                    model.addAttribute("error", "Tài khoản chưa được kích hoạt.");
                    return false;
                } else {
                    httpSession.setAttribute("merchant", nguoiBan);
                    return true;
                }
            } else {
                model.addAttribute("error", "Sai mật khẩu.");
                return false;
            }
        } catch (Exception ex) {
            model.addAttribute("error", "Sai email đăng ký.");
            return false;
        }
    }
    
    public void capNhatThongTin(NguoiBanViewModel nguoiBanVM, ModelMap model, HttpSession httpSession) {
        try {
            NguoiBan ngBan = (NguoiBan) httpSession.getAttribute("merchant");
            ngBan.setHoTen(nguoiBanVM.getHoTen());
            ngBan.setSoDienThoai(nguoiBanVM.getSoDienThoai());
            ngBan.setDiaChi(nguoiBanVM.getDiaChi());
            ngBan.setIdThanhPho(thanhPhoFacade.find(nguoiBanVM.getIdThanhPho().getId()));
            ngBan.setIdQuanHuyen(quanHuyenFacade.find(nguoiBanVM.getIdQuanHuyen().getId()));
            ngBan.setIdPhuongXa(phuongXaFacade.find(nguoiBanVM.getIdPhuongXa().getId()));
            nguoiBanFacade.edit(ngBan);
            httpSession.setAttribute("merchant", ngBan);
            model.addAttribute("success", "Cập nhật thông tin thành công.");
        } catch (Exception ex) {
            model.addAttribute("error", "Xảy ra lỗi, xin vui lòng kiểm tra lại.");
        }
        model.addAttribute("tab", 1);
    }
    
    public void doiMatKhau(String matKhauCu,
            String matKhauMoi,
            String matKhauXacNhan,
            ModelMap model,
            HttpSession httpSession) {
        NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
        String matKhau = nguoiBan.getMatKhau();
        if (matKhauMoi.equals(matKhauXacNhan)) {
            if (matKhau.equals(EncryptHelper.encrypt(matKhauCu))) {
                nguoiBan.setMatKhau(EncryptHelper.encrypt(matKhauMoi));
                nguoiBanFacade.edit(nguoiBan);
                httpSession.setAttribute("merchant", nguoiBan);
                model.addAttribute("success", "Đổi mật khẩu thành công.");
            } else {
                model.addAttribute("message", "Mật khẩu hiện tại không đúng.");
            }
        } else {
            model.addAttribute("error", "Mật khẩu xác nhận không đúng.");
        }
        model.addAttribute("tab", 3);
    }
    
    public boolean taoMatKhauMoi(ModelMap model, String email) {
        try {
            //// TODO: Phải kiểm tra nó bị khóa hay không ?
            //// lần sau làm ^^
            NguoiBan nguoiBan = nguoiBanBusiness.timTheoEmail(email);
            String matKhauMoi = new RandomString(8, ThreadLocalRandom.current()).nextString();
            nguoiBan.setMatKhau(EncryptHelper.encrypt(matKhauMoi));
            try {
                nguoiBanFacade.edit(nguoiBan);
                String to = nguoiBan.getEmail();
                String subject = "Tạo mật khẩu mới thành công";
                String body = "<p>Mật khẩu mới hiện tại của bạn là:  <b>" + matKhauMoi + "</b></p>"
                        + "Xin vui lòng đăng nhập hệ thống người bán hàng để tiến hành thay đổi lại mật khẩu theo ý muốn.";
                mailerService.send(to, subject, body);
                model.addAttribute("success", "Cấp mật khẩu mới thành công.<br>Xin vui lòng kiểm tra mail.");
            } catch (Exception e) {
                model.addAttribute("error", "Lỗi hệ thống xin vui lòng thử lại sau.");
                return false;
            }
            return true;
        } catch (Exception ex) {
            model.addAttribute("message", "Email không tồn tại trong hệ thống.");
            return false;
        }
    }
    
    public boolean dangTinSanPham(SanPhamViewModel sanPhamVM, MultipartFile[] fileUploads, HttpSession httpSession, Model model, String path) {
        try {
            tx.begin();
            if (fileUploads.length > 1 || (fileUploads.length == 1 && fileUploads[0].getSize() != 0)) {
                NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
                Date hienTai = new Date();
                SoTinTon soTin = soTinTonBusiness.laySoTinTheoNguoiBanVaThoiGian(nguoiBan.getId(), hienTai);
                SoTinTon newSoTin = new SoTinTon();
                newSoTin.setIdNguoiBan(nguoiBan);
                newSoTin.setNgayCapNhat(hienTai);
                newSoTin.setSoTinDaDung(1);
                newSoTin.setSoTinTon(soTin.getSoTinTon() - 1);
                soTinTonFacade.create(newSoTin);
                SanPham sp = new SanPham();
                sp.setAnHien(true);
                sp.setTenMay(sanPhamVM.getTenMay());
                sp.setGiaBan(sanPhamVM.getGiaBan().floatValue());
                sp.setMoTa(sanPhamVM.getMoTa());
                sp.setNgayDang(new Date());
                sp.setIdHangSanXuat(hangSanXuatFacade.find(sanPhamVM.getIdHangSanXuat()));
                sp.setSoLanMua(0);
                sp.setSoLanXem(0);
                sp.setTrangThai(true);
                sp.setIdNguoiBan(nguoiBan);
                sp.setTonKho(sanPhamVM.getTonKho());
                int id = sanPhamBusiness.themSanPham(sp);
                sp.setId(id);
                for (MultipartFile f : fileUploads) {
                    if (f.getSize() > 0) {
                        HinhAnhSanPham hinhAnhSanPham = new HinhAnhSanPham();
                        hinhAnhSanPham.setIdSanPham(sp);
                        hinhAnhSanPham.setTenHinh(f.getOriginalFilename());
                        hinhAnhSanPhamFacade.create(hinhAnhSanPham);
                        String imagePath = path + "\\" + hinhAnhSanPham.getTenHinh();
                        f.transferTo(new File(imagePath));
                    }
                }
                ThongSoKiThuat ts = new ThongSoKiThuat();
                ts.setIdCardManHinh(cardManHinhFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdCardManHinh()));
                ts.setIdCpu(cpuFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdCpu()));
                ts.setIdDoPhanGiai(doPhanGiaiFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdDoPhanGiai()));
                ts.setIdKichThuocManHinh(kichThuocManHinhFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdKichThuocManHinh()));
                ts.setIdLoaiManHinh(loaiManHinhFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdLoaiManHinh()));
                ts.setIdOCung(oCungFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdOCung()));
                ts.setIdRam(ramFacade.find(sanPhamVM.getThongSoKiThuatVM().getIdRam()));
                ts.setIdSanPham(sp);
                ts.setThoiLuongPin(sanPhamVM.getThongSoKiThuatVM().getThoiLuongPin());
                thongSoKiThuatFacade.create(ts);
                tx.commit();
                model.addAttribute("success", "Thêm sản phẩm thành công.<br>Thiết lập hiển thị ngay.");
                return true;
            } else {
                model.addAttribute("error", "Xin vui lòng thêm tối thiểu 1 ảnh đại diện cho sản phẩm");
                return false;
            }
        } catch (IOException | IllegalStateException | SecurityException | HeuristicMixedException | HeuristicRollbackException | NotSupportedException | RollbackException | SystemException ex) {
            try {
                tx.rollback();
            } catch (IllegalStateException | SecurityException | SystemException ex1) {
                Logger.getLogger(NguoiBanService.class.getName()).log(Level.SEVERE, null, ex1);
            }
            model.addAttribute("error", "Thêm sản phẩm thất bại<br>Xin vui lòng thực hiện lại.");
            return false;
        }
    }
}
