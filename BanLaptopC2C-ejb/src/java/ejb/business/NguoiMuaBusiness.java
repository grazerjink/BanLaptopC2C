/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.NguoiMua;
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
public class NguoiMuaBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public int themThongTinNguoiMua(NguoiMua nguoiMua) {
        em.persist(nguoiMua);
        em.flush();
        return nguoiMua.getId();
    }

    public NguoiMua timTheoSoDienThoai(String soDienThoai) {
        try {
            Query q = em.createNamedQuery("NguoiMua.findBySoDienThoai");
            q.setParameter("soDienThoai", soDienThoai);
            NguoiMua nguoiMua = (NguoiMua) q.getSingleResult();
            return nguoiMua;
        }
        catch(Exception ex) {
            return null;
        }
    }

    public NguoiMua timTheoEmail(String email) {
        try {
            Query q = em.createNamedQuery("NguoiMua.findByEmail");
            q.setParameter("email", email);
            NguoiMua nguoiMua = (NguoiMua) q.getSingleResult();
            return nguoiMua;
        }
        catch(Exception ex) {
            return null;
        }
    }

}
