package ejb.entities;

import ejb.entities.ThongSoKiThuat;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(CardManHinh.class)
public class CardManHinh_ { 

    public static volatile SingularAttribute<CardManHinh, Boolean> anHien;
    public static volatile ListAttribute<CardManHinh, ThongSoKiThuat> thongSoKiThuatList;
    public static volatile SingularAttribute<CardManHinh, String> tenCard;
    public static volatile SingularAttribute<CardManHinh, Integer> id;
    public static volatile SingularAttribute<CardManHinh, Integer> dungLuong;

}