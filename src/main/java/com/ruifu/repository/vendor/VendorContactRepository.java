package com.ruifu.repository.vendor;

import com.ruifu.model.base.VendorContact;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/21.
 */
public interface VendorContactRepository extends CrudRepository<VendorContact,Long> {
    VendorContact findByUserId(long userId);
    Iterable<VendorContact> findByVendorId(long vendorId);
}
