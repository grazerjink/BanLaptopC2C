package ejb.entities;

import ejb.entities.ThongSoKiThuat;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:31:55")
@StaticMetamodel(Cpu.class)
public class Cpu_ { 

    public static volatile SingularAttribute<Cpu, Boolean> anHien;
    public static volatile ListAttribute<Cpu, ThongSoKiThuat> thongSoKiThuatList;
    public static volatile SingularAttribute<Cpu, String> tocDo;
    public static volatile SingularAttribute<Cpu, Integer> id;
    public static volatile SingularAttribute<Cpu, String> tenCpu;

}