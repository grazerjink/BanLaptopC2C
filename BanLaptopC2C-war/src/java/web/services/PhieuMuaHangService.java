/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.PhieuMuaHang;
import java.util.List;
import org.springframework.stereotype.Component;

/**
 *
 * @author Vivi
 */
@Component
public class PhieuMuaHangService {

    
    
    public List<PhieuMuaHang> layDanhSachPhieuMuaHang()
    {
        return phieuMuaHangFacade.findAll();
    }
    
    
}
