/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.SanPham;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

/**
 *
 * @author Winson Mac
 */
@Component("cart")
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ShoppingCart implements Serializable{

    @Autowired
    SanPhamService sanPhamService;
    Map<Integer, SanPham> map = new HashMap<>();

    /**
     * Them hang vao gio hang     *
     * @param id: la id cua mat hang duoc them
     */
    public void themGioHang(Integer id) {
        SanPham product = map.get(id);
        if (product != null) {
            product.setTonKho(product.getTonKho()+ 1);
        } else {
            product = sanPhamService.timSanPhamTheoId(id);
            product.setTonKho(1);
            map.put(id, product);
        }
    }

    /**
     * Xoa mot mat hang khoi gio hang     *
     * @param id: la id cua mat hang bi xoa
     */
    public void xoaSanPhamTrongGioHang(Integer id) {
        map.remove(id);
    }

    /**
     * Xoa het tat ca cac mat hang khoi gio hang
     */
    public void xoaGioHang() {
        map.clear();
    }

    /**
     * Cap nhat so luong cua mat hang vao gio hang
     * @param id: la id cua mat hang can cap nhat
     * @param newQuantity: la so luong moi cua mat hang can cap nhat
     */
    public void capNhatSoLuongSanPham(Integer id, Integer newQuantity) {
        SanPham product = map.get(id);
        product.setTonKho(newQuantity);
    }

    /**
     * Lay tong so luong mat hang hien dang co trong gio hang
     */
    public int getTongSoLuong() {
        int total = 0;
        for (SanPham p : layDanhSachSanPham()) {
            total += p.getTonKho();
        }
        return total;
    }

    /**
     * Lay tong gia tien cua cac mat hang co trong gio hang
     * @return 
     */
    public double getTongTien() {
        double total = 0.00;
        for (SanPham p : layDanhSachSanPham()) {
            total += p.getTonKho()* p.getGiaBan();
        }
        return total;
    }

    public SanPham laySanPhamTheoId(Integer id) {
        return map.get(id);
    }

    /**
     * Lay danh sach cac mat hang da duoc them vao gio hang
     *
     *
     */
    public List<SanPham> layDanhSachSanPham() {
        return new ArrayList<>(map.values());
    }

}
