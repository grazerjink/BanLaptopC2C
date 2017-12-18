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
import web.viewmodels.SanPhamSearchViewModel;

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

    public List<SanPham> danhsachspmoi()
    {
        return sanPhamBusiness.danhsachspmoi();
    }
    
    public List<SanPham> danhsachspbanchay()
    {
        return sanPhamBusiness.danhsachspbanchay();
    }
    public List<SanPham> danhsachspxemnhieu()
    {
        return sanPhamBusiness.danhsachspxemnhieu();
    }
    public List<SanPham> timkiemsanphamnangcao(SanPhamSearchViewModel sanphamVM)
    {
        String query= "Select s From SanPham s where ";
        if(sanphamVM.getTen()!=null)
            query +=" s.tenMay like '%"+sanphamVM.getTen()+"%' ";
        else query +=" s.tenMay like '%%' ";
        try{
        if( sanphamVM.getNguoiBan() != 0)
            query += " and s.idNguoiBan.id ="+sanphamVM.getNguoiBan()+" ";
        }
        catch(Exception ex)
        {
            
        }
        if(sanphamVM.getHang()!="")
            query += " and s.idHangSanXuat.id ='" +sanphamVM.getHang()+"'";
        if(sanphamVM.getGia()==1)
            query += " and s.giaBan <= 20000000";
        if(sanphamVM.getGia()==2)
            query += " and s.giaBan between 20000000 and 25000000";
        if(sanphamVM.getGia()==3)
            query += " and s.giaBan between 25000000 and 30000000";
        if(sanphamVM.getGia()==4)
            query += " and s.giaBan > 30000000 ";
        return sanPhamBusiness.timkiemnangcao(query);
    }
}
