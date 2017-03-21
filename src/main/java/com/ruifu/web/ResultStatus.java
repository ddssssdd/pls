package com.ruifu.web;

/**
 * Created by Administrator on 2017/3/21.
 */
public class ResultStatus {
    private boolean status;
    private String message;
    private Object result;
    public ResultStatus(boolean status,Object obj){
        this.status = status;
        this.result = obj;
        this.message = "success";
    }
    public ResultStatus(String message){
        this.message = message;
        this.status = false;
        this.result = "failure";
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }
}
