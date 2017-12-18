/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.DanhGia;
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
public class DanhGiaBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public DanhGia timLuotDanhGiaTheoIdDonHang(int idDonHang) {
        try {
            // idDonHang là id của ct phiếu mua hàng
            Query q = em.createQuery("SELECT d FROM DanhGia d WHERE d.idDonHang.id = :id");
            q.setParameter("id", idDonHang);
            return (DanhGia) q.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public List<DanhGia> layDanhSachDanhGia(int id_customer) {
        Query qr = em.createQuery("select d from DanhGia d "
                + "where d.idDonHang.idPhieuMuaHang.idNguoiMua.id = :id_customer and d.suDung = true");
        return qr.getResultList();
    }
}
