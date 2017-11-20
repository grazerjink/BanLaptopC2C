/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Vivi
 */
@Entity
@Table(name = "thong_so_ki_thuat")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ThongSoKiThuat.findAll", query = "SELECT t FROM ThongSoKiThuat t")
    , @NamedQuery(name = "ThongSoKiThuat.findById", query = "SELECT t FROM ThongSoKiThuat t WHERE t.id = :id")
    , @NamedQuery(name = "ThongSoKiThuat.findByCardTichHop", query = "SELECT t FROM ThongSoKiThuat t WHERE t.cardTichHop = :cardTichHop")
    , @NamedQuery(name = "ThongSoKiThuat.findByKetNoiWifi", query = "SELECT t FROM ThongSoKiThuat t WHERE t.ketNoiWifi = :ketNoiWifi")
    , @NamedQuery(name = "ThongSoKiThuat.findByThoiLuongPin", query = "SELECT t FROM ThongSoKiThuat t WHERE t.thoiLuongPin = :thoiLuongPin")})
public class ThongSoKiThuat implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "card_tich_hop")
    private boolean cardTichHop;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ket_noi_wifi")
    private boolean ketNoiWifi;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "thoi_luong_pin")
    private String thoiLuongPin;
    @JoinColumn(name = "id_cpu", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Cpu idCpu;
    @JoinColumn(name = "id_do_phan_giai", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private DoPhanGiai idDoPhanGiai;
    @JoinColumn(name = "id_kich_thuoc_man_hinh", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private KichThuocManHinh idKichThuocManHinh;
    @JoinColumn(name = "id_loai_man_hinh", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private LoaiManHinh idLoaiManHinh;
    @JoinColumn(name = "id_o_cung", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private OCung idOCung;
    @JoinColumn(name = "id_ram", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Ram idRam;
    @JoinColumn(name = "id_san_pham", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private SanPham idSanPham;
    @JoinColumn(name = "id_card_man_hinh", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private CardManHinh idCardManHinh;

    public ThongSoKiThuat() {
    }

    public ThongSoKiThuat(Integer id) {
        this.id = id;
    }

    public ThongSoKiThuat(Integer id, boolean cardTichHop, boolean ketNoiWifi, String thoiLuongPin) {
        this.id = id;
        this.cardTichHop = cardTichHop;
        this.ketNoiWifi = ketNoiWifi;
        this.thoiLuongPin = thoiLuongPin;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean getCardTichHop() {
        return cardTichHop;
    }

    public void setCardTichHop(boolean cardTichHop) {
        this.cardTichHop = cardTichHop;
    }

    public boolean getKetNoiWifi() {
        return ketNoiWifi;
    }

    public void setKetNoiWifi(boolean ketNoiWifi) {
        this.ketNoiWifi = ketNoiWifi;
    }

    public String getThoiLuongPin() {
        return thoiLuongPin;
    }

    public void setThoiLuongPin(String thoiLuongPin) {
        this.thoiLuongPin = thoiLuongPin;
    }

    public Cpu getIdCpu() {
        return idCpu;
    }

    public void setIdCpu(Cpu idCpu) {
        this.idCpu = idCpu;
    }

    public DoPhanGiai getIdDoPhanGiai() {
        return idDoPhanGiai;
    }

    public void setIdDoPhanGiai(DoPhanGiai idDoPhanGiai) {
        this.idDoPhanGiai = idDoPhanGiai;
    }

    public KichThuocManHinh getIdKichThuocManHinh() {
        return idKichThuocManHinh;
    }

    public void setIdKichThuocManHinh(KichThuocManHinh idKichThuocManHinh) {
        this.idKichThuocManHinh = idKichThuocManHinh;
    }

    public LoaiManHinh getIdLoaiManHinh() {
        return idLoaiManHinh;
    }

    public void setIdLoaiManHinh(LoaiManHinh idLoaiManHinh) {
        this.idLoaiManHinh = idLoaiManHinh;
    }

    public OCung getIdOCung() {
        return idOCung;
    }

    public void setIdOCung(OCung idOCung) {
        this.idOCung = idOCung;
    }

    public Ram getIdRam() {
        return idRam;
    }

    public void setIdRam(Ram idRam) {
        this.idRam = idRam;
    }

    public SanPham getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(SanPham idSanPham) {
        this.idSanPham = idSanPham;
    }

    public CardManHinh getIdCardManHinh() {
        return idCardManHinh;
    }

    public void setIdCardManHinh(CardManHinh idCardManHinh) {
        this.idCardManHinh = idCardManHinh;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ThongSoKiThuat)) {
            return false;
        }
        ThongSoKiThuat other = (ThongSoKiThuat) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.ThongSoKiThuat[ id=" + id + " ]";
    }
    
}
