package com.ruifu.repository.base;

import com.ruifu.model.base.MaterialBox;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Administrator on 2017/4/1.
 */
public interface MaterialBoxRepository extends CrudRepository<MaterialBox,Long> {
    MaterialBox findByMaterialId(long materialId);
}
