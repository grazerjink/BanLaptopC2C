/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.PhieuMuaHang;
import ejb.sessions.PhieuMuaHangFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Vivi
 */
@Component

public class PhieuMuaHangService {

    PhieuMuaHangFacade phieuMuaHangFacade = (PhieuMuaHangFacade) LookupFactory.lookupBeanFacade("PhieuMuaHangFacade");

    public List<PhieuMuaHang> layDanhSachPhieuMuaHang() {
        return phieuMuaHangFacade.findAll();
    }
}
