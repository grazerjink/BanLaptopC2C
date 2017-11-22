/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.GoiTin;
import ejb.sessions.GoiTinFacade;
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
public class GoiTinService {

    GoiTinFacade goiTinFacade = lookupGoiTinFacadeBean();

    private GoiTinFacade lookupGoiTinFacadeBean() {
        try {
            Context c = new InitialContext();
            return (GoiTinFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/GoiTinFacade!ejb.sessions.GoiTinFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    public List<GoiTin> layDanhSachGoiTin() {
        return goiTinFacade.findAll();
    }

    public GoiTin timGoiTinTheoId(String id) {
        return goiTinFacade.find(id);
    }
    
}
