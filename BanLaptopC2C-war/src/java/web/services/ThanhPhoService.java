/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.ThanhPhoBusinessLocal;
import ejb.entities.ThanhPho;
import ejb.sessions.ThanhPhoFacadeLocal;
import java.util.List;
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
public class ThanhPhoService {

    ThanhPhoBusinessLocal thanhPhoBusiness = lookupThanhPhoBusinessLocal();
    ThanhPhoFacadeLocal thanhPhoFacade = lookupThanhPhoFacadeLocal();
    
    private ThanhPhoFacadeLocal lookupThanhPhoFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (ThanhPhoFacadeLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/ThanhPhoFacade!ejb.sessions.ThanhPhoFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private ThanhPhoBusinessLocal lookupThanhPhoBusinessLocal() {
        try {
            Context c = new InitialContext();
            return (ThanhPhoBusinessLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/ThanhPhoBusiness!ejb.business.ThanhPhoBusinessLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoBusiness.layDanhSachThanhPho();
    }
    
}
