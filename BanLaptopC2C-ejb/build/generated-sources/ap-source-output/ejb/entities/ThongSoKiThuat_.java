package ejb.entities;

import ejb.entities.CardManHinh;
import ejb.entities.Cpu;
import ejb.entities.DoPhanGiai;
import ejb.entities.KichThuocManHinh;
import ejb.entities.LoaiManHinh;
import ejb.entities.OCung;
import ejb.entities.Ram;
import ejb.entities.SanPham;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-11-12T23:51:09")
@StaticMetamodel(ThongSoKiThuat.class)
public class ThongSoKiThuat_ { 

    public static volatile SingularAttribute<ThongSoKiThuat, Boolean> cardTichHop;
    public static volatile SingularAttribute<ThongSoKiThuat, LoaiManHinh> idLoaiManHinh;
    public static volatile SingularAttribute<ThongSoKiThuat, OCung> idOCung;
    public static volatile SingularAttribute<ThongSoKiThuat, Ram> idRam;
    public static volatile SingularAttribute<ThongSoKiThuat, Boolean> ketNoiWifi;
    public static volatile SingularAttribute<ThongSoKiThuat, DoPhanGiai> idDoPhanGiai;
    public static volatile SingularAttribute<ThongSoKiThuat, Integer> id;
    public static volatile SingularAttribute<ThongSoKiThuat, Cpu> idCpu;
    public static volatile SingularAttribute<ThongSoKiThuat, KichThuocManHinh> idKichThuocManHinh;
    public static volatile SingularAttribute<ThongSoKiThuat, CardManHinh> idCardManHinh;
    public static volatile SingularAttribute<ThongSoKiThuat, String> thoiLuongPin;
    public static volatile SingularAttribute<ThongSoKiThuat, SanPham> idSanPham;

}