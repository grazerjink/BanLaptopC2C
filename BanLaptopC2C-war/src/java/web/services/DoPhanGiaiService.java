/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.DoPhanGiai;
import ejb.sessions.DoPhanGiaiFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class DoPhanGiaiService {
    
    DoPhanGiaiFacade doPhanGiaiFacade = (DoPhanGiaiFacade) LookupFactory.lookupBeanFacade("DoPhanGiaiFacade");
    
    public List<DoPhanGiai> layDanhSachDoPhanGiai() {
        return doPhanGiaiFacade.findAll();
    }
}
