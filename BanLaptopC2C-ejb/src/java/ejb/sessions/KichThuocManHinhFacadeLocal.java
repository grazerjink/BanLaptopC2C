/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.KichThuocManHinh;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface KichThuocManHinhFacadeLocal {

    void create(KichThuocManHinh kichThuocManHinh);

    void edit(KichThuocManHinh kichThuocManHinh);

    void remove(KichThuocManHinh kichThuocManHinh);

    KichThuocManHinh find(Object id);

    List<KichThuocManHinh> findAll();

    List<KichThuocManHinh> findRange(int[] range);

    int count();
    
}
