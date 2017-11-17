/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import ejb.entities.CtPhieuMuaHang;
import ejb.entities.DanhGia;
import ejb.entities.PhieuMuaTin;
import ejb.entities.PhuongXa;
import ejb.entities.QuanHuyen;
import ejb.entities.SanPham;
import ejb.entities.SoTinTon;
import ejb.entities.ThanhPho;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Winson Mac
 */
public class NguoiBanViewModel {

    Integer id;
    String email;
    String matKhau;    
    String matKhauXacNhan;
    String hoTen;
    String cmnd;
    String soDienThoai;
    String diaChi;
    Date ngayDangKy;
    boolean kichHoat;
    boolean trangThai;
    
    PhuongXa idPhuongXa;
    QuanHuyen idQuanHuyen;
    ThanhPho idThanhPho;
    
    List<SanPham> sanPhamList;
    List<CtPhieuMuaHang> ctPhieuMuaHangList;
    List<PhieuMuaTin> phieuMuaTinList;
    List<DanhGia> danhGiaList;
    List<SoTinTon> soTinTonList;

    public String getMatKhauXacNhan() {
        return matKhauXacNhan;
    }

    public void setMatKhauXacNhan(String matKhauXacNhan) {
        this.matKhauXacNhan = matKhauXacNhan;
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

    public boolean isKichHoat() {
        return kichHoat;
    }

    public void setKichHoat(boolean kichHoat) {
        this.kichHoat = kichHoat;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public List<SanPham> getSanPhamList() {
        return sanPhamList;
    }

    public void setSanPhamList(List<SanPham> sanPhamList) {
        this.sanPhamList = sanPhamList;
    }

    public List<CtPhieuMuaHang> getCtPhieuMuaHangList() {
        return ctPhieuMuaHangList;
    }

    public void setCtPhieuMuaHangList(List<CtPhieuMuaHang> ctPhieuMuaHangList) {
        this.ctPhieuMuaHangList = ctPhieuMuaHangList;
    }

    public List<PhieuMuaTin> getPhieuMuaTinList() {
        return phieuMuaTinList;
    }

    public void setPhieuMuaTinList(List<PhieuMuaTin> phieuMuaTinList) {
        this.phieuMuaTinList = phieuMuaTinList;
    }

    public List<DanhGia> getDanhGiaList() {
        return danhGiaList;
    }

    public void setDanhGiaList(List<DanhGia> danhGiaList) {
        this.danhGiaList = danhGiaList;
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

    public List<SoTinTon> getSoTinTonList() {
        return soTinTonList;
    }

    public void setSoTinTonList(List<SoTinTon> soTinTonList) {
        this.soTinTonList = soTinTonList;
    }

}
