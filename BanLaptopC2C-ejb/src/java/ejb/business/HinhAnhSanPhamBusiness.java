/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.HinhAnhSanPham;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Winson Mac
 */
@Stateless
@LocalBean
public class HinhAnhSanPhamBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
    public List<HinhAnhSanPham> getListHinhAnhBySanPhamId(int idSanPham) {
        Query q = em.createQuery("SELECT h FROM HinhAnhSanPham h WHERE h.idSanPham.id = :id");
        q.setParameter("id", idSanPham);
        List<HinhAnhSanPham> list = q.getResultList();
        return list;
    }
    
}
