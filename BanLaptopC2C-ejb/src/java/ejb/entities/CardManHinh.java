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
 * @author Vivi
 */
@Entity
@Table(name = "card_man_hinh")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CardManHinh.findAll", query = "SELECT c FROM CardManHinh c")
    , @NamedQuery(name = "CardManHinh.findById", query = "SELECT c FROM CardManHinh c WHERE c.id = :id")
    , @NamedQuery(name = "CardManHinh.findByTenCard", query = "SELECT c FROM CardManHinh c WHERE c.tenCard = :tenCard")
    , @NamedQuery(name = "CardManHinh.findByDungLuong", query = "SELECT c FROM CardManHinh c WHERE c.dungLuong = :dungLuong")
    , @NamedQuery(name = "CardManHinh.findByAnHien", query = "SELECT c FROM CardManHinh c WHERE c.anHien = :anHien")})
public class CardManHinh implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "ten_card")
    private String tenCard;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dung_luong")
    private int dungLuong;
    @Basic(optional = false)
    @NotNull
    @Column(name = "an_hien")
    private boolean anHien;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCardManHinh", fetch = FetchType.LAZY)
    private List<ThongSoKiThuat> thongSoKiThuatList;

    public CardManHinh() {
    }

    public CardManHinh(Integer id) {
        this.id = id;
    }

    public CardManHinh(Integer id, String tenCard, int dungLuong, boolean anHien) {
        this.id = id;
        this.tenCard = tenCard;
        this.dungLuong = dungLuong;
        this.anHien = anHien;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTenCard() {
        return tenCard;
    }

    public void setTenCard(String tenCard) {
        this.tenCard = tenCard;
    }

    public int getDungLuong() {
        return dungLuong;
    }

    public void setDungLuong(int dungLuong) {
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
        if (!(object instanceof CardManHinh)) {
            return false;
        }
        CardManHinh other = (CardManHinh) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.entities.CardManHinh[ id=" + id + " ]";
    }
    
}
