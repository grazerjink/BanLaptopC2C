/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.QuanHuyen;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface QuanHuyenFacadeLocal {

    void create(QuanHuyen quanHuyen);

    void edit(QuanHuyen quanHuyen);

    void remove(QuanHuyen quanHuyen);

    QuanHuyen find(Object id);

    List<QuanHuyen> findAll();

    List<QuanHuyen> findRange(int[] range);

    int count();
    
}
