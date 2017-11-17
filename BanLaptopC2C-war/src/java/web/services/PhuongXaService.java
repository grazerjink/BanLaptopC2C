/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.PhuongXaBusiness;
import ejb.entities.PhuongXa;
import ejb.sessions.PhuongXaFacade;
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

    PhuongXaFacade phuongXaFacade = lookupPhuongXaFacadeBean();

    PhuongXaBusiness phuongXaBusiness = lookupPhuongXaBusinessBean();

    private PhuongXaBusiness lookupPhuongXaBusinessBean() {
        try {
            Context c = new InitialContext();
            return (PhuongXaBusiness) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhuongXaBusiness!ejb.business.PhuongXaBusiness");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private PhuongXaFacade lookupPhuongXaFacadeBean() {
        try {
            Context c = new InitialContext();
            return (PhuongXaFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/PhuongXaFacade!ejb.sessions.PhuongXaFacade");
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
            dsTenPhuongXa.add("<option value='" + it.getId() + "'>" + it.getTenPhuongXa() + "</option>");
        });
        return dsTenPhuongXa;
    }

}
