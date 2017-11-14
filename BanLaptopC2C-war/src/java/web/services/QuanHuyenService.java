/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.QuanHuyen;
import ejb.sessions.QuanHuyenFacadeLocal;
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
public class QuanHuyenService {

    QuanHuyenFacadeLocal quanHuyenFacade = lookupQuanHuyenFacadeLocal();
    
    public List<QuanHuyen> layDanhSachQuanHuyen() {
        return quanHuyenFacade.findAll();
    }   
    
    private QuanHuyenFacadeLocal lookupQuanHuyenFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (QuanHuyenFacadeLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/QuanHuyenFacade!ejb.sessions.QuanHuyenFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
