/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.business.SanPhamBusiness;
import ejb.business.ThongSoKiThuatBusiness;
import ejb.entities.SanPham;
import ejb.entities.ThongSoKiThuat;
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
    ThongSoKiThuatBusiness thongSoKiThuatBusiness = (ThongSoKiThuatBusiness) LookupFactory.lookupBeanBusiness("ThongSoKiThuatBusiness");

    public List<SanPham> layDanhSachSanPhamTheoNguoiBan(int idNguoiBan) {
        return sanPhamBusiness.layDanhSachSanPhamTheoNguoiBan(idNguoiBan);
    }

    public List<SanPham> layTatCaSanPham() {
        return sanPhamBusiness.layTatCaSanPham();
    }

    public SanPham timSanPhamTheoId(Integer id) {
        return sanPhamBusiness.timSanPhamTheoId(id);
    }
    
    public ThongSoKiThuat layThongSoKiThuatTheoSanPhamId(Integer id) {
        return thongSoKiThuatBusiness.layThongSoKiThuatTheoSanPham(id);
    }

    public List<SanPham> taiTrangTheoViTri(int idNguoiBan, int pageNo, int pageSize) {
        return sanPhamBusiness.laySanPhamTheoViTri(idNguoiBan, pageSize, pageNo);
    }

}
