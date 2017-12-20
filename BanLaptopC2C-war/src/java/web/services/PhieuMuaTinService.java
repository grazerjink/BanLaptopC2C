/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.SoTinTonBusiness;
import ejb.entities.GoiTin;
import ejb.entities.NguoiBan;
import ejb.entities.TinhTrang;
import java.util.Date;
import ejb.entities.PhieuMuaTin;
import ejb.entities.SoTinTon;
import ejb.sessions.GoiTinFacade;
import ejb.sessions.NguoiBanFacade;
import ejb.sessions.PhieuMuaTinFacade;
import ejb.sessions.SoTinTonFacade;
import ejb.sessions.TinhTrangFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.Constants;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class PhieuMuaTinService {

    PhieuMuaTinFacade phieuMuaTinFacade = (PhieuMuaTinFacade) LookupFactory.lookupBeanFacade("PhieuMuaTinFacade");
    NguoiBanFacade nguoiBanFacade = (NguoiBanFacade) LookupFactory.lookupBeanFacade("NguoiBanFacade");
    SoTinTonFacade soTinTonFacade = (SoTinTonFacade) LookupFactory.lookupBeanFacade("SoTinTonFacade");
    TinhTrangFacade tinhTrangFacade = (TinhTrangFacade) LookupFactory.lookupBeanFacade("TinhTrangFacade");
    GoiTinFacade goiTinFacade = (GoiTinFacade) LookupFactory.lookupBeanFacade("GoiTinFacade");
    SoTinTonBusiness soTinTonBusiness = (SoTinTonBusiness) LookupFactory.lookupBeanBusiness("SoTinTonBusiness");

    public List<PhieuMuaTin> layDanhSachPhieuMua() {
        return phieuMuaTinFacade.findAll();
    }

    // Cập nhật phiếu mua tin
    public boolean capNhatPhieuMuaTin(PhieuMuaTin phieumuatin) {
        try {
            if (phieumuatin.getIdTinhTrang().getId().equals(Constants.TT_THAT_BAI)) {
                PhieuMuaTin pm = phieuMuaTinFacade.find(phieumuatin.getId());
                pm.setIdTinhTrang(tinhTrangFacade.find(Constants.TT_THAT_BAI));
                return true;
            } else {
                PhieuMuaTin pm = phieuMuaTinFacade.find(phieumuatin.getId());
                GoiTin goiTin = goiTinFacade.find(phieumuatin.getIdGoiTin().getId());
                NguoiBan nguoiBan = nguoiBanFacade.find(phieumuatin.getIdNguoiBan().getId());
                
                pm.setIdTinhTrang(tinhTrangFacade.find(Constants.TT_THANH_CONG));
                phieuMuaTinFacade.edit(pm);
                SoTinTon soTinTon = new SoTinTon();
                int soTinHienTai = soTinTonBusiness.laySoTinTheoNguoiBanVaThoiGian(nguoiBan.getId(), new Date());
                if (nguoiBan.getLanDauMuaTin()) {
                    soTinHienTai += goiTin.getSoTin() + 5;
                    soTinTon.setSoTinThayDoi(goiTin.getSoTin() + 5);

                    nguoiBan.setLanDauMuaTin(false);
                    nguoiBanFacade.edit(nguoiBan);
                } else {
                    soTinTon.setSoTinThayDoi(goiTin.getSoTin());
                    soTinHienTai += goiTin.getSoTin();
                }
                soTinTon.setIdNguoiBan(nguoiBan);
                soTinTon.setNgayCapNhat(new Date());
                soTinTon.setIdPhieuMuaTin(pm);
                soTinTon.setSoTinTon(soTinHienTai);
                soTinTonFacade.create(soTinTon);
                return true;
            }
        } catch (Exception e) {
            return false;
        }
    }

    public PhieuMuaTin timPhieuMuaTin(Integer id) {
        try {
            return phieuMuaTinFacade.find(id);
        } catch (Exception e) {
            return null;
        }
    }
}
