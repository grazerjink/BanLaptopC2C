package ejb.entities;

import ejb.entities.ThongSoKiThuat;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:47:05")
@StaticMetamodel(ManHinh.class)
public class ManHinh_ { 

    public static volatile SingularAttribute<ManHinh, Boolean> anHien;
    public static volatile ListAttribute<ManHinh, ThongSoKiThuat> thongSoKiThuatList;
    public static volatile SingularAttribute<ManHinh, String> doPhanGiai;
    public static volatile SingularAttribute<ManHinh, String> kichThuoc;
    public static volatile SingularAttribute<ManHinh, String> loaiManHinh;
    public static volatile SingularAttribute<ManHinh, Integer> id;

}