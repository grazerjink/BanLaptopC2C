/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.Admin;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Winson Mac
 */
@Stateless
@LocalBean
public class AdminBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public List<Admin> layDanhSachNguoiDungKhongKhoa() {
        String sql = "SELECT a FROM Admin a WHERE a.trangThai = :trangThai";
        Query query = em.createQuery(sql, Admin.class);
        query.setParameter("trangThai", true);
        return query.getResultList();
    }
    
    // Ham kiem tra xem Email co ton tai hay khong 
    
     public boolean kiemTraTonTaiEmail(String email) {
        Query query = em.createQuery("SELECT n FROM Admin n WHERE n.email=:e");
        query.setParameter("e", email);
        try {
            query.getSingleResult();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    // đăng nhập 
    public Admin layAdmintheoemail(String email) {
        Admin admin = new Admin();
        Query query = em.createQuery("SELECT n FROM Admin n WHERE n.email=:e");
        query.setParameter("e", email);
        try {
            admin = (Admin) query.getSingleResult();
        } catch (Exception e) {
            
        }
        return admin;
    }
    
    
}
