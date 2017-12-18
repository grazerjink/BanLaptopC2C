/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.ThanhPhoBusiness;
import ejb.entities.ThanhPho;
import ejb.sessions.ThanhPhoFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class ThanhPhoService {

    ThanhPhoFacade thanhPhoFacade = (ThanhPhoFacade) LookupFactory.lookupBeanFacade("ThanhPhoFacade");
    ThanhPhoBusiness thanhPhoBusiness = (ThanhPhoBusiness) LookupFactory.lookupBeanBusiness("ThanhPhoBusiness");

    public List<ThanhPho> layDanhSachThanhPho() {
        return thanhPhoBusiness.layDanhSachThanhPho();
    }
    
    public ThanhPho layThanhPho(int id){
        return thanhPhoFacade.find(id);
    }

}
