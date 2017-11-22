/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.ThanhPhoBusiness;
import ejb.entities.ThanhPho;
import ejb.sessions.ThanhPhoFacade;
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

    ThanhPhoFacade thanhPhoFacade = lookupThanhPhoFacadeBean();

    ThanhPhoBusiness thanhPhoBusiness = lookupThanhPhoBusinessBean();
    
    private ThanhPhoBusiness lookupThanhPhoBusinessBean() {
        try {
            Context c = new InitialContext();
            return (ThanhPhoBusiness) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/ThanhPhoBusiness!ejb.business.ThanhPhoBusiness");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private ThanhPhoFacade lookupThanhPhoFacadeBean() {
        try {
            Context c = new InitialContext();
            return (ThanhPhoFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/ThanhPhoFacade!ejb.sessions.ThanhPhoFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoBusiness.layDanhSachThanhPho();
    }

}
