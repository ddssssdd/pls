package com.ruifu.controller.vendor;

import com.ruifu.model.base.MaterialBox;
import com.ruifu.model.base.rule.RuleMaterialBox;
import com.ruifu.model.plan.MaterialOrder;
import com.ruifu.model.vendor.Asn;
import com.ruifu.model.vendor.AsnDetail;
import com.ruifu.model.vendor.OrderStatus;
import com.ruifu.repository.base.MaterialBoxRepository;
import com.ruifu.repository.base.MaterialRepository;
import com.ruifu.repository.base.rule.RuleMaterialBoxRepository;
import com.ruifu.repository.plan.OrderRepository;
import com.ruifu.repository.vendor.AsnDetailRepository;
import com.ruifu.repository.vendor.AsnRepository;
import com.ruifu.repository.vendor.OrderStatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

/**
 * Created by Administrator on 2017/3/22.
 */
@RestController
@RequestMapping("/vendor/asn")
public class AsnController {
    @Autowired
    private AsnRepository asnRepository;
    @Autowired AsnDetailRepository asnDetailRepository;

    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private MaterialRepository materialRepository;

    @Autowired
    MaterialBoxRepository materialBoxRepository;
    @Autowired
    RuleMaterialBoxRepository ruleMaterialBoxRepository;

    @Autowired
    private OrderStatusRepository orderStatusRepository;

    @RequestMapping("/add")
    public Asn add(Asn asn){
        if (asn.getDetails().isEmpty()){
            return asn;
        }
        asn.setIsShipment(0);
        asn.setCreateDate(new Date());
        asnRepository.save(asn);
        for (AsnDetail detail: asn.getDetails()) {
            long material_order_id = detail.getMaterialOrder().getId();
            OrderStatus orderStatus = new OrderStatus();
            orderStatus.setMaterialOrderId(material_order_id);
            orderStatus.setUserId(asn.getUserId());
            orderStatus.setCreateDate(new Date());
            orderStatus.setQuantity(detail.getQuantity());
            orderStatus.setAsnId(asn.getId());
            orderStatus.setDetailId(detail.getId());
            orderStatus.setEvent("create_asn");
            orderStatusRepository.save(orderStatus);
            MaterialOrder materialOrder = orderRepository.findOne(material_order_id);
            if (materialOrder!=null){
                materialOrder.setIsDone(1);
                orderRepository.save(materialOrder);
            }

        }
        return asn;
    }

    @RequestMapping("/list")
    public Iterable<Asn> list(long vendor_id){

        Iterable<Asn> asns = asnRepository.findByVendorIdAndIsShipment(vendor_id,0);
        return asns;
    }

    @RequestMapping("/shipment")
    public Asn shipping(long asn_id,long user_id){
        Asn asn = asnRepository.findOne(asn_id);

        if (asn!=null){
            asn.setIsShipment(1);
            asnRepository.save(asn);
            for (AsnDetail detail: asn.getDetails()) {
                long material_order_id = detail.getMaterialOrder().getId();
                OrderStatus orderStatus = new OrderStatus();
                orderStatus.setMaterialOrderId(material_order_id);
                orderStatus.setUserId(user_id);
                orderStatus.setCreateDate(new Date());
                orderStatus.setQuantity(detail.getQuantity());
                orderStatus.setAsnId(asn.getId());
                orderStatus.setDetailId(detail.getId());
                orderStatus.setEvent("shipment");
                orderStatusRepository.save(orderStatus);
                //todo: set done to order.
                double total =0;
                for (AsnDetail item: created_details(material_order_id)) {
                    total += item.getQuantity();
                }
                MaterialOrder materialOrder = orderRepository.findOne(material_order_id);
                if (materialOrder!=null && total>=materialOrder.getQuantity()){
                    materialOrder.setIsDone(-1);
                    orderRepository.save(materialOrder);
                }
            }
        }
        return asn;
    }

    @RequestMapping("/created_details")
    public List<AsnDetail> created_details(long material_order_id){
        return asnDetailRepository.findByMaterialOrderId(material_order_id);
    }
    @RequestMapping("/box")
    public RuleMaterialBox findbox(long materialId,double quantity){
        RuleMaterialBox ruleMaterialBox = null;
        MaterialBox materialBox = materialBoxRepository.findByMaterialId(materialId);
        if (materialBox!=null){
            ruleMaterialBox = ruleMaterialBoxRepository.findOne(materialBox.getRuleMaterialBoxId());

        }
        if (ruleMaterialBox==null){
            ruleMaterialBox = new RuleMaterialBox();
            ruleMaterialBox.setCount(1);
            ruleMaterialBox.setName("default");
            ruleMaterialBox.setLength(1);
            ruleMaterialBox.setWidth(1);
            ruleMaterialBox.setHeight(1);
            ruleMaterialBox.setWeight(1);
        }
        //todo: too simple to handle this for now.
        int q = (int)quantity;
        int boxCount = (int)quantity / ruleMaterialBox.getCount();
        if (q % ruleMaterialBox.getCount()!=0){
            boxCount +=1;
        }
        ruleMaterialBox.setQuantity(boxCount);
        return ruleMaterialBox;
    }
}
