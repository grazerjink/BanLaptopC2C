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
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class SoTinTonService {

    SoTinTonBusiness soTinTonBusiness = (SoTinTonBusiness) LookupFactory.lookupBeanBusiness("SoTinTonBusiness");
    SoTinTonFacade soTinTonFacade = (SoTinTonFacade) LookupFactory.lookupBeanFacade("SoTinTonFacade");

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
        soTinTon.setSoTinTon(soTinHienTai + goiTin.getSoTin());
        soTinTonFacade.create(soTinTon);
    }

}
