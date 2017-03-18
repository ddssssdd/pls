package com.ruifu.controller.front;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/16.
 */
@Controller
@RequestMapping("/manage")
public class ManageController {

    @RequestMapping("/sku")
    public String sku(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        //  User user = (User)auth.getPrincipal();
        model.addAttribute("user",auth.getPrincipal());
        return "manage/sku";
    }
    @RequestMapping("/vendor")
    public String vendor(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "manage/vendor";
    }

    @RequestMapping("/helper")
    public String helper(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "manage/helper";
    }
    @RequestMapping("/menu")
    public String menu(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "manage/menu";
    }
}
