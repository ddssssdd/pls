package com.ruifu.controller.front;

import com.ruifu.model.base.VendorContact;
import com.ruifu.model.security.User;
import com.ruifu.repository.vendor.VendorContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/21.
 */
@Controller
@RequestMapping("/portal/vendor")
public class VendorPortalController {
    @Autowired
    private VendorContactRepository vendorContactRepository;
    @RequestMapping("/index")
    public String index(Model model) {
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user", auth.getPrincipal());
        User user = (User)auth.getPrincipal();
        VendorContact vc = vendorContactRepository.findByUserId(user.getId());
        model.addAttribute("contact",vc);
        return "vendor/index";
    }

    @RequestMapping("/order")
    public String order(Model model) {
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user", auth.getPrincipal());
        User user = (User)auth.getPrincipal();
        VendorContact vc = vendorContactRepository.findByUserId(user.getId());
        model.addAttribute("contact",vc);
        return "vendor/order";
    }
    @RequestMapping("/asn")
    public String asn(Model model) {
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user", auth.getPrincipal());
        User user = (User)auth.getPrincipal();
        VendorContact vc = vendorContactRepository.findByUserId(user.getId());
        model.addAttribute("contact",vc);
        //return "vendor/asn";
        return "vendor/asn2";
    }

}
