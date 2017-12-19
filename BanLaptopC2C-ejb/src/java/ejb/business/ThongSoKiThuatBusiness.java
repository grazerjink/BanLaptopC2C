/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.ThongSoKiThuat;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Winson Mac
 */
@Stateless
@LocalBean
public class ThongSoKiThuatBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public ThongSoKiThuat layThongSoKiThuatTheoSanPham(Integer idSanPham) {
        try {
            Query q = em.createQuery("SELECT t FROM ThongSoKiThuat t WHERE t.idSanPham.id = :id");
            q.setParameter("id", idSanPham);
            return (ThongSoKiThuat) q.getSingleResult();
        }
        catch(NoResultException e) {
            return null;
        }
    }   
}
