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

    public boolean themHangSanXuat(HangSanXuat hangSanXuat) {
        try {
            hangSanXuatFacade.create(hangSanXuat);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean capNhatHangSanXuat(HangSanXuat hangSanXuat) {
        try {
            hangSanXuatFacade.edit(hangSanXuat);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public List<HangSanXuat> layDanhSachHangSanXuat() {
        return hangSanXuatFacade.findAll();
    }

    public HangSanXuat tim(String id) {
        return hangSanXuatFacade.find(id);
    }

    public List<HangSanXuat> getList() {
        return hangSanXuatFacade.findAll();
    }
}
