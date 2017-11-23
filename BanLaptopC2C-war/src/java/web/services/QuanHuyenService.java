/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.QuanHuyenBusiness;
import ejb.entities.QuanHuyen;
import ejb.sessions.QuanHuyenFacade;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class QuanHuyenService {

    QuanHuyenFacade quanHuyenFacade = (QuanHuyenFacade) LookupFactory.lookupBeanFacade("QuanHuyenFacade");
    QuanHuyenBusiness quanHuyenBusiness = (QuanHuyenBusiness) LookupFactory.lookupBeanBusiness("QuanHuyenBusiness");

    public List<String> layDanhSachTheoThanhPho(Integer id) {
        List<String> dsTenQuanHuyen = new ArrayList<>();
        dsTenQuanHuyen.add("<option disabled selected>Chọn Quận/Huyện</option>");

        List<QuanHuyen> dsQuanHuyen = quanHuyenBusiness.layDanhSachTheoThanhPho(id);
        dsQuanHuyen.forEach(it -> {
            dsTenQuanHuyen.add("<option value='" + it.getId() + "'>" + it.getTenQuanHuyen() + "</option>");
        });
        return dsTenQuanHuyen;
    }
    
    public List<QuanHuyen> layDanhSachQuanHuyen() {
        return  quanHuyenFacade.findAll();
    }

}
