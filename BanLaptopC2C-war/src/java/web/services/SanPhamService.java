/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.SanPhamBusiness;
import ejb.entities.SanPham;
import java.util.List;
import org.springframework.stereotype.Component;
import web.commons.LookupFactory;

/**
 *
 * @author Winson Mac
 */
@Component
public class SanPhamService {

    SanPhamBusiness sanPhamBusiness = (SanPhamBusiness) LookupFactory.lookupBeanBusiness("SanPhamBusiness");

    public List<SanPham> layDanhSachSanPhamTheoNguoiBan(int idNguoiBan) {
        return sanPhamBusiness.layDanhSachSanPhamTheoNguoiBan(idNguoiBan);
    }

    public List<SanPham> layTatCaSanPham() {
        return sanPhamBusiness.layTatCaSanPham();
    }

    public SanPham timSanPhamTheoId(Integer id) {
        return sanPhamBusiness.timSanPhamTheoId(id);
    }

    public List<SanPham> taiTrangTheoViTri(int idNguoiBan, int pageNo, int pageSize) {
        return sanPhamBusiness.laySanPhamTheoViTri(idNguoiBan, pageSize, pageNo);
    }

}
