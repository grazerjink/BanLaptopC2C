/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.QuanHuyen;
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
public class QuanHuyenBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public List<QuanHuyen> layDanhSachTheoThanhPho(Integer id) {
        String hql = "FROM QuanHuyen q WHERE q.idThanhPho.id = :id ORDER BY q.tenQuanHuyen";
        Query query = em.createQuery(hql);
        query.setParameter("id", id);
        return query.getResultList();
    }   
    
}
