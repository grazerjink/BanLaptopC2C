/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.Admin;
import ejb.entities.CtPhieuMuaHang;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Vivi
 */

@Stateless
@LocalBean
public class PhieuMuaHangBusiness {
    
    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
    public List<CtPhieuMuaHang> layChiTietPhieuMua(Integer id)
    {
        String sql = "SELECT pm from CtPhieuMuaHang pm where pm.idPhieuMuaHang.id = :id";
        Query query = em.createQuery(sql,CtPhieuMuaHang.class); 
        query.setParameter("id",id);
        return query.getResultList();
        
    }
}
