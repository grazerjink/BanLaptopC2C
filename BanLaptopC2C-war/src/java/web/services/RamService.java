/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.Ram;
import ejb.sessions.RamFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class RamService {
    
    RamFacade ramFacade = (RamFacade) LookupFactory.lookupBeanFacade("RamFacade");
    
    public List<Ram> layDanhSachRam() {
        return ramFacade.findAll();
    }
}
