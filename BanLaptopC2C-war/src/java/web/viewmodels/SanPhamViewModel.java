/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Winson Mac
 */
public class SanPhamViewModel {

    @NotEmpty
    @Pattern(regexp = "[\\w\\s\\d\\u0080-\\u9fff]{10,150}")
    private String tenMay;    
    @NotNull
    @Min(value = 0)
    private Double giaBan;    
    @NotEmpty
    @Pattern(regexp = "[\\w\\s\\d\\u0080-\\u9fff]{10,150}")
    private String moTa;    
    @NotNull
    @Min(value = 1)
    private Integer tonKho;    
    @NotEmpty
    private String idHangSanXuat;        
    private Integer idNguoiBan;        
    @NotNull
    private Integer thoiLuongPin; 
    @NotNull
    private Integer baoHanh; 
    @NotNull
    private Integer idCpu;
    @NotNull
    private Integer idDoPhanGiai;
    @NotNull
    private Integer idKichThuocManHinh;
    @NotNull
    private Integer idLoaiManHinh;
    @NotNull
    private Integer idOCung;
    @NotNull
    private Integer idRam;
    @NotNull
    private Integer idCardManHinh;

    public Integer getBaoHanh() {
        return baoHanh;
    }

    public void setBaoHanh(Integer baoHanh) {
        this.baoHanh = baoHanh;
    }
    
    public Integer getThoiLuongPin() {
        return thoiLuongPin;
    }

    public void setThoiLuongPin(Integer thoiLuongPin) {
        this.thoiLuongPin = thoiLuongPin;
    }

    public Integer getIdCpu() {
        return idCpu;
    }

    public void setIdCpu(Integer idCpu) {
        this.idCpu = idCpu;
    }

    public Integer getIdDoPhanGiai() {
        return idDoPhanGiai;
    }

    public void setIdDoPhanGiai(Integer idDoPhanGiai) {
        this.idDoPhanGiai = idDoPhanGiai;
    }

    public Integer getIdKichThuocManHinh() {
        return idKichThuocManHinh;
    }

    public void setIdKichThuocManHinh(Integer idKichThuocManHinh) {
        this.idKichThuocManHinh = idKichThuocManHinh;
    }

    public Integer getIdLoaiManHinh() {
        return idLoaiManHinh;
    }

    public void setIdLoaiManHinh(Integer idLoaiManHinh) {
        this.idLoaiManHinh = idLoaiManHinh;
    }

    public Integer getIdOCung() {
        return idOCung;
    }

    public void setIdOCung(Integer idOCung) {
        this.idOCung = idOCung;
    }

    public Integer getIdRam() {
        return idRam;
    }

    public void setIdRam(Integer idRam) {
        this.idRam = idRam;
    }

    public Integer getIdCardManHinh() {
        return idCardManHinh;
    }

    public void setIdCardManHinh(Integer idCardManHinh) {
        this.idCardManHinh = idCardManHinh;
    }
    
    public String getTenMay() {
        return tenMay;
    }

    public void setTenMay(String tenMay) {
        this.tenMay = tenMay;
    }

    public Double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(Double giaBan) {
        this.giaBan = giaBan;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Integer getTonKho() {
        return tonKho;
    }

    public void setTonKho(Integer tonKho) {
        this.tonKho = tonKho;
    }

    public String getIdHangSanXuat() {
        return idHangSanXuat;
    }

    public void setIdHangSanXuat(String idHangSanXuat) {
        this.idHangSanXuat = idHangSanXuat;
    }        

    public Integer getIdNguoiBan() {
        return idNguoiBan;
    }

    public void setIdNguoiBan(Integer idNguoiBan) {
        this.idNguoiBan = idNguoiBan;
    }  
}
