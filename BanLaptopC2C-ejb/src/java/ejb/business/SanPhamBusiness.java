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
            List<SanPham> list = q.getResultList();
            return list;
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> layTatCaSanPham() {
        try {
            em.flush();
            Query q = em.createNamedQuery("SanPham.findAll");
            List<SanPham> sp = q.getResultList();
            sp.forEach(x -> {
                x.getHinhAnhSanPhamList().size();
            });
            Collections.shuffle(sp);
            return sp;
        } catch (NoResultException e) {
            return null;
        }
    }

    public SanPham timSanPhamTheoId(Integer id) {
        try {
            Query q = em.createNamedQuery("SanPham.findById");
            q.setParameter("id", id);
            SanPham sp = (SanPham) q.getSingleResult();
            sp.getHinhAnhSanPhamList().size();
            sp.getThongSoKiThuatList().size();
            return sp;
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> laySanPhamTheoViTri(int idNguoiBan, int pageSize, int pageNo) {
        try {
            Query q = em.createQuery("SELECT s FROM SanPham s WHERE s.idNguoiBan.id = :id");
            q.setParameter("id", idNguoiBan);
            q.setMaxResults(pageSize);
            q.setFirstResult(pageNo * pageSize);
            List<SanPham> list = q.getResultList();
            return list;
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> danhsachspmoi() {
        try {
            em.flush();
            Query q = em.createQuery("SELECT s FROM SanPham s ORDER BY S.id DESC");

            return q.getResultList();
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> danhsachspxemnhieu() {
        try {
            em.flush();
            Query q = em.createQuery("SELECT s FROM SanPham s ORDER BY S.soLanXem DESC");
            return q.getResultList();
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> danhsachspbanchay() {
        try {
            em.flush();
            Query q = em.createQuery("SELECT s FROM SanPham s ORDER BY S.soLanMua DESC");

            return q.getResultList();
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<SanPham> timkiemnangcao(String query) {
        Query qr = em.createQuery(query);
//        Query qr1 = em.createNativeQuery("select * from SanPham", SanPham.class);
        return qr.getResultList();
    }
}
