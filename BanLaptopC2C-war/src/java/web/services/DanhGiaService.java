/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.DanhGia;
import ejb.entities.HangSanXuat;
import ejb.sessions.DanhGiaFacade;
import ejb.sessions.HangSanXuatFacade;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Vivi
 */
@Component
public class DanhGiaService {

     DanhGiaFacade danhGiaFacade = (DanhGiaFacade) LookupFactory.lookupBeanFacade("DanhGiaFacade");

    public List<DanhGia> layDSThongKeDanhGia() {
        return danhGiaFacade.findAll();
    }

    private DanhGiaFacade lookupDanhGiaFacadeBean() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     
    
}
