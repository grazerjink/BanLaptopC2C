/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.NguoiMua;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface NguoiMuaFacadeLocal {

    void create(NguoiMua nguoiMua);

    void edit(NguoiMua nguoiMua);

    void remove(NguoiMua nguoiMua);

    NguoiMua find(Object id);

    List<NguoiMua> findAll();

    List<NguoiMua> findRange(int[] range);

    int count();
    
}
