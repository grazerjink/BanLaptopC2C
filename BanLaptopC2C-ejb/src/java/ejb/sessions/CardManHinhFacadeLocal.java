/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.CardManHinh;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface CardManHinhFacadeLocal {

    void create(CardManHinh cardManHinh);

    void edit(CardManHinh cardManHinh);

    void remove(CardManHinh cardManHinh);

    CardManHinh find(Object id);

    List<CardManHinh> findAll();

    List<CardManHinh> findRange(int[] range);

    int count();
    
}
