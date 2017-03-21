package com.ruifu.repository.plan;

import com.ruifu.model.plan.MaterialOrder;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Administrator on 2017/3/21.
 */
public interface OrderRepository extends CrudRepository<MaterialOrder,Long> {
}
