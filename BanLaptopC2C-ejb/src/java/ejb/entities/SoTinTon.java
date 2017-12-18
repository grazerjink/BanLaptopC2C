/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.entities;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Winson Mac
 */
@Entity
@Table(name = "so_tin_ton")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SoTinTon.findAll", query = "SELECT s FROM SoTinTon s")
    , @NamedQuery(name = "SoTinTon.findById", query = "SELECT s FROM SoTinTon s WHERE s.id = :id")
    , @NamedQuery(name = "SoTinTon.findBySoTinTon", query = "SELECT s FROM SoTinTon s WHERE s.soTinTon = :soTinTon")
    , @NamedQuery(name = "SoTinTon.findBySoTinThayDoi", query = "SELECT s FROM SoTinTon s WHERE s.soTinThayDoi = :soTinThayDoi")
    , @NamedQuery(name = "SoTinTon.findByNgayCapNhat", query = "SELECT s FROM SoTinTon s WHERE s.ngayCapNhat = :ngayCapNhat")})
public class SoTinTon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "so_tin_ton")
    private int soTinTon;
    @Basic(optional = false)
    @NotNull
    @Column(name = "so_tin_thay_doi")
    private int soTinThayDoi;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngay_cap_nhat")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayCapNhat;
    @JoinColumn(name = "id_nguoi_ban", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private NguoiBan idNguoiBan;
    @JoinColumn(name = "id_phieu_mua_tin", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private PhieuMuaTin idPhieuMuaTin;

    public SoTinTon() {
    }

    public SoTinTon(Integer id) {
        this.id = id;
    }

    public SoTinTon(Integer id, int soTinTon, int soTinThayDoi, Date ngayCapNhat) {
        this.id = id;
        this.soTinTon = soTinTon;
        this.soTinThayDoi = soTinThayDoi;
        this.ngayCapNhat = ngayCapNhat;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getSoTinTon() {
        return soTinTon;
    }

    public void setSoTinTon(int soTinTon) {
        this.soTinTon = soTinTon;
    }

    public int getSoTinThayDoi() {
        return soTinThayDoi;
    }

    public void setSoTinThayDoi(int soTinThayDoi) {
        this.soTinThayDoi = soTinThayDoi;
    }

    public Date getNgayCapNhat() {
        return ngayCapNhat;
    }

    public void setNgayCapNhat(Date ngayCapNhat) {
        this.ngayCapNhat = ngayCapNhat;
    }

    public NguoiBan getIdNguoiBan() {
        return idNguoiBan;
    }

    public void setIdNguoiBan(NguoiBan idNguoiBan) {
        this.idNguoiBan = idNguoiBan;
    }

    public PhieuMuaTin getIdPhieuMuaTin() {
        return idPhieuMuaTin;
    }

    public void setIdPhieuMuaTin(PhieuMuaTin idPhieuMuaTin) {
        this.idPhieuMuaTin = idPhieuMuaTin;
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
        if (!(object instanceof SoTinTon)) {
            return false;
        }
        SoTinTon other = (SoTinTon) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.SoTinTon[ id=" + id + " ]";
    }
    
}
