/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.DanhGia;
import ejb.entities.HangSanXuat;
import ejb.entities.NguoiBan;
import ejb.sessions.DanhGiaFacade;
import ejb.sessions.HangSanXuatFacade;
import ejb.sessions.NguoiBanFacade;
import ejb.sessions.NguoiMuaFacade;
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
public class DanhGiaService {

     DanhGiaFacade danhGiaFacade = (DanhGiaFacade) LookupFactory.lookupBeanFacade("DanhGiaFacade");
     NguoiBanFacade nguoiBanFacade = (NguoiBanFacade) LookupFactory.lookupBeanFacade("NguoiBanFacade");

    public List<DanhGia> layDSThongKeDanhGia(int id_customer) {
        return danhGiaFacade.findAll();
    }

    public void danhGia(int id_Danhgia, int rating)
    {
        //update tb DanhGia
        DanhGia danhgia = danhGiaFacade.find(id_Danhgia);
        danhgia.setSoDiem(rating);
        danhgia.setSuDung(false);
        
        danhGiaFacade.edit(danhgia);
        
        //update tb Merchant
        NguoiBan nguoiban = danhgia.getIdNguoiBan();
        
        int tonglanrating = nguoiban.getSoLanDanhGia()+1;
        int tongdiemrating = nguoiban.getTongDiemDanhGia()+rating;
        int trungbinhrating = tongdiemrating/tonglanrating;
        
        nguoiban.setSoLanDanhGia(tonglanrating);
        nguoiban.setTongDiemDanhGia(tongdiemrating);
        nguoiban.setDiemTrungBinh(trungbinhrating);
        
        nguoiBanFacade.edit(nguoiban);
    }
    private DanhGiaFacade lookupDanhGiaFacadeBean() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     
    
}
