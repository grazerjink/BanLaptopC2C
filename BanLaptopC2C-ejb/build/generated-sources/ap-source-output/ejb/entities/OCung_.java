package ejb.entities;

import ejb.entities.ThongSoKiThuat;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:10")
@StaticMetamodel(OCung.class)
public class OCung_ { 

    public static volatile SingularAttribute<OCung, Boolean> anHien;
    public static volatile ListAttribute<OCung, ThongSoKiThuat> thongSoKiThuatList;
    public static volatile SingularAttribute<OCung, Integer> id;
    public static volatile SingularAttribute<OCung, String> loaiOCung;
    public static volatile SingularAttribute<OCung, String> dungLuong;

}