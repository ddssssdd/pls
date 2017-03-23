package com.ruifu.repository.vendor;

import com.ruifu.model.vendor.Asn;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/22.
 */
public interface AsnRepository extends CrudRepository<Asn,Long> {
    Iterable<Asn> findByVendorIdAndIsShipment(long vendorId,int isShipment);
}
