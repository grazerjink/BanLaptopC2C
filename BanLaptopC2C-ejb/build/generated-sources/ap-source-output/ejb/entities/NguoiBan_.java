package ejb.entities;

import ejb.entities.CtPhieuMuaHang;
import ejb.entities.DanhGia;
import ejb.entities.PhieuMuaTin;
import ejb.entities.SoTinTon;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:47:05")
@StaticMetamodel(NguoiBan.class)
public class NguoiBan_ { 

    public static volatile SingularAttribute<NguoiBan, String> soDienThoai;
    public static volatile SingularAttribute<NguoiBan, String> matKhau;
    public static volatile SingularAttribute<NguoiBan, Boolean> kichHoat;
    public static volatile ListAttribute<NguoiBan, CtPhieuMuaHang> ctPhieuMuaHangList;
    public static volatile ListAttribute<NguoiBan, DanhGia> danhGiaList;
    public static volatile SingularAttribute<NguoiBan, String> cmnd;
    public static volatile SingularAttribute<NguoiBan, String> diaChi;
    public static volatile ListAttribute<NguoiBan, PhieuMuaTin> phieuMuaTinList;
    public static volatile SingularAttribute<NguoiBan, Boolean> trangThai;
    public static volatile SingularAttribute<NguoiBan, Date> ngayDangKy;
    public static volatile SingularAttribute<NguoiBan, Integer> id;
    public static volatile SingularAttribute<NguoiBan, String> hoTen;
    public static volatile SingularAttribute<NguoiBan, String> email;
    public static volatile ListAttribute<NguoiBan, SoTinTon> soTinTonList;

}