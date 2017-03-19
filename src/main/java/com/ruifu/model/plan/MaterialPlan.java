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
public class MaterialPlan {
    @Id
    @GeneratedValue
    private long id;
    private String planNo;
    private String productionSku;
    private String materialPlanNo;
    @OneToOne
    private Material material;
    private String note;
    private String quantity;
    private String minQuantity;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPlanNo() {
        return planNo;
    }

    public void setPlanNo(String planNo) {
        this.planNo = planNo;
    }

    public String getProductionSku() {
        return productionSku;
    }

    public void setProductionSku(String productionSku) {
        this.productionSku = productionSku;
    }

    public String getMaterialPlanNo() {
        return materialPlanNo;
    }

    public void setMaterialPlanNo(String materialPlanNo) {
        this.materialPlanNo = materialPlanNo;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getMinQuantity() {
        return minQuantity;
    }

    public void setMinQuantity(String minQuantity) {
        this.minQuantity = minQuantity;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}
