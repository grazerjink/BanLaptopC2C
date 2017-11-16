/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.PhuongXa;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Winson Mac
 */
@Local
public interface PhuongXaBusinessLocal {
    List<PhuongXa> layDanhSachTheoQuanHuyen(Integer id);
}
