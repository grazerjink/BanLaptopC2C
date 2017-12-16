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
@Table(name = "loai_man_hinh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LoaiManHinh.findAll", query = "SELECT l FROM LoaiManHinh l")
    , @NamedQuery(name = "LoaiManHinh.findById", query = "SELECT l FROM LoaiManHinh l WHERE l.id = :id")
    , @NamedQuery(name = "LoaiManHinh.findByTenLoai", query = "SELECT l FROM LoaiManHinh l WHERE l.tenLoai = :tenLoai")})
public class LoaiManHinh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_loai")
    private String tenLoai;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idLoaiManHinh", fetch = FetchType.LAZY)
    private List<ThongSoKiThuat> thongSoKiThuatList;

    public LoaiManHinh() {
    }

    public LoaiManHinh(Integer id) {
        this.id = id;
    }

    public LoaiManHinh(Integer id, String tenLoai) {
        this.id = id;
        this.tenLoai = tenLoai;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenLoai() {
        return tenLoai;
    }

    public void setTenLoai(String tenLoai) {
        this.tenLoai = tenLoai;
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
        if (!(object instanceof LoaiManHinh)) {
            return false;
        }
        LoaiManHinh other = (LoaiManHinh) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.LoaiManHinh[ id=" + id + " ]";
    }
    
}
