/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.SoTinTon;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface SoTinTonFacadeLocal {

    void create(SoTinTon soTinTon);

    void edit(SoTinTon soTinTon);

    void remove(SoTinTon soTinTon);

    SoTinTon find(Object id);

    List<SoTinTon> findAll();

    List<SoTinTon> findRange(int[] range);

    int count();
    
}
