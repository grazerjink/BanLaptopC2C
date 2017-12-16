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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author kjmok
 */
@Entity
@Table(name = "kich_thuoc_man_hinh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "KichThuocManHinh.findAll", query = "SELECT k FROM KichThuocManHinh k")
    , @NamedQuery(name = "KichThuocManHinh.findById", query = "SELECT k FROM KichThuocManHinh k WHERE k.id = :id")
    , @NamedQuery(name = "KichThuocManHinh.findByLoaiKichThuoc", query = "SELECT k FROM KichThuocManHinh k WHERE k.loaiKichThuoc = :loaiKichThuoc")})
public class KichThuocManHinh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "loai_kich_thuoc")
    private float loaiKichThuoc;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idKichThuocManHinh", fetch = FetchType.LAZY)
    private List<ThongSoKiThuat> thongSoKiThuatList;

    public KichThuocManHinh() {
    }

    public KichThuocManHinh(Integer id) {
        this.id = id;
    }

    public KichThuocManHinh(Integer id, float loaiKichThuoc) {
        this.id = id;
        this.loaiKichThuoc = loaiKichThuoc;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public float getLoaiKichThuoc() {
        return loaiKichThuoc;
    }

    public void setLoaiKichThuoc(float loaiKichThuoc) {
        this.loaiKichThuoc = loaiKichThuoc;
    }

    @XmlTransient
    public List<ThongSoKiThuat> getThongSoKiThuatList() {
        return thongSoKiThuatList;
    }

    public void setThongSoKiThuatList(List<ThongSoKiThuat> thongSoKiThuatList) {
        this.thongSoKiThuatList = thongSoKiThuatList;
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
        if (!(object instanceof KichThuocManHinh)) {
            return false;
        }
        KichThuocManHinh other = (KichThuocManHinh) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.KichThuocManHinh[ id=" + id + " ]";
    }
    
}
