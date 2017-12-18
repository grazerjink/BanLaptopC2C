/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.business;

import ejb.entities.PhieuMuaTin;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Winson Mac
 */
@Stateless
@LocalBean
public class PhieuMuaTinBusiness {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
    public int taoPhieuMuaTin(PhieuMuaTin phieuMuaTin) {
        em.persist(phieuMuaTin);
        em.flush();
        return phieuMuaTin.getId();
    }
    
}
