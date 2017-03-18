package com.ruifu.repository.security;

import com.ruifu.model.security.Menu;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;



/**
 * Created by Administrator on 2017/3/15.
 */
public interface MenuRepository  extends CrudRepository<Menu,Integer>{

    @Cacheable("menus")
    @Query(value="SELECT * FROM menu m WHERE m.parent_id IS NULL OR m.parent_id =0",nativeQuery = true)
    Iterable<Menu> topMenus();
}
