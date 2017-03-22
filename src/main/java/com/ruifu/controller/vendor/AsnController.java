package com.ruifu.controller.vendor;

import com.ruifu.model.plan.MaterialOrder;
import com.ruifu.model.vendor.Asn;
import com.ruifu.model.vendor.AsnDetail;
import com.ruifu.repository.base.MaterialRepository;
import com.ruifu.repository.plan.OrderRepository;
import com.ruifu.repository.vendor.AsnDetailRepository;
import com.ruifu.repository.vendor.AsnRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

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

    @RequestMapping("/add")
    public Asn add(Asn asn){
        /*
        asn = new Asn();

        asn.setAsnNo("003");
        asn.setVendorId(1);
        asn.setCreateDate(new Date());
        //asnRepository.save(asn);

        AsnDetail detail = new AsnDetail();
        detail.setMaterial(materialRepository.findOne(1l));
        detail.setQuantity(10);
        asn.getDetails().add(detail);

        detail = new AsnDetail();
        detail.setMaterial(materialRepository.findOne(3l));
        detail.setQuantity(20);
        asn.getDetails().add(detail);

        //asnDetailRepository.save(detail);
        */
        asnRepository.save(asn);

        return asn;

    }

    @RequestMapping("/list")
    public Iterable<Asn> list(long vendor_id){
        Iterable<Asn> asns = asnRepository.findByVendorId(vendor_id);
        /*for (Asn item :asns) {
            item.setDetails(asnDetailRepository.findByAsnId(item.getId()));
        }*/
        return asns;
    }
}
