package com.ruifu.config;

import com.ruifu.model.security.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;

/**
 * Created by Administrator on 2017/4/5.
 */
@Component
public class AccessTokenVerifyInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //String accessToken = request.getParameter("_csrf");

        UsernamePasswordAuthenticationToken usernamePasswordAuthenticationToken =(UsernamePasswordAuthenticationToken ) request.getUserPrincipal();
        UserDetails user = (UserDetails) usernamePasswordAuthenticationToken.getPrincipal();
        String path= request.getServletPath();
        System.out.println(String.format("%s access [%s]",user.getUsername(),path));
        //todo: implement user and role here.

        return true;
    }
}
