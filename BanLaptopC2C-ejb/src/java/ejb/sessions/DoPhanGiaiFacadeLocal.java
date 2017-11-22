/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.DoPhanGiai;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface DoPhanGiaiFacadeLocal {

    void create(DoPhanGiai doPhanGiai);

    void edit(DoPhanGiai doPhanGiai);

    void remove(DoPhanGiai doPhanGiai);

    DoPhanGiai find(Object id);

    List<DoPhanGiai> findAll();

    List<DoPhanGiai> findRange(int[] range);

    int count();
    
}
