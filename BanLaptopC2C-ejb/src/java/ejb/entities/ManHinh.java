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
@Table(name = "man_hinh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ManHinh.findAll", query = "SELECT m FROM ManHinh m")
    , @NamedQuery(name = "ManHinh.findById", query = "SELECT m FROM ManHinh m WHERE m.id = :id")
    , @NamedQuery(name = "ManHinh.findByLoaiManHinh", query = "SELECT m FROM ManHinh m WHERE m.loaiManHinh = :loaiManHinh")
    , @NamedQuery(name = "ManHinh.findByKichThuoc", query = "SELECT m FROM ManHinh m WHERE m.kichThuoc = :kichThuoc")
    , @NamedQuery(name = "ManHinh.findByDoPhanGiai", query = "SELECT m FROM ManHinh m WHERE m.doPhanGiai = :doPhanGiai")
    , @NamedQuery(name = "ManHinh.findByAnHien", query = "SELECT m FROM ManHinh m WHERE m.anHien = :anHien")})
public class ManHinh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "loai_man_hinh")
    private String loaiManHinh;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "kich_thuoc")
    private String kichThuoc;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "do_phan_giai")
    private String doPhanGiai;
    @Basic(optional = false)
    @NotNull
    @Column(name = "an_hien")
    private boolean anHien;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idManHinh", fetch = FetchType.LAZY)
    private List<ThongSoKiThuat> thongSoKiThuatList;

    public ManHinh() {
    }

    public ManHinh(Integer id) {
        this.id = id;
    }

    public ManHinh(Integer id, String loaiManHinh, String kichThuoc, String doPhanGiai, boolean anHien) {
        this.id = id;
        this.loaiManHinh = loaiManHinh;
        this.kichThuoc = kichThuoc;
        this.doPhanGiai = doPhanGiai;
        this.anHien = anHien;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoaiManHinh() {
        return loaiManHinh;
    }

    public void setLoaiManHinh(String loaiManHinh) {
        this.loaiManHinh = loaiManHinh;
    }

    public String getKichThuoc() {
        return kichThuoc;
    }

    public void setKichThuoc(String kichThuoc) {
        this.kichThuoc = kichThuoc;
    }

    public String getDoPhanGiai() {
        return doPhanGiai;
    }

    public void setDoPhanGiai(String doPhanGiai) {
        this.doPhanGiai = doPhanGiai;
    }

    public boolean getAnHien() {
        return anHien;
    }

    public void setAnHien(boolean anHien) {
        this.anHien = anHien;
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
        if (!(object instanceof ManHinh)) {
            return false;
        }
        ManHinh other = (ManHinh) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.ManHinh[ id=" + id + " ]";
    }
    
}
