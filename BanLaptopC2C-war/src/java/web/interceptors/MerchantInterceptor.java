/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.interceptors;

import ejb.entities.NguoiBan;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import web.services.SoTinTonService;

/**
 *
 * @author Winson Mac
 */
public class MerchantInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    SoTinTonService soTinTonService;

    @Override
    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler) throws Exception {
        String cpath = request.getContextPath();
        String reqUrl = request.getRequestURI().replace(cpath, "");
        HttpSession httpSession = request.getSession();

        /**
         * Authentication: Khong dang nhap ko vao duoc
         */
        NguoiBan nguoiBan = (NguoiBan) httpSession.getAttribute("merchant");
        if (nguoiBan == null) {
            httpSession.setAttribute("url", reqUrl);
            response.sendRedirect(cpath + "/merchant/dang-nhap/");
            return false;
        } 
        else {
            request.setAttribute("soTinDang", soTinTonService.laySoTinTheoNguoiBanVaThoiGian((NguoiBan) httpSession.getAttribute("merchant"), new Date()));
        }
        return true;
    }

}
