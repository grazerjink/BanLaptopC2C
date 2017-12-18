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
@Table(name = "hinh_anh_san_pham")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "HinhAnhSanPham.findAll", query = "SELECT h FROM HinhAnhSanPham h")
    , @NamedQuery(name = "HinhAnhSanPham.findById", query = "SELECT h FROM HinhAnhSanPham h WHERE h.id = :id")
    , @NamedQuery(name = "HinhAnhSanPham.findByTenHinh", query = "SELECT h FROM HinhAnhSanPham h WHERE h.tenHinh = :tenHinh")})
public class HinhAnhSanPham implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_hinh")
    private String tenHinh;
    @JoinColumn(name = "id_san_pham", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private SanPham idSanPham;

    public HinhAnhSanPham() {
    }

    public HinhAnhSanPham(Integer id) {
        this.id = id;
    }

    public HinhAnhSanPham(Integer id, String tenHinh) {
        this.id = id;
        this.tenHinh = tenHinh;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenHinh() {
        return tenHinh;
    }

    public void setTenHinh(String tenHinh) {
        this.tenHinh = tenHinh;
    }

    public SanPham getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(SanPham idSanPham) {
        this.idSanPham = idSanPham;
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
        if (!(object instanceof HinhAnhSanPham)) {
            return false;
        }
        HinhAnhSanPham other = (HinhAnhSanPham) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.HinhAnhSanPham[ id=" + id + " ]";
    }
    
}
