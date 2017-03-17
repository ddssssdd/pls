package com.ruifu.controller.base;

import com.ruifu.model.base.Material;
import com.ruifu.repository.base.MaterialRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/3/16.
 */
@RestController
@RequestMapping("/base/material")
public class MaterialController {
    @Autowired
    MaterialRepository materialRepository;

    @RequestMapping("/list")
    public Iterable<Material> list(){
        return materialRepository.findAll();
    }
    @RequestMapping("/add")
    public Iterable<Material> add(Material m){
        materialRepository.save(m);
        return materialRepository.findAll();
    }

    @RequestMapping("/remove/{material_id}")
    public Iterable<Material> remove(@PathVariable long material_id){
        materialRepository.delete(material_id);
        return materialRepository.findAll();

    }

    @RequestMapping("/search/{sku}/{name}")
    public Iterable<Material> search(@PathVariable String sku, @PathVariable String name){
        return materialRepository.findAllBySkuAndName("%"+sku+"%","%"+name+"%");
    }


    //todo: create test case for material model, repository, controller;
}
