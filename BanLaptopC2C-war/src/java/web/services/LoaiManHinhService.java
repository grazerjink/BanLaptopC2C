/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.LoaiManHinh;
import ejb.sessions.LoaiManHinhFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class LoaiManHinhService {
        
    LoaiManHinhFacade loaiManHinhFacade = (LoaiManHinhFacade) LookupFactory.lookupBeanFacade("LoaiManHinhFacade");
    
    public List<LoaiManHinh> layDanhSachLoaiManHinh() {
        return loaiManHinhFacade.findAll();
    }
}
