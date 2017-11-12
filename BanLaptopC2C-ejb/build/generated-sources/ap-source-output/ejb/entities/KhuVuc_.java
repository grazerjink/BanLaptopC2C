package ejb.entities;

import ejb.entities.PhieuMuaHang;
import ejb.entities.QuanHuyen;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(KhuVuc.class)
public class KhuVuc_ { 

    public static volatile ListAttribute<KhuVuc, QuanHuyen> quanHuyenList;
    public static volatile ListAttribute<KhuVuc, PhieuMuaHang> phieuMuaHangList;
    public static volatile SingularAttribute<KhuVuc, String> tenKhuVuc;
    public static volatile SingularAttribute<KhuVuc, Integer> id;

}