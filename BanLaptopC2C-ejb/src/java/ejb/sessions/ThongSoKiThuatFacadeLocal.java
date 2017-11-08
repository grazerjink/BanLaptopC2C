/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.ThongSoKiThuat;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface ThongSoKiThuatFacadeLocal {

    void create(ThongSoKiThuat thongSoKiThuat);

    void edit(ThongSoKiThuat thongSoKiThuat);

    void remove(ThongSoKiThuat thongSoKiThuat);

    ThongSoKiThuat find(Object id);

    List<ThongSoKiThuat> findAll();

    List<ThongSoKiThuat> findRange(int[] range);

    int count();
    
}
