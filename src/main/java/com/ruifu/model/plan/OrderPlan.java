package com.ruifu.model.plan;

import com.ruifu.model.base.Material;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.util.Date;

/**
 * Created by stevenfu on 19/03/2017.
 */
@Entity
public class OrderPlan {
    @Id @GeneratedValue
    private long id;
    private String orderPlanNo;
    @OneToOne
    private Material material;
    private String sku;
    private double quantity;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getOrderPlanNo() {
        return orderPlanNo;
    }

    public void setOrderPlanNo(String orderPlanNo) {
        this.orderPlanNo = orderPlanNo;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }


    public String getDescription(){
        return String.format("%s(%g %n,%tF%n)",
                this.getMaterial().getName(),
                this.getQuantity(),
                this.getEndDate());
    }
}
