/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.interceptors;

import ejb.entities.Admin;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import web.services.AdminService;

/**
 *
 * @author Vivi
 */
public class AdminInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    AdminService adminService;

    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler) throws Exception {
        String cpath = request.getContextPath();
        String reqUrl = request.getRequestURI().replace(cpath, "");
        HttpSession httpSession = request.getSession();

        /**
         * Authentication: Khong dang nhap ko vao duoc
         */
        Admin admin = (Admin) httpSession.getAttribute("admin");
        if (admin == null) {
            response.sendRedirect(cpath + "/admin/dangnhap/");
            return false;
        } 
        return true;
    }
}
