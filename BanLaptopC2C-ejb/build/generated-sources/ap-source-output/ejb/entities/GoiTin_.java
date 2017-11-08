package ejb.entities;

import ejb.entities.PhieuMuaTin;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:31:55")
@StaticMetamodel(GoiTin.class)
public class GoiTin_ { 

    public static volatile ListAttribute<GoiTin, PhieuMuaTin> phieuMuaTinList;
    public static volatile SingularAttribute<GoiTin, Integer> soTin;
    public static volatile SingularAttribute<GoiTin, Float> giaBan;
    public static volatile SingularAttribute<GoiTin, String> id;
    public static volatile SingularAttribute<GoiTin, String> tenGoiTin;

}