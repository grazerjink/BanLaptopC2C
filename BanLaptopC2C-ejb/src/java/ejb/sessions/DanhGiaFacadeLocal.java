/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.DanhGia;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface DanhGiaFacadeLocal {

    void create(DanhGia danhGia);

    void edit(DanhGia danhGia);

    void remove(DanhGia danhGia);

    DanhGia find(Object id);

    List<DanhGia> findAll();

    List<DanhGia> findRange(int[] range);

    int count();
    
}
