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
 * @author Winson Mac
 */
@Entity
@Table(name = "quan_huyen")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "QuanHuyen.findAll", query = "SELECT q FROM QuanHuyen q")
    , @NamedQuery(name = "QuanHuyen.findById", query = "SELECT q FROM QuanHuyen q WHERE q.id = :id")
    , @NamedQuery(name = "QuanHuyen.findByTenQuanHuyen", query = "SELECT q FROM QuanHuyen q WHERE q.tenQuanHuyen = :tenQuanHuyen")})
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
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idQuanHuyen", fetch = FetchType.LAZY)
    private List<PhieuMuaHang> phieuMuaHangList;

    public QuanHuyen() {
    }

    public QuanHuyen(Integer id) {
        this.id = id;
    }

    public QuanHuyen(Integer id, String tenQuanHuyen) {
        this.id = id;
        this.tenQuanHuyen = tenQuanHuyen;
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

    @XmlTransient
    public List<PhieuMuaHang> getPhieuMuaHangList() {
        return phieuMuaHangList;
    }

    public void setPhieuMuaHangList(List<PhieuMuaHang> phieuMuaHangList) {
        this.phieuMuaHangList = phieuMuaHangList;
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
