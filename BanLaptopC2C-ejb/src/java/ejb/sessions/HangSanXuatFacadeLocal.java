/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.HangSanXuat;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface HangSanXuatFacadeLocal {

    void create(HangSanXuat hangSanXuat);

    void edit(HangSanXuat hangSanXuat);

    void remove(HangSanXuat hangSanXuat);

    HangSanXuat find(Object id);

    List<HangSanXuat> findAll();

    List<HangSanXuat> findRange(int[] range);

    int count();
    
}
