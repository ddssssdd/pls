package com.ruifu.controller.plan;

import com.ruifu.model.plan.MaterialPlan;
import com.ruifu.repository.plan.MaterialPlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by stevenfu on 19/03/2017.
 */
@RestController
@RequestMapping("/plan/material")
public class MaterialPlanController {
    @Autowired
    MaterialPlanRepository materialPlanRepository;
    @RequestMapping("/list")
    public Iterable<MaterialPlan> list(){
        return materialPlanRepository.findAll();
    }
    @RequestMapping("/add")
    public Iterable<MaterialPlan> add(MaterialPlan mp){
        materialPlanRepository.save(mp);
        return list();
    }
    @RequestMapping("/remove/{mp_id}")
    public Iterable<MaterialPlan> remove(long mp_id){
        materialPlanRepository.delete(mp_id);
        return list();
    }
}
