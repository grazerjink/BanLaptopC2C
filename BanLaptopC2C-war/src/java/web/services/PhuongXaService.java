/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.PhuongXaBusiness;
import ejb.entities.PhuongXa;
import ejb.entities.QuanHuyen;
import ejb.sessions.PhuongXaFacade;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class PhuongXaService {

    PhuongXaFacade phuongXaFacade = (PhuongXaFacade) LookupFactory.lookupBeanFacade("PhuongXaFacade");
    PhuongXaBusiness phuongXaBusiness = (PhuongXaBusiness) LookupFactory.lookupBeanBusiness("PhuongXaBusiness");

    public List<String> layDanhSachTenTheoQuanHuyen(Integer id) {
        List<String> dsTenPhuongXa = new ArrayList<>();
        dsTenPhuongXa.add("<option disabled selected>Chọn Phường/Xã</option>");

        List<PhuongXa> dsPhuongXa = phuongXaBusiness.layDanhSachTheoQuanHuyen(id);
        dsPhuongXa.forEach(it -> {
            dsTenPhuongXa.add("<option value='" + it.getId() + "'>" + it.getTenPhuongXa() + "</option>");
        });
        return dsTenPhuongXa;
    }
    
    public List<String> layDanhSachTenTheoQuanHuyen(QuanHuyen quanhuyen) {
        List<String> dsTenPhuongXa = new ArrayList<>();
        dsTenPhuongXa.add("<option disabled selected>Chọn Phường/Xã</option>");

        List<PhuongXa> dsPhuongXa = phuongXaBusiness.layDanhSachTheoQuanHuyen(quanhuyen);
        dsPhuongXa.forEach(it -> {
            dsTenPhuongXa.add("<option value='" + it.getId() + "'>" + it.getTenPhuongXa() + "</option>");
        });
        return dsTenPhuongXa;
    }
    public List<PhuongXa> layDanhSachPhuongXaTheoQuanHuyen(Integer id) {
        return phuongXaBusiness.layDanhSachTheoQuanHuyen(id);
    }
    
    public List<PhuongXa> layDanhSachPhuongXa() {
        return  phuongXaFacade.findAll();
    }

}
