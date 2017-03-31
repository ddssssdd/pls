package com.ruifu.controller;

import com.ruifu.model.base.VendorContact;
import com.ruifu.model.security.Menu;
import com.ruifu.model.security.User;
import com.ruifu.repository.security.MenuRepository;
import com.ruifu.repository.security.UserRepository;
import com.ruifu.repository.vendor.VendorContactRepository;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.session.SessionRepository;
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
    @Autowired
    private VendorContactRepository vendorContactRepository;


    @RequestMapping("/")
    public String Index(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());

        User user = (User)auth.getPrincipal();
        VendorContact vc = vendorContactRepository.findByUserId(user.getId());
        if (vc!=null){
            model.addAttribute("contact",vc);
            return "vendor/index";
        }else{
            return "Index";
        }
    }

    @RequestMapping("/test")
    public String test() throws Exception{
        throw new Exception("error here");
    }

}
