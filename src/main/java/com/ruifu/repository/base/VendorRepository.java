package com.ruifu.repository.base;

import com.ruifu.model.base.Vendor;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/17.
 */
public interface VendorRepository extends CrudRepository<Vendor,Long> {
    Iterable<Vendor> findByName(String name);
}
