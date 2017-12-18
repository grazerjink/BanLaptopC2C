/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.CtPhieuMuaHang;
import ejb.entities.PhieuMuaHang;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Administrator
 */
@Stateless
@LocalBean
public class PhieuMuaHangCBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    public List<PhieuMuaHang> layPhieuMuaHangTheoIDKH(int id)
    {
        Query qr = em.createQuery("Select p FROM PhieuMuaHang p Where p.idNguoiMua.id = :id");
        qr.setParameter("id", id);
        return qr.getResultList();
    }
    
    public List<CtPhieuMuaHang> layCtPhieuMuaHang(int id)
    {
        Query qr = em.createQuery("Select p From CtPhieuMuaHang p where p.idPhieuMuaHang.id= :id");
        qr.setParameter("id", id);
        return qr.getResultList();
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
