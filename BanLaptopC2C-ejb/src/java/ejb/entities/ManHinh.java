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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Vivi
 */
@Entity
@Table(name = "man_hinh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ManHinh.findAll", query = "SELECT m FROM ManHinh m")
    , @NamedQuery(name = "ManHinh.findById", query = "SELECT m FROM ManHinh m WHERE m.id = :id")
    , @NamedQuery(name = "ManHinh.findByAnHien", query = "SELECT m FROM ManHinh m WHERE m.anHien = :anHien")
    , @NamedQuery(name = "ManHinh.findByDoPhanGiai", query = "SELECT m FROM ManHinh m WHERE m.doPhanGiai = :doPhanGiai")
    , @NamedQuery(name = "ManHinh.findByKichThuoc", query = "SELECT m FROM ManHinh m WHERE m.kichThuoc = :kichThuoc")
    , @NamedQuery(name = "ManHinh.findByLoaiManHinh", query = "SELECT m FROM ManHinh m WHERE m.loaiManHinh = :loaiManHinh")})
public class ManHinh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "an_hien")
    private Boolean anHien;
    @Size(max = 255)
    @Column(name = "do_phan_giai")
    private String doPhanGiai;
    @Size(max = 255)
    @Column(name = "kich_thuoc")
    private String kichThuoc;
    @Size(max = 255)
    @Column(name = "loai_man_hinh")
    private String loaiManHinh;

    public ManHinh() {
    }

    public ManHinh(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getAnHien() {
        return anHien;
    }

    public void setAnHien(Boolean anHien) {
        this.anHien = anHien;
    }

    public String getDoPhanGiai() {
        return doPhanGiai;
    }

    public void setDoPhanGiai(String doPhanGiai) {
        this.doPhanGiai = doPhanGiai;
    }

    public String getKichThuoc() {
        return kichThuoc;
    }

    public void setKichThuoc(String kichThuoc) {
        this.kichThuoc = kichThuoc;
    }

    public String getLoaiManHinh() {
        return loaiManHinh;
    }

    public void setLoaiManHinh(String loaiManHinh) {
        this.loaiManHinh = loaiManHinh;
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
