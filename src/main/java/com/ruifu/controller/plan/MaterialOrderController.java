package com.ruifu.controller.plan;

import com.ruifu.model.plan.MaterialOrder;
import com.ruifu.repository.plan.OrderRepository;
import com.ruifu.web.ResultStatus;
import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.transform.Result;
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
    public ResultStatus add(MaterialOrder item){
        item.setUserId(1);
        item.setCreateDate(new Date());
        item.setIsDone(0);
        currentRepository.save(item);
        return new ResultStatus(true,"success");
    }
    @RequestMapping("/remove/{item_id}")
    public Iterable<MaterialOrder> remove(long item_id){
        currentRepository.delete(item_id);
        return list();
    }

    @RequestMapping("/orders/{vendor_id}")
    public Iterable<MaterialOrder> orders(@PathVariable long vendor_id){
        return currentRepository.findByVendorId(vendor_id);
    }
    @RequestMapping("/ongoing_orders/{vendor_id}")
    public Iterable<MaterialOrder> ongoing_orders(@PathVariable long vendor_id){
        return currentRepository.findByVendorIdAndIsDone(vendor_id,0);
    }

    //todo: remove this one.
    @RequestMapping("/vendor_list") //repeat as above, just to try different variable
    public Iterable<MaterialOrder> list(long vendor_id){
        return currentRepository.findByVendorId(vendor_id);
    }
}
