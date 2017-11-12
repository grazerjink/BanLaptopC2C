package ejb.entities;

import ejb.entities.NguoiBan;
import ejb.entities.PhieuMuaHang;
import ejb.entities.SanPham;
import ejb.entities.TinhTrang;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(CtPhieuMuaHang.class)
public class CtPhieuMuaHang_ { 

    public static volatile SingularAttribute<CtPhieuMuaHang, TinhTrang> idTinhTrang;
    public static volatile SingularAttribute<CtPhieuMuaHang, Float> giaBan;
    public static volatile SingularAttribute<CtPhieuMuaHang, Integer> soLuongBan;
    public static volatile SingularAttribute<CtPhieuMuaHang, NguoiBan> idNguoiBan;
    public static volatile SingularAttribute<CtPhieuMuaHang, Integer> id;
    public static volatile SingularAttribute<CtPhieuMuaHang, PhieuMuaHang> idPhieuMuaHang;
    public static volatile SingularAttribute<CtPhieuMuaHang, SanPham> idSanPham;

}