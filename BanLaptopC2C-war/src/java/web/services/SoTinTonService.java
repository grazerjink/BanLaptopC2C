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
import ejb.sessions.NguoiBanFacade;
import ejb.sessions.SoTinTonFacade;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class SoTinTonService {

    NguoiBanFacade nguoiBanFacade = (NguoiBanFacade) LookupFactory.lookupBeanFacade("NguoiBanFacade");
    SoTinTonBusiness soTinTonBusiness = (SoTinTonBusiness) LookupFactory.lookupBeanBusiness("SoTinTonBusiness");
    SoTinTonFacade soTinTonFacade = (SoTinTonFacade) LookupFactory.lookupBeanFacade("SoTinTonFacade");

    public int laySoTinTheoNguoiBanVaThoiGian(NguoiBan nguoiBan, Date thoiGian) {
        return soTinTonBusiness.laySoTinTheoNguoiBanVaThoiGian(nguoiBan.getId(), thoiGian);
    }

    public void capNhatSoTinDang(GoiTin goiTin, HttpSession httpSession) {
        NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
        int soTinHienTai = laySoTinTheoNguoiBanVaThoiGian(nguoiBan, new Date());
        if(nguoiBan.getLanDauMuaTin()) {
            soTinHienTai += goiTin.getSoTin() + 5;
            nguoiBan.setLanDauMuaTin(false);
            nguoiBanFacade.edit(nguoiBan);      
        }
        else {
            soTinHienTai += goiTin.getSoTin();
        }
        SoTinTon soTinTon = new SoTinTon();
        soTinTon.setIdNguoiBan(nguoiBan);
        soTinTon.setNgayCapNhat(new Date());
        soTinTon.setSoTinThayDoi(0);
        soTinTon.setSoTinTon(soTinHienTai);
        soTinTonFacade.create(soTinTon);
    }

}
