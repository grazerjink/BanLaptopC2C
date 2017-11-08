package ejb.entities;

import ejb.entities.NguoiBan;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:31:55")
@StaticMetamodel(SoTinTon.class)
public class SoTinTon_ { 

    public static volatile SingularAttribute<SoTinTon, Integer> soTinDaDung;
    public static volatile SingularAttribute<SoTinTon, NguoiBan> idNguoiBan;
    public static volatile SingularAttribute<SoTinTon, Integer> soTinTon;
    public static volatile SingularAttribute<SoTinTon, Date> ngayCapNhat;
    public static volatile SingularAttribute<SoTinTon, Integer> id;

}