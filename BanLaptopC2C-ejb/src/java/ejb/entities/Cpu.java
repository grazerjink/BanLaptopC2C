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
@Table(name = "cpu")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Cpu.findAll", query = "SELECT c FROM Cpu c")
    , @NamedQuery(name = "Cpu.findById", query = "SELECT c FROM Cpu c WHERE c.id = :id")
    , @NamedQuery(name = "Cpu.findByTenCpu", query = "SELECT c FROM Cpu c WHERE c.tenCpu = :tenCpu")
    , @NamedQuery(name = "Cpu.findByTocDo", query = "SELECT c FROM Cpu c WHERE c.tocDo = :tocDo")
    , @NamedQuery(name = "Cpu.findByAnHien", query = "SELECT c FROM Cpu c WHERE c.anHien = :anHien")})
public class Cpu implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_cpu")
    private String tenCpu;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "toc_do")
    private String tocDo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "an_hien")
    private boolean anHien;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCpu", fetch = FetchType.LAZY)
    private List<ThongSoKiThuat> thongSoKiThuatList;

    public Cpu() {
    }

    public Cpu(Integer id) {
        this.id = id;
    }

    public Cpu(Integer id, String tenCpu, String tocDo, boolean anHien) {
        this.id = id;
        this.tenCpu = tenCpu;
        this.tocDo = tocDo;
        this.anHien = anHien;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenCpu() {
        return tenCpu;
    }

    public void setTenCpu(String tenCpu) {
        this.tenCpu = tenCpu;
    }

    public String getTocDo() {
        return tocDo;
    }

    public void setTocDo(String tocDo) {
        this.tocDo = tocDo;
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
        if (!(object instanceof Cpu)) {
            return false;
        }
        Cpu other = (Cpu) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.Cpu[ id=" + id + " ]";
    }
    
}
