/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.OCung;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface OCungFacadeLocal {

    void create(OCung oCung);

    void edit(OCung oCung);

    void remove(OCung oCung);

    OCung find(Object id);

    List<OCung> findAll();

    List<OCung> findRange(int[] range);

    int count();
    
}
