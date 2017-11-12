/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.LoaiManHinh;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface LoaiManHinhFacadeLocal {

    void create(LoaiManHinh loaiManHinh);

    void edit(LoaiManHinh loaiManHinh);

    void remove(LoaiManHinh loaiManHinh);

    LoaiManHinh find(Object id);

    List<LoaiManHinh> findAll();

    List<LoaiManHinh> findRange(int[] range);

    int count();
    
}
