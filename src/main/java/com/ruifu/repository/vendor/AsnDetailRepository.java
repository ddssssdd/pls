package com.ruifu.repository.vendor;

import com.ruifu.model.vendor.AsnDetail;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Administrator on 2017/3/22.
 */
public interface AsnDetailRepository extends CrudRepository<AsnDetail,Long> {
    List<AsnDetail> findByMaterialOrderId(long materialOrderId);
}
