/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.ManHinh;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface ManHinhFacadeLocal {

    void create(ManHinh manHinh);

    void edit(ManHinh manHinh);

    void remove(ManHinh manHinh);

    ManHinh find(Object id);

    List<ManHinh> findAll();

    List<ManHinh> findRange(int[] range);

    int count();
    
}
