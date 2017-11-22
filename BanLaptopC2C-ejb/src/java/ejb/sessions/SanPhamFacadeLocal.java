/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.SanPham;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface SanPhamFacadeLocal {

    void create(SanPham sanPham);

    void edit(SanPham sanPham);

    void remove(SanPham sanPham);

    SanPham find(Object id);

    List<SanPham> findAll();

    List<SanPham> findRange(int[] range);

    int count();
    
}
