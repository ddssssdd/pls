package com.ruifu.controller.plan;

import com.ruifu.model.plan.OrderPlan;
import com.ruifu.repository.plan.OrderPlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/3/21.
 */
@RestController
@RequestMapping("/plan/order")
public class OrderPlanController {
    @Autowired
    OrderPlanRepository currentRepository;
    @RequestMapping("/list")
    public Iterable<OrderPlan> list(){
        return currentRepository.findAll();
    }
    @RequestMapping("/add")
    public Iterable<OrderPlan> add(OrderPlan item){
        currentRepository.save(item);
        return list();
    }
    @RequestMapping("/remove/{item_id}")
    public Iterable<OrderPlan> remove(long item_id){
        currentRepository.delete(item_id);
        return list();
    }
}
