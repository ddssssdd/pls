package com.ruifu.controller.security;

import com.ruifu.model.base.VendorContact;
import com.ruifu.model.security.Menu;
import com.ruifu.model.security.User;
import com.ruifu.repository.security.MenuRepository;
import com.ruifu.repository.vendor.VendorContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/3/16.
 */
@RestController
@RequestMapping("/security")
public class SecurityController {
    @Autowired
    private MenuRepository menuRepository;
    @Autowired
    private VendorContactRepository vendorContactRepository;

    @RequestMapping("/menus/{user_id}")
    public Iterable<Menu> menus(@PathVariable long user_id){

        VendorContact vc = vendorContactRepository.findByUserId(user_id);
        if (vc!=null){
            return menuRepository.topVendorMenus();
        }else{
            return menuRepository.topMenus();
        }

    }
}
