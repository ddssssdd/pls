package com.ruifu.controller.vendor;

import com.ruifu.model.vendor.OrderStatus;
import com.ruifu.repository.vendor.OrderStatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/22.
 */
@RequestMapping("/vendor/orderStatus")
@RestController
public class OrderStatusController {

    @Autowired
    private OrderStatusRepository orderStatusRepository;

    @RequestMapping("/list")
    public Iterable<OrderStatus> list(long materialOrderId){
        return orderStatusRepository.findByMaterialOrderId(materialOrderId);
    }

    @RequestMapping("/confirm")
    public OrderStatus confirmOrder(int materialOrderId,int vendorId,int userId)
    {
        //todo: check if exists confirm;
        OrderStatus orderStatus = new OrderStatus();
        orderStatus.setMaterialOrderId(materialOrderId);
        orderStatus.setUserId(userId);
        orderStatus.setCreateDate(new Date());
        orderStatus.setQuantity(0);
        orderStatus.setAsnId(0);
        orderStatus.setDetailId(0);
        orderStatus.setEvent("confirm");
        orderStatusRepository.save(orderStatus);
        return orderStatus;
    }



}
