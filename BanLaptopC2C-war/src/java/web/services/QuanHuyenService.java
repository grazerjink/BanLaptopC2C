/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.QuanHuyenBusiness;
import ejb.entities.QuanHuyen;
import ejb.sessions.QuanHuyenFacade;
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
public class QuanHuyenService {

    QuanHuyenFacade quanHuyenFacade = lookupQuanHuyenFacadeBean();

    QuanHuyenBusiness quanHuyenBusiness = lookupQuanHuyenBusinessBean();

    private QuanHuyenBusiness lookupQuanHuyenBusinessBean() {
        try {
            Context c = new InitialContext();
            return (QuanHuyenBusiness) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/QuanHuyenBusiness!ejb.business.QuanHuyenBusiness");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private QuanHuyenFacade lookupQuanHuyenFacadeBean() {
        try {
            Context c = new InitialContext();
            return (QuanHuyenFacade) c.lookup("java:global/BanLaptopC2C/BanLaptopC2C-ejb/QuanHuyenFacade!ejb.sessions.QuanHuyenFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    public List<String> layDanhSachTheoThanhPho(Integer id) {
        List<String> dsTenQuanHuyen = new ArrayList<>();
        dsTenQuanHuyen.add("<option disabled selected>Chọn Quận/Huyện</option>");

        List<QuanHuyen> dsQuanHuyen = quanHuyenBusiness.layDanhSachTheoThanhPho(id);
        dsQuanHuyen.forEach(it -> {
            dsTenQuanHuyen.add("<option value='" + it.getId() + "'>" + it.getTenQuanHuyen() + "</option>");
        });
        return dsTenQuanHuyen;
    }

}
