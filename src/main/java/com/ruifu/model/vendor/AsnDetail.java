package com.ruifu.model.vendor;

import com.ruifu.model.base.Material;
import com.ruifu.model.plan.MaterialOrder;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/3/22.
 */
@Entity
public class AsnDetail {
    @Id
    @GeneratedValue
    private long id;

    @OneToOne
    private MaterialOrder materialOrder;
    @OneToOne
    private Material material;
    private double quantity;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }



    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public MaterialOrder getMaterialOrder() {
        return materialOrder;
    }

    public void setMaterialOrder(MaterialOrder materialOrder) {
        this.materialOrder = materialOrder;
    }
}
