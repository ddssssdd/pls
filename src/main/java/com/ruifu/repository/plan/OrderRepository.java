package com.ruifu.repository.plan;

import com.ruifu.model.plan.MaterialOrder;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

/**
 * Created by Administrator on 2017/3/21.
 */
public interface OrderRepository extends CrudRepository<MaterialOrder,Long> {
    Iterable<MaterialOrder> findByVendorId(long vendorId);
    Iterable<MaterialOrder> findByVendorIdAndIsDone(long vendorId,int isDone);
    Iterable<MaterialOrder> findByOrderPlanId(long order_plan_id);

    @Query(value = "select * from material_order where vendor_id=:vendorId and is_done<>-1",nativeQuery =true)
    Iterable<MaterialOrder> findOngoingByVendor(@Param("vendorId") long vendorId);
}
