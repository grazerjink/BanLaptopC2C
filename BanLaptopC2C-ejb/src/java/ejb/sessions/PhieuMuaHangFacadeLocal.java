/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.PhieuMuaHang;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface PhieuMuaHangFacadeLocal {

    void create(PhieuMuaHang phieuMuaHang);

    void edit(PhieuMuaHang phieuMuaHang);

    void remove(PhieuMuaHang phieuMuaHang);

    PhieuMuaHang find(Object id);

    List<PhieuMuaHang> findAll();

    List<PhieuMuaHang> findRange(int[] range);

    int count();
    
}
