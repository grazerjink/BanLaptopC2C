/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.CtPhieuMuaHang;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface CtPhieuMuaHangFacadeLocal {

    void create(CtPhieuMuaHang ctPhieuMuaHang);

    void edit(CtPhieuMuaHang ctPhieuMuaHang);

    void remove(CtPhieuMuaHang ctPhieuMuaHang);

    CtPhieuMuaHang find(Object id);

    List<CtPhieuMuaHang> findAll();

    List<CtPhieuMuaHang> findRange(int[] range);

    int count();
    
}
