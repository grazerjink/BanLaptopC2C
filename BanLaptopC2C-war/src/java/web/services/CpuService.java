/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.Cpu;
import ejb.sessions.CpuFacade;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class CpuService {
    
    CpuFacade cpuFacade = (CpuFacade) LookupFactory.lookupBeanFacade("CpuFacade");
    
    public List<Cpu> layDanhSachCpu() {
        return cpuFacade.findAll();
    }
}
