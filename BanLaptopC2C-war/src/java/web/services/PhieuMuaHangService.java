/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

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
import web.commons.LookupFactory;

/**
 *
 * @author Vivi
 */
@Component

public class PhieuMuaHangService {

    CtPhieuMuaHangFacade ctPhieuMuaHangFacade = (CtPhieuMuaHangFacade) LookupFactory.lookupBeanFacade("CtPhieuMuaHangFacade");

    TinhTrangFacade tinhTrangFacade = (TinhTrangFacade) LookupFactory.lookupBeanFacade("TinhTrangFacade");

    PhieuMuaHangCBusiness phieuMuaHangCBusiness = (PhieuMuaHangCBusiness) LookupFactory.lookupBeanBusiness("PhieuMuaHangCBusiness");
    
    PhieuMuaHangFacade phieuMuaHangFacade = (PhieuMuaHangFacade) LookupFactory.lookupBeanFacade("PhieuMuaHangFacade");

    DanhGiaFacade danhGiaFacade = (DanhGiaFacade) LookupFactory.lookupBeanFacade("DanhGiaFacade");
    
    SanPhamFacade sanPhamFacade = (SanPhamFacade) LookupFactory.lookupBeanFacade("SanPhamFacade");
    
    public List<PhieuMuaHang> layDanhSachPhieuMuaHang() {
        return phieuMuaHangFacade.findAll();
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

    

    

