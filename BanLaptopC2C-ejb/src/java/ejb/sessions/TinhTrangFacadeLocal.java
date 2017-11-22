/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.TinhTrang;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface TinhTrangFacadeLocal {

    void create(TinhTrang tinhTrang);

    void edit(TinhTrang tinhTrang);

    void remove(TinhTrang tinhTrang);

    TinhTrang find(Object id);

    List<TinhTrang> findAll();

    List<TinhTrang> findRange(int[] range);

    int count();
    
}
