package ejb.entities;

import ejb.entities.PhieuMuaHang;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(NguoiMua.class)
public class NguoiMua_ { 

    public static volatile SingularAttribute<NguoiMua, String> soDienThoai;
    public static volatile SingularAttribute<NguoiMua, String> diaChi;
    public static volatile SingularAttribute<NguoiMua, String> matKhau;
    public static volatile ListAttribute<NguoiMua, PhieuMuaHang> phieuMuaHangList;
    public static volatile SingularAttribute<NguoiMua, Boolean> trangThai;
    public static volatile SingularAttribute<NguoiMua, Date> ngaySinh;
    public static volatile SingularAttribute<NguoiMua, Date> ngayDangKi;
    public static volatile SingularAttribute<NguoiMua, Boolean> kichHoat;
    public static volatile SingularAttribute<NguoiMua, Integer> id;
    public static volatile SingularAttribute<NguoiMua, String> hoTen;
    public static volatile SingularAttribute<NguoiMua, String> email;

}