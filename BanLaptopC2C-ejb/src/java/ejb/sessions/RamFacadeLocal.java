/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.Ram;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface RamFacadeLocal {

    void create(Ram ram);

    void edit(Ram ram);

    void remove(Ram ram);

    Ram find(Object id);

    List<Ram> findAll();

    List<Ram> findRange(int[] range);

    int count();
    
}
