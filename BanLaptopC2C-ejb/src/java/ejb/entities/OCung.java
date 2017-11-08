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
@Table(name = "o_cung")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "OCung.findAll", query = "SELECT o FROM OCung o")
    , @NamedQuery(name = "OCung.findById", query = "SELECT o FROM OCung o WHERE o.id = :id")
    , @NamedQuery(name = "OCung.findByLoaiOCung", query = "SELECT o FROM OCung o WHERE o.loaiOCung = :loaiOCung")
    , @NamedQuery(name = "OCung.findByDungLuong", query = "SELECT o FROM OCung o WHERE o.dungLuong = :dungLuong")
    , @NamedQuery(name = "OCung.findByAnHien", query = "SELECT o FROM OCung o WHERE o.anHien = :anHien")})
public class OCung implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "loai_o_cung")
    private String loaiOCung;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "dung_luong")
    private String dungLuong;
    @Basic(optional = false)
    @NotNull
    @Column(name = "an_hien")
    private boolean anHien;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idOCung", fetch = FetchType.LAZY)
    private List<ThongSoKiThuat> thongSoKiThuatList;

    public OCung() {
    }

    public OCung(Integer id) {
        this.id = id;
    }

    public OCung(Integer id, String loaiOCung, String dungLuong, boolean anHien) {
        this.id = id;
        this.loaiOCung = loaiOCung;
        this.dungLuong = dungLuong;
        this.anHien = anHien;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoaiOCung() {
        return loaiOCung;
    }

    public void setLoaiOCung(String loaiOCung) {
        this.loaiOCung = loaiOCung;
    }

    public String getDungLuong() {
        return dungLuong;
    }

    public void setDungLuong(String dungLuong) {
        this.dungLuong = dungLuong;
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
        if (!(object instanceof OCung)) {
            return false;
        }
        OCung other = (OCung) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.OCung[ id=" + id + " ]";
    }
    
}
