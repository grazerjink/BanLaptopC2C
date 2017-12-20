/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import java.util.Date;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Winson Mac
 */
public class NguoiMuaViewModel {

    @NotEmpty
    @Email
    private String email;
    @NotEmpty
    @Pattern(regexp = "[a-zA-Z0-9]{4,20}")
    private String matKhau;
    @NotEmpty
    private String matKhauXacNhan;
    @NotEmpty
    @Pattern(regexp = "[0-9]{10,11}")
    String soDienThoai;
    String hoTen;
    String diaChi;
    Integer idPhuongXa;
    Integer idQuanHuyen;
    Integer idThanhPho;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getMatKhauXacNhan() {
        return matKhauXacNhan;
    }

    public void setMatKhauXacNhan(String matKhauXacNhan) {
        this.matKhauXacNhan = matKhauXacNhan;
    }   

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }
    
    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public Integer getIdPhuongXa() {
        return idPhuongXa;
    }

    public void setIdPhuongXa(Integer idPhuongXa) {
        this.idPhuongXa = idPhuongXa;
    }

    public Integer getIdQuanHuyen() {
        return idQuanHuyen;
    }

    public void setIdQuanHuyen(Integer idQuanHuyen) {
        this.idQuanHuyen = idQuanHuyen;
    }

    public Integer getIdThanhPho() {
        return idThanhPho;
    }

    public void setIdThanhPho(Integer idThanhPho) {
        this.idThanhPho = idThanhPho;
    }

}
