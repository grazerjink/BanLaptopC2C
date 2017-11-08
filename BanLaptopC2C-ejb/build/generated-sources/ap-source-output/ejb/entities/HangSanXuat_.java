package ejb.entities;

import ejb.entities.SanPham;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:47:05")
@StaticMetamodel(HangSanXuat.class)
public class HangSanXuat_ { 

    public static volatile SingularAttribute<HangSanXuat, Boolean> anHien;
    public static volatile SingularAttribute<HangSanXuat, String> tenHang;
    public static volatile SingularAttribute<HangSanXuat, String> logoHang;
    public static volatile ListAttribute<HangSanXuat, SanPham> sanPhamList;
    public static volatile SingularAttribute<HangSanXuat, String> id;

}