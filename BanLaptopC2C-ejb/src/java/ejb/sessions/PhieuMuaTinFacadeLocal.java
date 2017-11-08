/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.PhieuMuaTin;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface PhieuMuaTinFacadeLocal {

    void create(PhieuMuaTin phieuMuaTin);

    void edit(PhieuMuaTin phieuMuaTin);

    void remove(PhieuMuaTin phieuMuaTin);

    PhieuMuaTin find(Object id);

    List<PhieuMuaTin> findAll();

    List<PhieuMuaTin> findRange(int[] range);

    int count();
    
}
