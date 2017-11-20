/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.Admin;
import ejb.entities.PhieuMuaTin;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Vivi
 */
@Stateless
public class AdminBUS implements AdminBUSLocal {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
    public List<Admin> layDanhSachNguoiDungKhongKhoa() {
        String sql = "SELECT a FROM Admin a WHERE a.trangThai = :trangThai";
        Query query  = em.createQuery(sql, Admin.class);
        query.setParameter("trangThai", true);
        return query.getResultList();
    }
    
}
