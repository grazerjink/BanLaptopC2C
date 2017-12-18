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
import ejb.sessions.PhieuMuaTinFacade;
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
    
    public List<PhieuMuaTin> layDanhSachPhieuMua() {
        return phieuMuaTinFacade.findAll();
    }
}
