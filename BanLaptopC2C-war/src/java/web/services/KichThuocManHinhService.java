/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.KichThuocManHinh;
import ejb.sessions.KichThuocManHinhFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class KichThuocManHinhService {
    
    KichThuocManHinhFacade kichThuocManHinhFacade = (KichThuocManHinhFacade) LookupFactory.lookupBeanFacade("KichThuocManHinhFacade");
    
    public List<KichThuocManHinh> layDanhSachKichThuocManHinh() {
        return kichThuocManHinhFacade.findAll();
    }
}
