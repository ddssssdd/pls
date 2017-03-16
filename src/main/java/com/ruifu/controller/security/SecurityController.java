package com.ruifu.controller.security;

import com.ruifu.model.security.Menu;
import com.ruifu.repository.security.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
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

    @RequestMapping("/menus")
    public Iterable<Menu> menus(){
        return menuRepository.topMenus();
    }
}
