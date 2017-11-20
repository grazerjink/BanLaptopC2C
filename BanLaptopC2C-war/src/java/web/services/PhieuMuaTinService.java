/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.PhieuMuaTin;
import ejb.sessions.PhieuMuaTinFacadeLocal;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.springframework.stereotype.Component;

/**
 *
 * @author Vivi
 */
@Component
public class PhieuMuaTinService {

    PhieuMuaTinFacadeLocal phieuMuaTinFacade = lookupPhieuMuaTinFacadeLocal();

    private PhieuMuaTinFacadeLocal lookupPhieuMuaTinFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (PhieuMuaTinFacadeLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhieuMuaTinFacade!ejb.sessions.PhieuMuaTinFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    public List<PhieuMuaTin> layDanhSachPhieuMua() {
        return phieuMuaTinFacade.findAll();
    }    
    
    
    
    
}
