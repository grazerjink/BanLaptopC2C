package ejb.entities;

import ejb.entities.CtPhieuMuaHang;
import ejb.entities.DanhGia;
import ejb.entities.KhuVuc;
import ejb.entities.NguoiMua;
import ejb.entities.QuanHuyen;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(PhieuMuaHang.class)
public class PhieuMuaHang_ { 

    public static volatile SingularAttribute<PhieuMuaHang, String> soDienThoai;
    public static volatile SingularAttribute<PhieuMuaHang, String> emailNhan;
    public static volatile SingularAttribute<PhieuMuaHang, QuanHuyen> idQuanHuyen;
    public static volatile SingularAttribute<PhieuMuaHang, String> ghiChu;
    public static volatile SingularAttribute<PhieuMuaHang, String> tenNguoiNhan;
    public static volatile ListAttribute<PhieuMuaHang, CtPhieuMuaHang> ctPhieuMuaHangList;
    public static volatile ListAttribute<PhieuMuaHang, DanhGia> danhGiaList;
    public static volatile SingularAttribute<PhieuMuaHang, String> diaChiGiao;
    public static volatile SingularAttribute<PhieuMuaHang, KhuVuc> idKhuVuc;
    public static volatile SingularAttribute<PhieuMuaHang, NguoiMua> idNguoiMua;
    public static volatile SingularAttribute<PhieuMuaHang, Boolean> trangThai;
    public static volatile SingularAttribute<PhieuMuaHang, Date> ngayDatHang;
    public static volatile SingularAttribute<PhieuMuaHang, Date> ngayGiaoHang;
    public static volatile SingularAttribute<PhieuMuaHang, Integer> id;

}