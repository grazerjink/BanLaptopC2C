/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

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

    ThanhPhoFacadeLocal thanhPhoFacade = lookupThanhPhoFacadeLocal();

    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoFacade.findAll();
    }
    
    
    
    
    private ThanhPhoFacadeLocal lookupThanhPhoFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (ThanhPhoFacadeLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/ThanhPhoFacade!ejb.sessions.ThanhPhoFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
}
