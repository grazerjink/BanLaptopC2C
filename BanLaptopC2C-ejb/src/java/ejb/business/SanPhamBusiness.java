/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.SanPham;
import java.util.Collections;
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
public class SanPhamBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public int themSanPham(SanPham sanPham) {
        em.persist(sanPham);
        em.flush();
        return sanPham.getId();
    }

    public List<SanPham> layDanhSachSanPhamTheoNguoiBan(int idNguoiBan) {
        try {
            Query q = em.createQuery("SELECT s FROM SanPham s WHERE s.idNguoiBan.id = :id");
            q.setParameter("id", idNguoiBan);
            List<SanPham> sp = q.getResultList();
            sp.forEach(x -> {
                x.getHinhAnhSanPhamList().size();
            });
            return sp;
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> layTatCaSanPham() {
        try {
            Query q = em.createNamedQuery("SanPham.findAll");
            List<SanPham> sp = q.getResultList();            
            Collections.shuffle(sp);
            sp.forEach(x -> {
                x.getHinhAnhSanPhamList().size();
                x.getThongSoKiThuatList().size();
            });
            return sp;
        } catch (NoResultException e) {
            return null;
        }
    }

}
