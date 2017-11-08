package ejb.entities;

import ejb.entities.GoiTin;
import ejb.entities.NguoiBan;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-08T15:31:55")
@StaticMetamodel(PhieuMuaTin.class)
public class PhieuMuaTin_ { 

    public static volatile SingularAttribute<PhieuMuaTin, Date> ngayGiaoDich;
    public static volatile SingularAttribute<PhieuMuaTin, Boolean> trangThai;
    public static volatile SingularAttribute<PhieuMuaTin, Float> giaBan;
    public static volatile SingularAttribute<PhieuMuaTin, NguoiBan> idNguoiBan;
    public static volatile SingularAttribute<PhieuMuaTin, Integer> phuongThucThanhToan;
    public static volatile SingularAttribute<PhieuMuaTin, Integer> id;
    public static volatile SingularAttribute<PhieuMuaTin, GoiTin> idGoiTin;

}