/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.SanPham;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Winson Mac
 */
@Stateless
public class SanPhamFacade extends AbstractFacade<SanPham> implements SanPhamFacadeLocal {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SanPhamFacade() {
        super(SanPham.class);
    }
    
}
