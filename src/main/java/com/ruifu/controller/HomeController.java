package com.ruifu.controller;

import com.ruifu.model.security.Menu;
import com.ruifu.model.security.User;
import com.ruifu.repository.security.MenuRepository;
import com.ruifu.repository.security.UserRepository;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Iterator;
import java.util.List;

/**
 * Created by Administrator on 2017/3/15.
 */
@Controller
public class HomeController {

    @Autowired
    private MenuRepository menuRepository;


    @RequestMapping("/")
    public String Index(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();

      //  User user = (User)auth.getPrincipal();
        model.addAttribute("user",auth.getPrincipal());

        return "Index";
    }

}
