/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.Admin;
import ejb.entities.CtPhieuMuaHang;
import ejb.entities.PhieuMuaHang;
import java.util.List;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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

    public List<PhieuMuaHang> layPhieuMuaHangTheoIDKH(int id) {
        Query qr = em.createQuery("Select p FROM PhieuMuaHang p Where p.idNguoiMua.id = :id");
        qr.setParameter("id", id);
        return qr.getResultList();
    }

    public List<CtPhieuMuaHang> layCtPhieuMuaHang(int id) {
        try {
            Query qr = em.createQuery("Select p From CtPhieuMuaHang p where p.idPhieuMuaHang.id= :id");
            qr.setParameter("id", id);
            return qr.getResultList();
        } catch (NoResultException ex) {
            return null;
        }
    }

}
