/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.KhuVuc;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface KhuVucFacadeLocal {

    void create(KhuVuc khuVuc);

    void edit(KhuVuc khuVuc);

    void remove(KhuVuc khuVuc);

    KhuVuc find(Object id);

    List<KhuVuc> findAll();

    List<KhuVuc> findRange(int[] range);

    int count();
    
}
