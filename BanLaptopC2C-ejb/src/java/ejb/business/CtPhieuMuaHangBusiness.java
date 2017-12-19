/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.CtPhieuMuaHang;
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
public class CtPhieuMuaHangBusiness {

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

    public List<CtPhieuMuaHang> layDanhSachDonHangTheoIdVaTinhTrang(int idNguoiBan, String tinhTrang) {
        String hql = "SELECT d FROM CtPhieuMuaHang d WHERE d.idNguoiBan.id = :idNguoiBan AND d.idTinhTrang.id = :idTinhTrang";
        try {
            Query q = em.createQuery(hql);
            q.setParameter("idNguoiBan", idNguoiBan);
            q.setParameter("idTinhTrang", tinhTrang);
            List<CtPhieuMuaHang> list = q.getResultList();
            return list;
        } catch (NoResultException ex) {
            return null;
        }
    }

    public List<CtPhieuMuaHang> layDanhSachDonHangTheoKhoangThoiGianKemIdVaTinhTrang(Integer idNguoiBan, Date batDau, Date ketThuc, String idTinhTrang) {
        String hql = "SELECT d FROM CtPhieuMuaHang d WHERE "
                + "d.idNguoiBan.id = :idNguoiBan AND d.idTinhTrang.id = :idTinhTrang "
                + "AND d.idPhieuMuaHang.ngayDatHang BETWEEN :batDau AND :ketThuc";
        try {
            Query q = em.createQuery(hql);
            q.setParameter("idNguoiBan", idNguoiBan);
            q.setParameter("idTinhTrang", idTinhTrang);
            q.setParameter("batDau", batDau);
            q.setParameter("ketThuc", ketThuc);
            List<CtPhieuMuaHang> list = q.getResultList();
            return list;
        } catch (NoResultException ex) {
            return null;
        }
    }

}
