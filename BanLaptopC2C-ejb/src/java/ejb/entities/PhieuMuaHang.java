/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Vivi
 */
@Entity
@Table(name = "phieu_mua_hang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PhieuMuaHang.findAll", query = "SELECT p FROM PhieuMuaHang p")
    , @NamedQuery(name = "PhieuMuaHang.findById", query = "SELECT p FROM PhieuMuaHang p WHERE p.id = :id")
    , @NamedQuery(name = "PhieuMuaHang.findByEmailNhan", query = "SELECT p FROM PhieuMuaHang p WHERE p.emailNhan = :emailNhan")
    , @NamedQuery(name = "PhieuMuaHang.findBySoDienThoai", query = "SELECT p FROM PhieuMuaHang p WHERE p.soDienThoai = :soDienThoai")
    , @NamedQuery(name = "PhieuMuaHang.findByTenNguoiNhan", query = "SELECT p FROM PhieuMuaHang p WHERE p.tenNguoiNhan = :tenNguoiNhan")
    , @NamedQuery(name = "PhieuMuaHang.findByDiaChiGiao", query = "SELECT p FROM PhieuMuaHang p WHERE p.diaChiGiao = :diaChiGiao")
    , @NamedQuery(name = "PhieuMuaHang.findByGhiChu", query = "SELECT p FROM PhieuMuaHang p WHERE p.ghiChu = :ghiChu")
    , @NamedQuery(name = "PhieuMuaHang.findByTongTien", query = "SELECT p FROM PhieuMuaHang p WHERE p.tongTien = :tongTien")
    , @NamedQuery(name = "PhieuMuaHang.findByNgayDatHang", query = "SELECT p FROM PhieuMuaHang p WHERE p.ngayDatHang = :ngayDatHang")})
public class PhieuMuaHang implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "email_nhan")
    private String emailNhan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 11)
    @Column(name = "so_dien_thoai")
    private String soDienThoai;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_nguoi_nhan")
    private String tenNguoiNhan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "dia_chi_giao")
    private String diaChiGiao;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ghi_chu")
    private String ghiChu;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tong_tien")
    private float tongTien;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngay_dat_hang")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayDatHang;
    @JoinColumn(name = "id_nguoi_mua", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private NguoiMua idNguoiMua;
    @JoinColumn(name = "id_phuong_xa", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private PhuongXa idPhuongXa;
    @JoinColumn(name = "id_quan_huyen", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private QuanHuyen idQuanHuyen;
    @JoinColumn(name = "id_thanh_pho", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ThanhPho idThanhPho;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPhieuMuaHang", fetch = FetchType.LAZY)
    private List<CtPhieuMuaHang> ctPhieuMuaHangList;

    public PhieuMuaHang() {
    }

    public PhieuMuaHang(Integer id) {
        this.id = id;
    }

    public PhieuMuaHang(Integer id, String emailNhan, String soDienThoai, String tenNguoiNhan, String diaChiGiao, String ghiChu, float tongTien, Date ngayDatHang) {
        this.id = id;
        this.emailNhan = emailNhan;
        this.soDienThoai = soDienThoai;
        this.tenNguoiNhan = tenNguoiNhan;
        this.diaChiGiao = diaChiGiao;
        this.ghiChu = ghiChu;
        this.tongTien = tongTien;
        this.ngayDatHang = ngayDatHang;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmailNhan() {
        return emailNhan;
    }

    public void setEmailNhan(String emailNhan) {
        this.emailNhan = emailNhan;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getTenNguoiNhan() {
        return tenNguoiNhan;
    }

    public void setTenNguoiNhan(String tenNguoiNhan) {
        this.tenNguoiNhan = tenNguoiNhan;
    }

    public String getDiaChiGiao() {
        return diaChiGiao;
    }

    public void setDiaChiGiao(String diaChiGiao) {
        this.diaChiGiao = diaChiGiao;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public Date getNgayDatHang() {
        return ngayDatHang;
    }

    public void setNgayDatHang(Date ngayDatHang) {
        this.ngayDatHang = ngayDatHang;
    }

    public NguoiMua getIdNguoiMua() {
        return idNguoiMua;
    }

    public void setIdNguoiMua(NguoiMua idNguoiMua) {
        this.idNguoiMua = idNguoiMua;
    }

    public PhuongXa getIdPhuongXa() {
        return idPhuongXa;
    }

    public void setIdPhuongXa(PhuongXa idPhuongXa) {
        this.idPhuongXa = idPhuongXa;
    }

    public QuanHuyen getIdQuanHuyen() {
        return idQuanHuyen;
    }

    public void setIdQuanHuyen(QuanHuyen idQuanHuyen) {
        this.idQuanHuyen = idQuanHuyen;
    }

    public ThanhPho getIdThanhPho() {
        return idThanhPho;
    }

    public void setIdThanhPho(ThanhPho idThanhPho) {
        this.idThanhPho = idThanhPho;
    }

    @XmlTransient
    public List<CtPhieuMuaHang> getCtPhieuMuaHangList() {
        return ctPhieuMuaHangList;
    }

    public void setCtPhieuMuaHangList(List<CtPhieuMuaHang> ctPhieuMuaHangList) {
        this.ctPhieuMuaHangList = ctPhieuMuaHangList;
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
        if (!(object instanceof PhieuMuaHang)) {
            return false;
        }
        PhieuMuaHang other = (PhieuMuaHang) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.PhieuMuaHang[ id=" + id + " ]";
    }
    
}
