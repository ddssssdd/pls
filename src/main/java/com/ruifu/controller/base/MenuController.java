package com.ruifu.controller.base;

import com.ruifu.model.base.Vendor;
import com.ruifu.model.security.Menu;
import com.ruifu.repository.security.MenuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by stevenfu on 18/03/2017.
 */
@RestController
@RequestMapping("/base/menu")
public class MenuController {
    @Autowired
    MenuRepository menuRepository;

    @RequestMapping("/list")
    public Iterable<Menu> list()
    {
        return menuRepository.findAll();
    }

    @RequestMapping("/add")
    public Iterable<Menu> add(Menu menu){
        menuRepository.save(menu);
        return menuRepository.findAll();
    }
    @RequestMapping("/remove/{menu_id}")
    public Iterable<Menu> remove(@PathVariable int menu_id){
        Menu menu = menuRepository.findOne(menu_id);
        menuRepository.delete(menu);
        return menuRepository.findAll();
    }
}
