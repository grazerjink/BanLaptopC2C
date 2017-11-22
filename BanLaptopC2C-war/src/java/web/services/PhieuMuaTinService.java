/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import com.paypal.api.payments.Payment;
import ejb.business.PhieuMuaTinBusiness;
import ejb.entities.GoiTin;
import ejb.entities.NguoiBan;
import ejb.entities.PhieuMuaTin;
import ejb.entities.TinhTrang;
import ejb.sessions.PhieuMuaTinFacade;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.springframework.stereotype.Component;
import web.commons.Constants;

/**
 *
 * @author Winson Mac
 */
@Component
public class PhieuMuaTinService {

    PhieuMuaTinBusiness phieuMuaTinBusiness = lookupPhieuMuaTinBusinessBean();
    PhieuMuaTinFacade phieuMuaTinFacade = lookupPhieuMuaTinFacadeBean();

    private PhieuMuaTinFacade lookupPhieuMuaTinFacadeBean() {
        try {
            Context c = new InitialContext();
            return (PhieuMuaTinFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhieuMuaTinFacade!ejb.sessions.PhieuMuaTinFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private PhieuMuaTinBusiness lookupPhieuMuaTinBusinessBean() {
        try {
            Context c = new InitialContext();
            return (PhieuMuaTinBusiness) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhieuMuaTinBusiness!ejb.business.PhieuMuaTinBusiness");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public void taoPhieuMuaTinTrucTiep(NguoiBan nguoiBan, GoiTin goiTin) {
        PhieuMuaTin phieuMuaTin = new PhieuMuaTin();
        phieuMuaTin.setIdGoiTin(goiTin);
        phieuMuaTin.setIdNguoiBan(nguoiBan);
        phieuMuaTin.setIdTinhTrang(new TinhTrang(Constants.TT_DANG_XU_LY));
        phieuMuaTin.setNgayGiaoDich(new Date());
        phieuMuaTin.setPhuongThucThanhToan(Constants.GD_TRUC_TIEP);
        phieuMuaTin.setGiaBan(goiTin.getGiaBan());
        phieuMuaTinFacade.create(phieuMuaTin);
    }

    public void taoPhieuMuaTinQuaPayPal(NguoiBan nguoiBan, GoiTin goiTin, String paymentId, String payerId) {
        PhieuMuaTin phieuMuaTin = new PhieuMuaTin();
        phieuMuaTin.setIdGoiTin(goiTin);
        phieuMuaTin.setIdNguoiBan(nguoiBan);
        phieuMuaTin.setIdTinhTrang(new TinhTrang(Constants.TT_THANH_CONG));
        phieuMuaTin.setNgayGiaoDich(new Date());
        phieuMuaTin.setPhuongThucThanhToan(Constants.GD_PAYPAL);
        phieuMuaTin.setPaymentId(paymentId);
        phieuMuaTin.setPayerId(payerId);
        phieuMuaTin.setGiaBan(goiTin.getGiaBan());
        phieuMuaTinFacade.create(phieuMuaTin);
    }

}
