/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.PhuongXaBusinessLocal;
import ejb.entities.PhuongXa;
import ejb.sessions.PhuongXaFacadeLocal;
import java.util.ArrayList;
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
public class PhuongXaService {

    PhuongXaBusinessLocal phuongXaBusiness = lookupPhuongXaBusinessLocal();

    PhuongXaFacadeLocal phuongXaFacade = lookupPhuongXaFacadeLocal();
    
    private PhuongXaFacadeLocal lookupPhuongXaFacadeLocal() {
        try {
            Context c = new InitialContext();
            return (PhuongXaFacadeLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhuongXaFacade!ejb.sessions.PhuongXaFacadeLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private PhuongXaBusinessLocal lookupPhuongXaBusinessLocal() {
        try {
            Context c = new InitialContext();
            return (PhuongXaBusinessLocal) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhuongXaBusiness!ejb.business.PhuongXaBusinessLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public List<String> layDanhSachTheoQuanHuyen(Integer id) {
        List<String> dsTenPhuongXa = new ArrayList<>();
        dsTenPhuongXa.add("<option disabled selected>Chọn Phường/Xã</option>");
        
        List<PhuongXa> dsPhuongXa = phuongXaBusiness.layDanhSachTheoQuanHuyen(id);
        dsPhuongXa.forEach(it -> {
            dsTenPhuongXa.add("<option value='"+it.getId()+"'>"+it.getTenPhuongXa()+"</option>");
        });        
        return dsTenPhuongXa;
    }
    
}
