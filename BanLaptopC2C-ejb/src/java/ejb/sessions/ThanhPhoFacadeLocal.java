/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.ThanhPho;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface ThanhPhoFacadeLocal {

    void create(ThanhPho thanhPho);

    void edit(ThanhPho thanhPho);

    void remove(ThanhPho thanhPho);

    ThanhPho find(Object id);

    List<ThanhPho> findAll();

    List<ThanhPho> findRange(int[] range);

    int count();
    
}
