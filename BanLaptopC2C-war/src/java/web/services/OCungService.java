/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.OCung;
import ejb.sessions.OCungFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class OCungService {
    
    OCungFacade oCungFacade = (OCungFacade) LookupFactory.lookupBeanFacade("OCungFacade");
    
    public List<OCung> layDanhSachOCung() {
        return oCungFacade.findAll();
    }
}
