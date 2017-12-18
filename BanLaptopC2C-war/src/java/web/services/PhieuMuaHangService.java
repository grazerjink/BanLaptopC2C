/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.PhieuMuaHangBusiness;
import ejb.business.PhuongXaBusiness;
import ejb.entities.Admin;
import ejb.entities.CtPhieuMuaHang;
import ejb.entities.PhieuMuaHang;
import ejb.sessions.CtPhieuMuaHangFacade;
import ejb.sessions.PhieuMuaHangFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Vivi
 */
@Component

public class PhieuMuaHangService {

    PhieuMuaHangFacade phieuMuaHangFacade = (PhieuMuaHangFacade) LookupFactory.lookupBeanFacade("PhieuMuaHangFacade");
   PhieuMuaHangBusiness ctPhieuMuaHangBusiness = (PhieuMuaHangBusiness) LookupFactory.lookupBeanBusiness("PhieuMuaHangBusiness");
    public List<PhieuMuaHang> layDanhSachPhieuMuaHang() {
        return phieuMuaHangFacade.findAll();
    }
    
//    public boolean capNhatNguoiDung(Admin admin) {
//        try {
//            adminFacade.edit(admin);
//            return true;
//        } catch (Exception e) {
//            return false;
//        }
//    }
    
    public List<CtPhieuMuaHang> layChiTiet_PhieuMuaHang(Integer id)
    {
       try{           
           // ko return ra sao có dữ liệu           
           return ctPhieuMuaHangBusiness.layChiTietPhieuMua(id);
       }
       catch(Exception e){
           return null;
       }
    }
}
