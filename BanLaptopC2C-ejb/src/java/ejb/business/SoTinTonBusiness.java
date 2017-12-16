/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.NguoiBan;
import ejb.entities.SoTinTon;
import java.util.Date;
import java.util.List;
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
public class SoTinTonBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public int laySoTinTheoNguoiBanVaThoiGian(Integer id, Date thoiGian) {
        try {
            Query q = em.createQuery("FROM SoTinTon s "
                    + "WHERE s.idNguoiBan.id = :id AND s.ngayCapNhat <= :date "
                    + "ORDER BY s.ngayCapNhat DESC");
            q.setParameter("id", id);
            q.setParameter("date", thoiGian);
            SoTinTon soTin = (SoTinTon) q.getResultList().get(0);
            return soTin.getSoTinTon();
        } catch (Exception ex) {
            return 0;
        }
    }

    public List<SoTinTon> layLichSuTinDangTheoIdNguoiBan(Integer id) {
        try {
            Query q = em.createQuery("FROM SoTinTon s "
                    + "WHERE s.idNguoiBan.id = :id "
                    + "ORDER BY s.ngayCapNhat DESC");
            q.setParameter("id", id);
            List<SoTinTon> list = q.getResultList();
            return list;
        } catch (NoResultException ex) {
            return null;
        }
    }

}
