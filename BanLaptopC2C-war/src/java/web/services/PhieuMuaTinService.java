/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;
import ejb.entities.GoiTin;
import ejb.entities.NguoiBan;
import ejb.entities.TinhTrang;
import java.util.Date;
import ejb.entities.PhieuMuaTin;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.Constants;

/**
 *
 * @author Winson Mac
 */
@Component
public class PhieuMuaTinService {
    
    

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
    
    public List<PhieuMuaTin> layDanhSachPhieuMua() {
        return phieuMuaTinFacade.findAll();
    }    
}
