package com.ruifu.controller.base;

import com.ruifu.model.base.Material;
import com.ruifu.model.base.MaterialVendor;
import com.ruifu.repository.base.MaterialVendorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

/**
 * Created by stevenfu on 18/03/2017.
 */
@RestController
@RequestMapping("/base/material_vendor")
public class MaterialVendorController {
    @Autowired
    MaterialVendorRepository materialVendorRepository;
    @RequestMapping("/list")
    public Iterable<MaterialVendor> list(){
        return materialVendorRepository.findAll();
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public Iterable<MaterialVendor> add(MaterialVendor mv){
        materialVendorRepository.save(mv);
        return list();
    }

    @RequestMapping("/remove/{mv_id}")
    public Iterable<MaterialVendor> remove(@PathVariable long mv_id){
        materialVendorRepository.delete(mv_id);
        return list();
    }

    @RequestMapping("/materials/{vendor_id}")
    public Iterable<MaterialVendor> materials(@PathVariable long vendor_id){
        return materialVendorRepository.findByVendorId(vendor_id);
    }
}
