/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.NguoiBan;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface NguoiBanFacadeLocal {

    void create(NguoiBan nguoiBan);

    void edit(NguoiBan nguoiBan);

    void remove(NguoiBan nguoiBan);

    NguoiBan find(Object id);

    List<NguoiBan> findAll();

    List<NguoiBan> findRange(int[] range);

    int count();
    
}
