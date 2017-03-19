package com.ruifu.controller.base;

import com.ruifu.model.base.Production;
import com.ruifu.repository.base.ProductionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by stevenfu on 18/03/2017.
 */
@RestController
@RequestMapping("/base/production")
public class ProductionController {
    @Autowired
    ProductionRepository productionRepository;

    @RequestMapping("/list")
    public Iterable<Production> list(){
        return productionRepository.findAll();
    }
    @RequestMapping("/add")
    public Iterable<Production> add(Production p){
        productionRepository.save(p);
        return list();
    }
    @RequestMapping("/remove/{production_id}")
    public Iterable<Production> remove(long production_id){
        productionRepository.delete(production_id);
        return list();
    }
}
