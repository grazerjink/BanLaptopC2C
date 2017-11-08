package ejb.entities;

import ejb.entities.PhieuMuaHang;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:31:55")
@StaticMetamodel(QuanHuyen.class)
public class QuanHuyen_ { 

    public static volatile SingularAttribute<QuanHuyen, String> tenQuanHuyen;
    public static volatile ListAttribute<QuanHuyen, PhieuMuaHang> phieuMuaHangList;
    public static volatile SingularAttribute<QuanHuyen, Integer> id;

}