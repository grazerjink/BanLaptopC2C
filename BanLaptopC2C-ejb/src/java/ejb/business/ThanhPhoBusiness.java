/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.ThanhPho;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Winson Mac
 */
@Stateless
public class ThanhPhoBusiness implements ThanhPhoBusinessLocal {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
    public List<ThanhPho> layDanhSachThanhPho() {
        String hql = "FROM ThanhPho t ORDER BY t.tenThanhPho ASC";
        Query query = em.createQuery(hql);
        return query.getResultList();
    }

}
