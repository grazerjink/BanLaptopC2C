/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.services;

import ejb.entities.HangSanXuat;
import java.util.List;

/**
 *
 * @author Winson Mac
 */
public interface IHangSanXuatService {
    List<HangSanXuat> getList();
}
