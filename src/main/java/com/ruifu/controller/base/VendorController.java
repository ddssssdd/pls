package com.ruifu.controller.base;

import com.ruifu.model.base.Vendor;
import com.ruifu.repository.base.VendorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/3/17.
 */
@RestController
@RequestMapping("/base/vendor")
public class VendorController {
    @Autowired
    VendorRepository vendorRepository;

    @RequestMapping("/list")
    public Iterable<Vendor> list()
    {
        return vendorRepository.findAll();
    }

    @RequestMapping("/add")
    public Iterable<Vendor> add(Vendor vendor){
        vendorRepository.save(vendor);
        return vendorRepository.findAll();
    }
    @RequestMapping("/remove/{vendor_id}")
    public Iterable<Vendor> remove(@PathVariable Long vendor_id){
        Vendor vendor = vendorRepository.findOne(vendor_id);
        vendorRepository.delete(vendor);
        return vendorRepository.findAll();
    }
    //todo: test

}
