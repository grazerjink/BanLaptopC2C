package ejb.entities;

import ejb.entities.ThongSoKiThuat;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:31:55")
@StaticMetamodel(Ram.class)
public class Ram_ { 

    public static volatile SingularAttribute<Ram, String> loaiRam;
    public static volatile SingularAttribute<Ram, Boolean> anHien;
    public static volatile ListAttribute<Ram, ThongSoKiThuat> thongSoKiThuatList;
    public static volatile SingularAttribute<Ram, Integer> id;
    public static volatile SingularAttribute<Ram, String> dungLuong;

}