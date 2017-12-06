/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Winson Mac
 */
public class SanPhamViewModel {

    @NotEmpty
    private String tenMay;    
    @NotNull
    @Min(value = 0)
    private Double giaBan;    
    @NotEmpty
    private String moTa;    
    @NotNull
    @Min(value = 0)
    private Integer tonKho;    
    @NotEmpty
    private String idHangSanXuat;    
    
    private Integer idNguoiBan;    
    
    @NotNull
    private ThongSoKiThuatViewModel thongSoKiThuatVM;
    
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

    public ThongSoKiThuatViewModel getThongSoKiThuatVM() {
        return thongSoKiThuatVM;
    }

    public void setThongSoKiThuatVM(ThongSoKiThuatViewModel thongSoKiThuatVM) {
        this.thongSoKiThuatVM = thongSoKiThuatVM;
    }

    
    
}
