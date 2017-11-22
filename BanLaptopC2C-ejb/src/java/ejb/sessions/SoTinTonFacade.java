/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.SoTinTon;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Winson Mac
 */
@javax.ejb.Stateless
public class SoTinTonFacade extends AbstractFacade<SoTinTon> {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SoTinTonFacade() {
        super(SoTinTon.class);
    }
    
}
