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
 * @author kjmok
 */
@Entity
@Table(name = "phieu_mua_tin")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PhieuMuaTin.findAll", query = "SELECT p FROM PhieuMuaTin p")
    , @NamedQuery(name = "PhieuMuaTin.findById", query = "SELECT p FROM PhieuMuaTin p WHERE p.id = :id")
    , @NamedQuery(name = "PhieuMuaTin.findByGiaBan", query = "SELECT p FROM PhieuMuaTin p WHERE p.giaBan = :giaBan")
    , @NamedQuery(name = "PhieuMuaTin.findByNgayGiaoDich", query = "SELECT p FROM PhieuMuaTin p WHERE p.ngayGiaoDich = :ngayGiaoDich")
    , @NamedQuery(name = "PhieuMuaTin.findByPhuongThucThanhToan", query = "SELECT p FROM PhieuMuaTin p WHERE p.phuongThucThanhToan = :phuongThucThanhToan")
    , @NamedQuery(name = "PhieuMuaTin.findByPaymentId", query = "SELECT p FROM PhieuMuaTin p WHERE p.paymentId = :paymentId")
    , @NamedQuery(name = "PhieuMuaTin.findByPayerId", query = "SELECT p FROM PhieuMuaTin p WHERE p.payerId = :payerId")})
public class PhieuMuaTin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "gia_ban")
    private float giaBan;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngay_giao_dich")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayGiaoDich;
    @Basic(optional = false)
    @NotNull
    @Column(name = "phuong_thuc_thanh_toan")
    private int phuongThucThanhToan;
    @Size(max = 250)
    @Column(name = "payment_id")
    private String paymentId;
    @Size(max = 250)
    @Column(name = "payer_id")
    private String payerId;
    @JoinColumn(name = "id_goi_tin", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private GoiTin idGoiTin;
    @JoinColumn(name = "id_nguoi_ban", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private NguoiBan idNguoiBan;
    @JoinColumn(name = "id_tinh_trang", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private TinhTrang idTinhTrang;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPhieuMuaTin", fetch = FetchType.LAZY)
    private List<SoTinTon> soTinTonList;

    public PhieuMuaTin() {
    }

    public PhieuMuaTin(Integer id) {
        this.id = id;
    }

    public PhieuMuaTin(Integer id, float giaBan, Date ngayGiaoDich, int phuongThucThanhToan) {
        this.id = id;
        this.giaBan = giaBan;
        this.ngayGiaoDich = ngayGiaoDich;
        this.phuongThucThanhToan = phuongThucThanhToan;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public float getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(float giaBan) {
        this.giaBan = giaBan;
    }

    public Date getNgayGiaoDich() {
        return ngayGiaoDich;
    }

    public void setNgayGiaoDich(Date ngayGiaoDich) {
        this.ngayGiaoDich = ngayGiaoDich;
    }

    public int getPhuongThucThanhToan() {
        return phuongThucThanhToan;
    }

    public void setPhuongThucThanhToan(int phuongThucThanhToan) {
        this.phuongThucThanhToan = phuongThucThanhToan;
    }

    public String getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(String paymentId) {
        this.paymentId = paymentId;
    }

    public String getPayerId() {
        return payerId;
    }

    public void setPayerId(String payerId) {
        this.payerId = payerId;
    }

    public GoiTin getIdGoiTin() {
        return idGoiTin;
    }

    public void setIdGoiTin(GoiTin idGoiTin) {
        this.idGoiTin = idGoiTin;
    }

    public NguoiBan getIdNguoiBan() {
        return idNguoiBan;
    }

    public void setIdNguoiBan(NguoiBan idNguoiBan) {
        this.idNguoiBan = idNguoiBan;
    }

    public TinhTrang getIdTinhTrang() {
        return idTinhTrang;
    }

    public void setIdTinhTrang(TinhTrang idTinhTrang) {
        this.idTinhTrang = idTinhTrang;
    }

    @XmlTransient
    public List<SoTinTon> getSoTinTonList() {
        return soTinTonList;
    }

    public void setSoTinTonList(List<SoTinTon> soTinTonList) {
        this.soTinTonList = soTinTonList;
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
        if (!(object instanceof PhieuMuaTin)) {
            return false;
        }
        PhieuMuaTin other = (PhieuMuaTin) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.PhieuMuaTin[ id=" + id + " ]";
    }
    
}
