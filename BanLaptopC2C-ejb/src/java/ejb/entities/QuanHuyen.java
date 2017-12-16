/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb.entities;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author kjmok
 */
@Entity
@Table(name = "quan_huyen")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QuanHuyen.findAll", query = "SELECT q FROM QuanHuyen q")
    , @NamedQuery(name = "QuanHuyen.findById", query = "SELECT q FROM QuanHuyen q WHERE q.id = :id")
    , @NamedQuery(name = "QuanHuyen.findByTenQuanHuyen", query = "SELECT q FROM QuanHuyen q WHERE q.tenQuanHuyen = :tenQuanHuyen")
    , @NamedQuery(name = "QuanHuyen.findByLoai", query = "SELECT q FROM QuanHuyen q WHERE q.loai = :loai")})
public class QuanHuyen implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_quan_huyen")
    private String tenQuanHuyen;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "loai")
    private String loai;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idQuanHuyen", fetch = FetchType.LAZY)
    private List<PhieuMuaHang> phieuMuaHangList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idQuanHuyen", fetch = FetchType.LAZY)
    private List<PhuongXa> phuongXaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idQuanHuyen", fetch = FetchType.LAZY)
    private List<NguoiBan> nguoiBanList;
    @OneToMany(mappedBy = "idQuanHuyen", fetch = FetchType.LAZY)
    private List<NguoiMua> nguoiMuaList;
    @JoinColumn(name = "id_thanh_pho", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ThanhPho idThanhPho;

    public QuanHuyen() {
    }

    public QuanHuyen(Integer id) {
        this.id = id;
    }

    public QuanHuyen(Integer id, String tenQuanHuyen, String loai) {
        this.id = id;
        this.tenQuanHuyen = tenQuanHuyen;
        this.loai = loai;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenQuanHuyen() {
        return tenQuanHuyen;
    }

    public void setTenQuanHuyen(String tenQuanHuyen) {
        this.tenQuanHuyen = tenQuanHuyen;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    @XmlTransient
    public List<PhieuMuaHang> getPhieuMuaHangList() {
        return phieuMuaHangList;
    }

    public void setPhieuMuaHangList(List<PhieuMuaHang> phieuMuaHangList) {
        this.phieuMuaHangList = phieuMuaHangList;
    }

    @XmlTransient
    public List<PhuongXa> getPhuongXaList() {
        return phuongXaList;
    }

    public void setPhuongXaList(List<PhuongXa> phuongXaList) {
        this.phuongXaList = phuongXaList;
    }

    @XmlTransient
    public List<NguoiBan> getNguoiBanList() {
        return nguoiBanList;
    }

    public void setNguoiBanList(List<NguoiBan> nguoiBanList) {
        this.nguoiBanList = nguoiBanList;
    }

    @XmlTransient
    public List<NguoiMua> getNguoiMuaList() {
        return nguoiMuaList;
    }

    public void setNguoiMuaList(List<NguoiMua> nguoiMuaList) {
        this.nguoiMuaList = nguoiMuaList;
    }

    public ThanhPho getIdThanhPho() {
        return idThanhPho;
    }

    public void setIdThanhPho(ThanhPho idThanhPho) {
        this.idThanhPho = idThanhPho;
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
        if (!(object instanceof QuanHuyen)) {
            return false;
        }
        QuanHuyen other = (QuanHuyen) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.QuanHuyen[ id=" + id + " ]";
    }
    
}
