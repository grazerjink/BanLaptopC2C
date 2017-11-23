/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.commons;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author Winson Mac
 */
public class LookupFactory {  
    
    public static Object lookupBeanBusiness(String beanName) {
        String strLookup = "java:global/BanLaptopC2C/BanLaptopC2C-ejb/"+beanName+"!ejb.business."+beanName;
        try {
            Context c = new InitialContext();
            return c.lookup(strLookup);
        } catch (NamingException ne) {
            Logger.getLogger(LookupFactory.class.getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    public static Object lookupBeanFacade(String beanName) {
        String strLookup = "java:global/BanLaptopC2C/BanLaptopC2C-ejb/"+beanName+"!ejb.sessions."+beanName;
        try {
            Context c = new InitialContext();
            return c.lookup(strLookup);
        } catch (NamingException ne) {
            Logger.getLogger(LookupFactory.class.getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
