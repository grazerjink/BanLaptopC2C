package ejb.entities;

import ejb.entities.NguoiBan;
import ejb.entities.PhieuMuaHang;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(DanhGia.class)
public class DanhGia_ { 

    public static volatile SingularAttribute<DanhGia, Boolean> suDung;
    public static volatile SingularAttribute<DanhGia, Integer> soDiem;
    public static volatile SingularAttribute<DanhGia, PhieuMuaHang> idDonHang;
    public static volatile SingularAttribute<DanhGia, NguoiBan> idNguoiBan;
    public static volatile SingularAttribute<DanhGia, Integer> id;

}