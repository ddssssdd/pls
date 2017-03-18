package com.ruifu.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by stevenfu on 18/03/2017.
 */
@RestController
@RequestMapping("/db")
public class DbController {
    @Autowired
    JdbcTemplate jdbcTemplate;
    private static String COLUMS_SQL ="select column_name as fieldName,ordinal_position as `index`,is_nullable as nullable,data_type as fieldType,column_type as type from information_schema.columns \n" +
            "where table_name=? and table_schema='pls'";

    private static String TALBES_SQL = "select table_name from information_schema.tables where table_schema='pls'";

    @RequestMapping("/columns/{tableName}")
    public Iterable<Column> columns(@PathVariable String tableName){

        return jdbcTemplate.query(
                COLUMS_SQL, new Object[] { tableName },
                (rs, rowNum) -> new Column(rs.getString("fieldName"),rs.getLong("index"), rs.getString("nullable"), rs.getString("fieldType"), rs.getString("type"))
        );
    }

    @RequestMapping("/tables")
    public Iterable<String>tables()
    {
        return jdbcTemplate.query(
                TALBES_SQL, new Object[]{},
                (rs, rowNum) -> rs.getString("table_name")
        );

    }
    @RequestMapping("/creator/single")
    public Map<String,String> creator_single(String tablename){
        Map<String,String> result =  new HashMap<String,String>();
        result.put("key","this is atest");
        return result;
    }
}
class Column{
    private String fieldName;
    private long index;
    private String nullable;
    private String fieldType;
    private String type;

    public Column(String fieldName,long index,String nullable,String fieldType,String type){
        this.fieldName = fieldName;
        this.index = index;
        this.nullable = nullable;
        this.fieldType = fieldType;
        this.type = type;
    }
    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public Long getIndex() {
        return index;
    }

    public void setIndex(Long index) {
        this.index = index;
    }

    public String getNullable() {
        return nullable;
    }

    public void setNullable(String nullable) {
        this.nullable = nullable;
    }

    public String getFieldType() {
        return fieldType;
    }

    public void setFieldType(String fieldType) {
        this.fieldType = fieldType;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}