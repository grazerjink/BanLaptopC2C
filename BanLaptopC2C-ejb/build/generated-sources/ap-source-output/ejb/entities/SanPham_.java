package ejb.entities;

import ejb.entities.CtPhieuMuaHang;
import ejb.entities.HangSanXuat;
import ejb.entities.ThongSoKiThuat;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:47:05")
@StaticMetamodel(SanPham.class)
public class SanPham_ { 

    public static volatile SingularAttribute<SanPham, Boolean> anHien;
    public static volatile SingularAttribute<SanPham, String> ghiChu;
    public static volatile SingularAttribute<SanPham, Float> giaBan;
    public static volatile SingularAttribute<SanPham, Integer> soLanMua;
    public static volatile ListAttribute<SanPham, CtPhieuMuaHang> ctPhieuMuaHangList;
    public static volatile SingularAttribute<SanPham, HangSanXuat> idHangSanXuat;
    public static volatile ListAttribute<SanPham, ThongSoKiThuat> thongSoKiThuatList;
    public static volatile SingularAttribute<SanPham, String> hinhAnh;
    public static volatile SingularAttribute<SanPham, Date> ngayDang;
    public static volatile SingularAttribute<SanPham, Boolean> trangThai;
    public static volatile SingularAttribute<SanPham, Integer> soLanXem;
    public static volatile SingularAttribute<SanPham, Integer> id;
    public static volatile SingularAttribute<SanPham, String> tenMay;
    public static volatile SingularAttribute<SanPham, String> moTa;
    public static volatile SingularAttribute<SanPham, String> biDanh;
    public static volatile SingularAttribute<SanPham, Integer> tonKho;

}