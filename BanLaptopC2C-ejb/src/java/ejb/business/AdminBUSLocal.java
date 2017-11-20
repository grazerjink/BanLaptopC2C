/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.Admin;
import ejb.entities.PhieuMuaTin;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vivi
 */
@Local
public interface AdminBUSLocal {
    
    List<Admin> layDanhSachNguoiDungKhongKhoa();
    
}
