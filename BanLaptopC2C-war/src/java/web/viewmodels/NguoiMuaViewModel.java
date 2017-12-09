/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import ejb.entities.PhuongXa;
import ejb.entities.QuanHuyen;
import ejb.entities.ThanhPho;
import java.util.Date;
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
    @Pattern(regexp = "[0-9]{10,11}")
    private String soDienThoai;
    private String hoTen;
    private Date ngaySinh;
    private String diaChi;
    PhuongXa idPhuongXa;
    QuanHuyen idQuanHuyen;
    ThanhPho idThanhPho;

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

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getMatKhauXacNhan() {
        return matKhauXacNhan;
    }

    public void setMatKhauXacNhan(String matKhauXacNhan) {
        this.matKhauXacNhan = matKhauXacNhan;
    }

    public PhuongXa getIdPhuongXa() {
        return idPhuongXa;
    }

    public void setIdPhuongXa(PhuongXa idPhuongXa) {
        this.idPhuongXa = idPhuongXa;
    }

    public QuanHuyen getIdQuanHuyen() {
        return idQuanHuyen;
    }

    public void setIdQuanHuyen(QuanHuyen idQuanHuyen) {
        this.idQuanHuyen = idQuanHuyen;
    }

    public ThanhPho getIdThanhPho() {
        return idThanhPho;
    }

    public void setIdThanhPho(ThanhPho idThanhPho) {
        this.idThanhPho = idThanhPho;
    }

}
