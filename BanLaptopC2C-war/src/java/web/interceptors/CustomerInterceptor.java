/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import web.services.HangSanXuatService;
import web.viewmodels.NguoiMuaViewModel;

/**
 *
 * @author Winson Mac
 */
public class CustomerInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    HangSanXuatService hangSanXuatService;
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String cpath = request.getContextPath();
        String url = request.getRequestURI().replace(cpath, "");
        request.getSession().setAttribute("backUrl", url);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        request.setAttribute("nguoiMua", new NguoiMuaViewModel());
        request.setAttribute("dsHangSanXuat",hangSanXuatService.layDanhSachHangSanXuat());
    }

}
