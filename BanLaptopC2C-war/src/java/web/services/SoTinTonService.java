/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.SoTinTonBusiness;
import ejb.entities.GoiTin;
import ejb.entities.NguoiBan;
import ejb.entities.SoTinTon;
import ejb.sessions.SoTinTonFacade;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.springframework.stereotype.Component;

/**
 *
 * @author Winson Mac
 */
@Component
public class SoTinTonService {

    SoTinTonBusiness soTinTonBusiness = lookupSoTinTonBusinessBean();
    SoTinTonFacade soTinTonFacade = lookupSoTinTonFacadeBean();

    private SoTinTonFacade lookupSoTinTonFacadeBean() {
        try {
            Context c = new InitialContext();
            return (SoTinTonFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/SoTinTonFacade!ejb.sessions.SoTinTonFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private SoTinTonBusiness lookupSoTinTonBusinessBean() {
        try {
            Context c = new InitialContext();
            return (SoTinTonBusiness) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/SoTinTonBusiness!ejb.business.SoTinTonBusiness");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public int laySoTinTheoNguoiBanVaThoiGian(NguoiBan nguoiBan, Date thoiGian) {
        SoTinTon soTinTon = soTinTonBusiness.laySoTinTheoNguoiBanVaThoiGian(nguoiBan.getId(), thoiGian);
        if (soTinTon != null) {
            return soTinTon.getSoTinTon();
        } else {
            return 0;
        }
    }

    public void capNhatSoTinDang(NguoiBan nguoiBan, GoiTin goiTin) {
        int soTinHienTai = laySoTinTheoNguoiBanVaThoiGian(nguoiBan, new Date());
        SoTinTon soTinTon = new SoTinTon();
        soTinTon.setIdNguoiBan(nguoiBan);
        soTinTon.setNgayCapNhat(new Date());
        soTinTon.setSoTinDaDung(0);
        soTinTon.setSoTinTon(soTinHienTai+goiTin.getSoTin());
        soTinTonFacade.create(soTinTon);
    }

}
