/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.GoiTin;
import ejb.sessions.GoiTinFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class GoiTinService {

    GoiTinFacade goiTinFacade = (GoiTinFacade) LookupFactory.lookupBeanFacade("GoiTinFacade");
    
    public List<GoiTin> layDanhSachGoiTin() {
        return goiTinFacade.findAll();
    }

    public GoiTin timGoiTinTheoId(String id) {
        return goiTinFacade.find(id);
    }
    
}
