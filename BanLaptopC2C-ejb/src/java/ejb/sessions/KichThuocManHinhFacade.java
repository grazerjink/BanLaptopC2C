/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.sessions;

import ejb.entities.KichThuocManHinh;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author kjmok
 */
@Stateless
public class KichThuocManHinhFacade extends AbstractFacade<KichThuocManHinh> {

    @PersistenceContext(unitName = "BanLaptopC2C-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public KichThuocManHinhFacade() {
        super(KichThuocManHinh.class);
    }
    
}
