package com.ruifu.controller.front;

import com.ruifu.model.base.Production;
import com.ruifu.repository.base.MaterialRepository;
import com.ruifu.repository.base.ProductionRepository;
import com.ruifu.repository.base.VendorRepository;
import com.ruifu.repository.plan.OrderPlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
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

    @RequestMapping("/production")
    public String production(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "manage/production";
       // model.addAttribute("navigation","/manage/production_section::production");
       // return "manage/manage_template";
    }
    @RequestMapping("/material_vendor")
    public String material_vendor(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "manage/material_vendor";
    }

    @RequestMapping("/plan/production")
    public String production_plan(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "plan/production";
    }

    @RequestMapping("/plan/material")
    public String material_plan(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        return "plan/material";
    }
    @Autowired
    private MaterialRepository materialRepository;
    @Autowired
    private ProductionRepository productionRepository;
    @Autowired
    private VendorRepository vendorRepository;
    @Autowired
    private OrderPlanRepository orderPlanRepository;
    @RequestMapping("/plan/order")
    public String order_plan(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        model.addAttribute("materials",materialRepository.findAll());
        return "plan/order";
    }

    @RequestMapping("/order/material")
    public String order_material(Model model){
        org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("user",auth.getPrincipal());
        model.addAttribute("materials",materialRepository.findAll());
        model.addAttribute("vendors",vendorRepository.findAll());
        model.addAttribute("order_plans",orderPlanRepository.findAll());

        return "order/material";
    }

}
