/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.GoiTin;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface GoiTinFacadeLocal {

    void create(GoiTin goiTin);

    void edit(GoiTin goiTin);

    void remove(GoiTin goiTin);

    GoiTin find(Object id);

    List<GoiTin> findAll();

    List<GoiTin> findRange(int[] range);

    int count();
    
}
