/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.HangSanXuat;
import ejb.sessions.HangSanXuatFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class HangSanXuatService {

    HangSanXuatFacade hangSanXuatFacade = (HangSanXuatFacade) LookupFactory.lookupBeanFacade("HangSanXuatFacade");

    public List<HangSanXuat> layDanhSachHangSanXuat() {
        return hangSanXuatFacade.findAll();
    }
}
