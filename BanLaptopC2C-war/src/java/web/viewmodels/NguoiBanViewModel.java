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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Winson Mac
 */
public class NguoiBanViewModel {

    Integer id;
    @NotEmpty
    @Email
    String email;
    @NotEmpty
    @Pattern(regexp = "[a-zA-Z0-9]{4,20}")
    String matKhau;
    @NotEmpty
    String matKhauXacNhan;
    @NotEmpty
    String tenGianHang;
    @NotEmpty
    String hoTen;
    @NotEmpty
    @Pattern(regexp = "[0-9]{9,12}")
    String cmnd;
    @NotEmpty
    @Pattern(regexp = "[0-9]{10,11}")
    String soDienThoai;
    @NotEmpty
    String diaChi;
    Date ngayDangKy;

    @NotNull
    PhuongXa idPhuongXa;
    @NotNull
    QuanHuyen idQuanHuyen;
    @NotNull
    ThanhPho idThanhPho;

    public String getMatKhauXacNhan() {
        return matKhauXacNhan;
    }

    public void setMatKhauXacNhan(String matKhauXacNhan) {
        this.matKhauXacNhan = matKhauXacNhan;
    }

    public String getTenGianHang() {
        return tenGianHang;
    }

    public void setTenGianHang(String tenGianHang) {
        this.tenGianHang = tenGianHang;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
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

    public Date getNgayDangKy() {
        return ngayDangKy;
    }

    public void setNgayDangKy(Date ngayDangKy) {
        this.ngayDangKy = ngayDangKy;
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
