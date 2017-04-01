package com.ruifu.controller.base;

import com.ruifu.service.BarcodeService;
import com.ruifu.web.ResultStatus;
import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/1.
 */
@RestController
@RequestMapping("/base/sequence")
public class SequenceController {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @RequestMapping("/asn")
    public ResultStatus asn(long vendorId){

        String sql = "select count(*) from asn";
        long count = jdbcTemplate.queryForObject(sql,Long.class);
        SimpleDateFormat df = new SimpleDateFormat("yyyymmdd");
        String d = df.format(new Date());
        return new ResultStatus(true,String.format("ASN%d%s%05d",vendorId,d,count));
    }

    @RequestMapping("/material_order")
    public ResultStatus material_order()
    {
        String sql = "select count(*) from material_order";
        long count = jdbcTemplate.queryForObject(sql,Long.class);
        SimpleDateFormat df = new SimpleDateFormat("yyyymmdd");
        String d = df.format(new Date());
        return new ResultStatus(true,String.format("MO%s%05d",d,count));
    }

    @Autowired
    BarcodeService barcodeService;
    @RequestMapping("/barcode/{code}")

    public ResultStatus barcode(@PathVariable String code) throws Exception{
        return new ResultStatus(true, "data:image/png;base64,"+barcodeService.barCodeAsBase64(code));
    }
}
