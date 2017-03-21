package com.ruifu.repository.base;

import com.ruifu.model.base.MaterialVendor;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by stevenfu on 18/03/2017.
 */
public interface MaterialVendorRepository extends CrudRepository<MaterialVendor,Long> {
    Iterable<MaterialVendor> findByVendorId(long vendorId);
}
