package com.ruifu.controller.plan;

import com.ruifu.model.plan.MaterialOrder;
import com.ruifu.model.plan.OrderPlan;
import com.ruifu.model.vendor.OrderStatus;
import com.ruifu.repository.plan.OrderPlanRepository;
import com.ruifu.repository.plan.OrderRepository;
import com.ruifu.repository.vendor.OrderStatusRepository;
import com.ruifu.web.ResultStatus;
import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
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

    @Autowired
    OrderPlanRepository orderPlanRepository;

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
        if (item.getOrderPlan()!=null){
            long orderPlanId = item.getOrderPlan().getId();
            Iterable<MaterialOrder> orders = currentRepository.findByOrderPlanId(orderPlanId);
            double total = 0;
            for (MaterialOrder mo: orders) {
                total += mo.getQuantity();
            }
            OrderPlan orderPlan = orderPlanRepository.findOne(orderPlanId);
            if (orderPlan!=null){
                if (total>=orderPlan.getQuantity()){
                    orderPlan.setStatus(-1);

                }else{
                    orderPlan.setStatus(1);
                }
                orderPlan.setAssignedQuantity(total);
                orderPlanRepository.save(orderPlan);
            }
        }

        return new ResultStatus(true,"success");
    }
    @RequestMapping("/remove/{item_id}")
    public Iterable<MaterialOrder> remove(@PathVariable long item_id){
        currentRepository.delete(item_id);
        return list();
    }

    @RequestMapping("/orders/{vendor_id}")
    public Iterable<MaterialOrder> orders(@PathVariable long vendor_id){
        return currentRepository.findByVendorId(vendor_id);
    }
    @RequestMapping("/ongoing_orders/{vendor_id}")
    public Iterable<MaterialOrder> ongoing_orders(@PathVariable long vendor_id){
        //return currentRepository.findByVendorIdAndIsDone(vendor_id,0);
        return currentRepository.findOngoingByVendor(vendor_id);
    }

    //todo: remove this one.
    @RequestMapping("/vendor_list") //repeat as above, just to try different variable
    public Iterable<MaterialOrder> list(long vendor_id){
        return currentRepository.findByVendorId(vendor_id);
    }

    @Autowired
    private OrderStatusRepository orderStatusRepository;
    @RequestMapping("/status")
    public Iterable<OrderStatus> status(long material_order_id){
        return orderStatusRepository.findByMaterialOrderId(material_order_id);
    }
    @RequestMapping("/assigned_orders")
    public ResultStatus assignedOrders(long order_plan_id){
        Iterable<MaterialOrder> orders = currentRepository.findByOrderPlanId(order_plan_id);
        double total = 0;
        for (MaterialOrder mo: orders) {
            total += mo.getQuantity();
        }
        return new ResultStatus(true,String.format("%d",(int)total));
    }
}
