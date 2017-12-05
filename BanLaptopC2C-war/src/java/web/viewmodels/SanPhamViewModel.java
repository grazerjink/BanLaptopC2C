/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

/**
 *
 * @author Winson Mac
 */
public class SanPhamViewModel {

    private String tenMay;
    private String hinhAnh;
    private Double giaBan;
    private String ghiChu;
    private String moTa;
    private Integer tonKho;
    private boolean anHien;
    private Integer idHangSanXuat;
    private Integer idNguoiBan;
    private ThongSoKiThuatViewModel thongSoKiThuatVM;

    public String getTenMay() {
        return tenMay;
    }

    public void setTenMay(String tenMay) {
        this.tenMay = tenMay;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public Double getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(Double giaBan) {
        this.giaBan = giaBan;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
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

    public boolean isAnHien() {
        return anHien;
    }

    public void setAnHien(boolean anHien) {
        this.anHien = anHien;
    }

    public Integer getIdHangSanXuat() {
        return idHangSanXuat;
    }

    public void setIdHangSanXuat(Integer idHangSanXuat) {
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
