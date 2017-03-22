package com.ruifu.repository.vendor;

import com.ruifu.model.vendor.OrderStatus;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/22.
 */
public interface OrderStatusRepository extends CrudRepository<OrderStatus,Long>{
    Iterable<OrderStatus> findByMaterialOrderId(long materialOrderId);
}
