/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.CardManHinh;
import ejb.sessions.CardManHinhFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class CardManHinhService {
    
    CardManHinhFacade cardManHinhFacade = (CardManHinhFacade) LookupFactory.lookupBeanFacade("CardManHinhFacade");
    
    public List<CardManHinh> layDanhSachCardManHinh() {
        return cardManHinhFacade.findAll();
    }
}
