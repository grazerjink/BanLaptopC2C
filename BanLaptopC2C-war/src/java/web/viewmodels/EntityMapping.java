/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.viewmodels;

import ejb.entities.NguoiBan;
import java.util.Date;

/**
 *
 * @author Winson Mac
 */
public class EntityMapping {

    public static NguoiBan convertFrom(NguoiBanViewModel ngBanViewModel) {
        NguoiBan nguoiBan = new NguoiBan(
                ngBanViewModel.id,
                ngBanViewModel.email,
                ngBanViewModel.matKhau,
                ngBanViewModel.hoTen,
                ngBanViewModel.cmnd,
                ngBanViewModel.soDienThoai,
                ngBanViewModel.diaChi,
                new Date(),
                ngBanViewModel.kichHoat,
                ngBanViewModel.trangThai);
        nguoiBan.setIdPhuongXa(ngBanViewModel.getIdPhuongXa());
        nguoiBan.setIdQuanHuyen(ngBanViewModel.getIdQuanHuyen());
        nguoiBan.setIdThanhPho(ngBanViewModel.getIdThanhPho());
        return nguoiBan;
    }
}
