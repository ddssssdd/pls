package com.ruifu.controller.plan;

import com.ruifu.model.plan.ProductionPlan;
import com.ruifu.repository.plan.ProductionPlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by stevenfu on 19/03/2017.
 */
@RestController
@RequestMapping("/plan/production")
public class ProductionPlanController {
    @Autowired
    ProductionPlanRepository productionPlanRepository;

    @RequestMapping("/list")
    public Iterable<ProductionPlan> list(){
        return productionPlanRepository.findAll();
    }
    @RequestMapping("/add")
    public Iterable<ProductionPlan> add(ProductionPlan pp){
        productionPlanRepository.save(pp);
        return list();

    }
    @RequestMapping("/remove/{pp_id}")
    public Iterable<ProductionPlan> remove(long pp_id){
        productionPlanRepository.delete(pp_id);
        return list();
    }
}
