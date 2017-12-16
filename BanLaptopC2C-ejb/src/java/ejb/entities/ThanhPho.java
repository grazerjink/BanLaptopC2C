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
@Table(name = "thanh_pho")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ThanhPho.findAll", query = "SELECT t FROM ThanhPho t")
    , @NamedQuery(name = "ThanhPho.findById", query = "SELECT t FROM ThanhPho t WHERE t.id = :id")
    , @NamedQuery(name = "ThanhPho.findByTenThanhPho", query = "SELECT t FROM ThanhPho t WHERE t.tenThanhPho = :tenThanhPho")
    , @NamedQuery(name = "ThanhPho.findByLoai", query = "SELECT t FROM ThanhPho t WHERE t.loai = :loai")})
public class ThanhPho implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_thanh_pho")
    private String tenThanhPho;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "loai")
    private String loai;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idThanhPho", fetch = FetchType.LAZY)
    private List<PhieuMuaHang> phieuMuaHangList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idThanhPho", fetch = FetchType.LAZY)
    private List<NguoiBan> nguoiBanList;
    @OneToMany(mappedBy = "idThanhPho", fetch = FetchType.LAZY)
    private List<NguoiMua> nguoiMuaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idThanhPho", fetch = FetchType.LAZY)
    private List<QuanHuyen> quanHuyenList;

    public ThanhPho() {
    }

    public ThanhPho(Integer id) {
        this.id = id;
    }

    public ThanhPho(Integer id, String tenThanhPho, String loai) {
        this.id = id;
        this.tenThanhPho = tenThanhPho;
        this.loai = loai;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenThanhPho() {
        return tenThanhPho;
    }

    public void setTenThanhPho(String tenThanhPho) {
        this.tenThanhPho = tenThanhPho;
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

    @XmlTransient
    public List<QuanHuyen> getQuanHuyenList() {
        return quanHuyenList;
    }

    public void setQuanHuyenList(List<QuanHuyen> quanHuyenList) {
        this.quanHuyenList = quanHuyenList;
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
        if (!(object instanceof ThanhPho)) {
            return false;
        }
        ThanhPho other = (ThanhPho) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.ThanhPho[ id=" + id + " ]";
    }
    
}
