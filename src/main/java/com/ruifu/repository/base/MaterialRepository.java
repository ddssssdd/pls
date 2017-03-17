package com.ruifu.repository.base;

import com.ruifu.model.base.Material;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/3/16.
 */
public interface MaterialRepository extends CrudRepository<Material,Long> {
    @Query(value = "select * from material where sku like :sku and name like :name",nativeQuery = true)
    List<Material> findAllBySkuAndName(@Param("sku") String sku,@Param("name") String name);
}
