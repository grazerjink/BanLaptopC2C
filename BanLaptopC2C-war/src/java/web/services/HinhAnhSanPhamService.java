/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.HinhAnhSanPhamBusiness;
import ejb.entities.HinhAnhSanPham;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class HinhAnhSanPhamService {
    
    HinhAnhSanPhamBusiness hinhAnhSanPhamBusiness = (HinhAnhSanPhamBusiness)LookupFactory.lookupBeanBusiness("HinhAnhSanPhamBusiness");
    
    public List<HinhAnhSanPham> layDanhSachHinhAnhTheoIdSanPham(int idSanPham) {
        return hinhAnhSanPhamBusiness.getListHinhAnhBySanPhamId(idSanPham);
    }
    
}
