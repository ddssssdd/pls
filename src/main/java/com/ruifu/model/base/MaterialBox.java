package com.ruifu.model.base;

import com.ruifu.model.base.rule.RuleMaterialBox;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Administrator on 2017/4/1.
 */
@Entity
public class MaterialBox {
    @Id @GeneratedValue
    private long id;
    private long materialId;
    @Column(name="`index`")
    private int index;
    private long ruleMaterialBoxId;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public long getMaterialId() {
        return materialId;
    }

    public void setMaterialId(long materialId) {
        this.materialId = materialId;
    }

    public long getRuleMaterialBoxId() {
        return ruleMaterialBoxId;
    }

    public void setRuleMaterialBoxId(long ruleMaterialBoxId) {
        this.ruleMaterialBoxId = ruleMaterialBoxId;
    }
}
