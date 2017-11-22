/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.NguoiBan;
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
public class NguoiBanBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    public NguoiBan timTheoEmail(String email) {
        try {
            Query q = em.createNamedQuery("NguoiBan.findByEmail");
            q.setParameter("email", email);
            return (NguoiBan) q.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }

    public NguoiBan timTheoCMND(String cmnd) {
        try {
            Query q = em.createNamedQuery("NguoiBan.findByCmnd");
            q.setParameter("cmnd", cmnd);
            return (NguoiBan) q.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }
}
