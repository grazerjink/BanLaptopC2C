/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.PhuongXa;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface PhuongXaFacadeLocal {

    void create(PhuongXa phuongXa);

    void edit(PhuongXa phuongXa);

    void remove(PhuongXa phuongXa);

    PhuongXa find(Object id);

    List<PhuongXa> findAll();

    List<PhuongXa> findRange(int[] range);

    int count();
    
}
