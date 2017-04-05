package com.ruifu.model.vendor;

import com.ruifu.model.plan.MaterialOrder;
import com.ruifu.model.security.User;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.*;

/**
 * Created by Administrator on 2017/3/22.
 */
@Entity
public class Asn {
    @Id @GeneratedValue
    private long id;

    private String asnNo;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createDate;
    private long userId;
    private long vendorId;
    private int isShipment;
    private String shipAddress;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date shipDate;
    private String shipExtra;
    private String note;

    @OneToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
    @JoinColumn(name = "asn_id")
    private List<AsnDetail> details = new ArrayList<AsnDetail>();

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }


    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }



    public long getVendorId() {
        return vendorId;
    }

    public void setVendorId(long vendorId) {
        this.vendorId = vendorId;
    }


    public List<AsnDetail> getDetails() {
        return details;
    }

    public void setDetails(List<AsnDetail> details) {
        this.details = details;
    }

    public int getIsShipment() {
        return isShipment;
    }

    public void setIsShipment(int isShipment) {
        this.isShipment = isShipment;
    }

    public String getShipAddress() {
        return shipAddress;
    }

    public void setShipAddress(String shipAddress) {
        this.shipAddress = shipAddress;
    }

    public Date getShipDate() {
        return shipDate;
    }

    public void setShipDate(Date shipDate) {
        this.shipDate = shipDate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAsnNo() {
        return asnNo;
    }

    public void setAsnNo(String asnNo) {
        this.asnNo = asnNo;
    }

    public String getShipExtra() {
        return shipExtra;
    }

    public void setShipExtra(String shipExtra) {
        this.shipExtra = shipExtra;
    }
}
