package com.ruifu.model.vendor;

import com.ruifu.model.plan.MaterialOrder;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.util.Date;

/**
 * Created by Administrator on 2017/3/22.
 */
@Entity
public class OrderStatus {
    @Id
    @GeneratedValue
    private long id;
    private long materialOrderId;
    private long userId;
    private Date createDate;
    private String event;
    private long detailId;
    private long asnId;
    private double quantity;



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

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public long getDetailId() {
        return detailId;
    }

    public void setDetailId(long detailId) {
        this.detailId = detailId;
    }

    public long getAsnId() {
        return asnId;
    }

    public void setAsnId(long asnId) {
        this.asnId = asnId;
    }

    public double getQuantity() {
        return quantity;
    }

    public void setQuantity(double quantity) {
        this.quantity = quantity;
    }

    public long getMaterialOrderId() {
        return materialOrderId;
    }

    public void setMaterialOrderId(long materialOrderId) {
        this.materialOrderId = materialOrderId;
    }
}
