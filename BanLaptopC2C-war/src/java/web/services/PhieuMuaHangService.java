/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.CtPhieuMuaHangBusiness;
import ejb.business.DanhGiaBusiness;
import ejb.business.HinhAnhSanPhamBusiness;
import ejb.entities.CtPhieuMuaHang;
import ejb.entities.DanhGia;
import ejb.entities.PhieuMuaHang;
import ejb.sessions.CtPhieuMuaHangFacade;
import ejb.sessions.DanhGiaFacade;
import ejb.sessions.PhieuMuaHangFacade;
import ejb.sessions.TinhTrangFacade;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.NotSupportedException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.UserTransaction;
import org.springframework.format.datetime.DateFormatter;
import ejb.business.PhieuMuaHangCBusiness;
import ejb.entities.CtPhieuMuaHang;
import ejb.entities.DanhGia;
import ejb.entities.PhieuMuaHang;
import ejb.entities.SanPham;
import ejb.sessions.CtPhieuMuaHangFacade;
import ejb.sessions.DanhGiaFacade;
import ejb.sessions.PhieuMuaHangFacade;
import ejb.sessions.SanPhamFacade;
import ejb.sessions.TinhTrangFacade;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.springframework.stereotype.Component;
import web.commons.Constants;
import web.commons.LookupFactory;
import web.viewmodels.DonHangViewModel;

/**
 *
 * @author Vivi
 */

@Component
public class PhieuMuaHangService {

    UserTransaction tx = LookupFactory.lookupUserTransaction();
    CtPhieuMuaHangBusiness ctPhieuMuaHangBusiness = (CtPhieuMuaHangBusiness) LookupFactory.lookupBeanBusiness("CtPhieuMuaHangBusiness");
    CtPhieuMuaHangFacade ctPhieuMuaHangFacade = (CtPhieuMuaHangFacade) LookupFactory.lookupBeanFacade("CtPhieuMuaHangFacade");

    TinhTrangFacade tinhTrangFacade = (TinhTrangFacade) LookupFactory.lookupBeanFacade("TinhTrangFacade");

    PhieuMuaHangCBusiness phieuMuaHangCBusiness = (PhieuMuaHangCBusiness) LookupFactory.lookupBeanBusiness("PhieuMuaHangCBusiness");
    
    PhieuMuaHangFacade phieuMuaHangFacade = (PhieuMuaHangFacade) LookupFactory.lookupBeanFacade("PhieuMuaHangFacade");
    HinhAnhSanPhamBusiness hinhAnhSanPhamBusiness = (HinhAnhSanPhamBusiness) LookupFactory.lookupBeanBusiness("HinhAnhSanPhamBusiness");
    DanhGiaFacade danhGiaFacade = (DanhGiaFacade) LookupFactory.lookupBeanFacade("DanhGiaFacade");
    DanhGiaBusiness danhGiaBusiness = (DanhGiaBusiness) LookupFactory.lookupBeanBusiness("DanhGiaBusiness");

    DanhGiaFacade danhGiaFacade = (DanhGiaFacade) LookupFactory.lookupBeanFacade("DanhGiaFacade");
    
    SanPhamFacade sanPhamFacade = (SanPhamFacade) LookupFactory.lookupBeanFacade("SanPhamFacade");
    
    public List<PhieuMuaHang> layDanhSachPhieuMuaHang() {
        return phieuMuaHangFacade.findAll();
    }

    public List<DonHangViewModel> layDanhSachDonHangMoi(int idNguoiBan) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoIdVaTinhTrang(idNguoiBan, Constants.TT_DANG_XU_LY);
        return getListDonHang(list);
    }

    public List<DonHangViewModel> layDanhSachDonHangDangGiao(int idNguoiBan) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoIdVaTinhTrang(idNguoiBan, Constants.TT_DANG_GIAO);
        return getListDonHang(list);
    }

    public List<DonHangViewModel> layDanhSachDonHangThanhCong(int idNguoiBan) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoIdVaTinhTrang(idNguoiBan, Constants.TT_THANH_CONG);
        return getListDonHang(list);
    }

    public List<DonHangViewModel> layDanhSachDonHangHuy(int idNguoiBan) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoIdVaTinhTrang(idNguoiBan, Constants.TT_DA_HUY);
        return getListDonHang(list);
    }

    private List<DonHangViewModel> getListDonHang(List<CtPhieuMuaHang> list) {
        List<DonHangViewModel> listDonHang = new ArrayList<>();
        for (CtPhieuMuaHang ct : list) {
            DonHangViewModel dh = new DonHangViewModel();
            dh.setIdDonHang(ct.getId());
            dh.setTenNguoiNhan(ct.getIdPhieuMuaHang().getTenNguoiNhan());
            dh.setDiaChi(ct.getIdPhieuMuaHang().getDiaChiGiao());
            dh.setGhiChu(ct.getIdPhieuMuaHang().getGhiChu());
            dh.setQuanHuyen(ct.getIdPhieuMuaHang().getIdQuanHuyen().getTenQuanHuyen());
            dh.setTinhThanhPho(ct.getIdPhieuMuaHang().getIdThanhPho().getTenThanhPho());
            dh.setPhuongXa(ct.getIdPhieuMuaHang().getIdPhuongXa().getTenPhuongXa());
            dh.setTongTien(ct.getIdPhieuMuaHang().getTongTien() * 1.0);
            dh.setSoDienThoai(ct.getIdPhieuMuaHang().getSoDienThoai());
            DateFormatter formatter = new DateFormatter();
            formatter.setPattern("dd / MM / yyyy - HH:mm:ss");
            dh.setNgayDatHang(formatter.print(ct.getIdPhieuMuaHang().getNgayDatHang(), Locale.US));

            dh.setTinhTrang(ct.getIdTinhTrang().getId());

            dh.setTenSanPham(ct.getIdSanPham().getTenMay());
            dh.setGiaBan(ct.getIdSanPham().getGiaBan() * 1.0);
            dh.setSoLuong(ct.getIdSanPham().getTonKho());
            dh.setThanhTien(ct.getIdSanPham().getTonKho() * ct.getIdSanPham().getGiaBan() * 1.0);
            String tenHinh = hinhAnhSanPhamBusiness.getListHinhAnhBySanPhamId(ct.getIdSanPham().getId()).get(0).getTenHinh();
            dh.setHinhAnhSanPham(tenHinh);
            listDonHang.add(dh);
        }
        return listDonHang;
    }

    public void capNhatTinhTrangDonHang(Integer idDonHang, String idTinhTrang) {
        try {
            tx.begin();
            CtPhieuMuaHang ct = ctPhieuMuaHangFacade.find(idDonHang);
            ct.setIdTinhTrang(tinhTrangFacade.find(idTinhTrang));
            if (idTinhTrang.equals(Constants.TT_DA_HUY) || idTinhTrang.equals(Constants.TT_THANH_CONG)) {
                DanhGia dg = danhGiaBusiness.timLuotDanhGiaTheoIdDonHang(idDonHang);
                dg.setSuDung(true);
                danhGiaFacade.edit(dg);
            } else { //Khi mà đơn hàng có tình trạng đang giao thì cập nhật ngày hiện tại là ngày giao
                ct.setNgayGiaoHang(new Date());
            }
            ctPhieuMuaHangFacade.edit(ct);
            tx.commit();
        } catch (NotSupportedException | SystemException | RollbackException | HeuristicMixedException | HeuristicRollbackException | SecurityException | IllegalStateException ex) {
            try {
                tx.rollback();
                Logger.getLogger(PhieuMuaHangService.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalStateException | SecurityException | SystemException ex1) {
                Logger.getLogger(PhieuMuaHangService.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }

    public List<DonHangViewModel> layDanhSachDonHangMoiTheoKhoangThoiGian(Integer idNguoiBan, Date batDau, Date ketThuc) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoKhoangThoiGianKemIdVaTinhTrang(idNguoiBan, batDau, ketThuc, Constants.TT_DANG_XU_LY);
        return getListDonHang(list);
    }

    public List<DonHangViewModel> layDanhSachDonHangDangGiaoTheoKhoangThoiGian(Integer idNguoiBan, Date batDau, Date ketThuc) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoKhoangThoiGianKemIdVaTinhTrang(idNguoiBan, batDau, ketThuc, Constants.TT_DANG_GIAO);
        return getListDonHang(list);
    }

    public List<DonHangViewModel> layDanhSachDonHangDaHuyTheoKhoangThoiGian(Integer idNguoiBan, Date batDau, Date ketThuc) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoKhoangThoiGianKemIdVaTinhTrang(idNguoiBan, batDau, ketThuc, Constants.TT_DA_HUY);
        return getListDonHang(list);
    }

    public List<DonHangViewModel> layDanhSachDonHangThanhCongTheoKhoangThoiGian(Integer idNguoiBan, Date batDau, Date ketThuc) {
        List<CtPhieuMuaHang> list = ctPhieuMuaHangBusiness.layDanhSachDonHangTheoKhoangThoiGianKemIdVaTinhTrang(idNguoiBan, batDau, ketThuc, Constants.TT_THANH_CONG);
        return getListDonHang(list);
    }

//    public boolean capNhatNguoiDung(Admin admin) {
//        try {
//            adminFacade.edit(admin);
//            return true;
//        } catch (Exception e) {
//            return false;
//        }
//    }

    public List<CtPhieuMuaHang> layChiTiet_PhieuMuaHang(Integer id) {
        try {
            // ko return ra sao có dữ liệu           
            return ctPhieuMuaHangBusiness.layChiTietPhieuMua(id);
        } catch (Exception e) {
            return null;
        }
    }
    
    public void themPhieuMuaHang(PhieuMuaHang phieuMuaHang, ShoppingCart cart)
    {
        
        phieuMuaHangFacade.create(phieuMuaHang);
        
        for(SanPham sp: cart.layDanhSachSanPham())
        {
            CtPhieuMuaHang ct = new CtPhieuMuaHang();
            DanhGia dg = new DanhGia();
            ct.setIdNguoiBan(sp.getIdNguoiBan());
            ct.setIdPhieuMuaHang(phieuMuaHang);
            ct.setIdSanPham(sp);
            ct.setIdTinhTrang(tinhTrangFacade.find("XL"));
            ct.setSoLuongMua(sp.getTonKho());
            ct.setThanhTien(sp.getGiaBan()*sp.getGiaBan());
            ct.setGiaBan(sp.getGiaBan());
            
            ctPhieuMuaHangFacade.create(ct);
            
            dg.setIdDonHang(ct);
            dg.setIdNguoiBan(ct.getIdNguoiBan());
            dg.setSoDiem(0);
            dg.setSuDung(false);
            
            danhGiaFacade.create(dg);
            int id_sanpham=sp.getId();
            SanPham sanpham = sanPhamFacade.find(id_sanpham);
            sanpham.setSoLanMua(sanpham.getSoLanMua()+sp.getTonKho());
            
            sanPhamFacade.edit(sanpham);
            
        }
    }
    
    
     public List<PhieuMuaHang> layDanhSachPhieuMuaHangTheoIDKH(int id) {
        return phieuMuaHangCBusiness.layPhieuMuaHangTheoIDKH(id);
    }

    public List<CtPhieuMuaHang> layCtPhieuMuaHang(int id_phieumuahang)
    {
        return phieuMuaHangCBusiness.layCtPhieuMuaHang(id_phieumuahang);
    }
}
