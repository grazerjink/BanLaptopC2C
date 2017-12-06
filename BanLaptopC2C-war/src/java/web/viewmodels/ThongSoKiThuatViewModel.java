/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author Winson Mac
 */
public class ThongSoKiThuatViewModel {
    
    @NotNull
    private Integer thoiLuongPin; 
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
    
    
}
