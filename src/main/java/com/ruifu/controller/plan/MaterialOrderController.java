package com.ruifu.controller.plan;

import com.ruifu.model.plan.MaterialOrder;
import com.ruifu.repository.plan.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/21.
 */
@RestController
@RequestMapping("/order/material")
public class MaterialOrderController {
    @Autowired
    OrderRepository currentRepository;
    @RequestMapping("/list")
    public Iterable<MaterialOrder> list(){
        return currentRepository.findAll();
    }
    @RequestMapping("/add")
    public MaterialOrder add(MaterialOrder item){
        item.setUserId(1);
        item.setCreateDate(new Date());
        currentRepository.save(item);
        return item;
    }
    @RequestMapping("/remove/{item_id}")
    public Iterable<MaterialOrder> remove(long item_id){
        currentRepository.delete(item_id);
        return list();
    }
}
