package com.ruifu.model.plan;

import com.ruifu.model.base.Material;
import com.ruifu.model.base.Vendor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.util.Date;

/**
 * Created by Administrator on 2017/3/21.
 */
@Entity
public class MaterialOrder {
    @Id @GeneratedValue
    private long id;
    private String orderNo;
    @OneToOne
    private Material material;
    @OneToOne
    private OrderPlan orderPlan;
    @OneToOne
    private Vendor vendor;
    private double quantity;

    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date deliveryDate;

    private long userId;

    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date createDate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public OrderPlan getOrderPlan() {
        return orderPlan;
    }

    public void setOrderPlan(OrderPlan orderPlan) {
        this.orderPlan = orderPlan;
    }

    public Vendor getVendor() {
        return vendor;
    }

    public void setVendor(Vendor vendor) {
        this.vendor = vendor;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
