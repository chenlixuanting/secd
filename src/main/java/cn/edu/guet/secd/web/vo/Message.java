package cn.edu.guet.secd.web.vo;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * 返回前台的消息实体
 */
public class Message implements Serializable{

    //状态码
    private int statusCode;

    //数据Map
    private Map<String,Object>  dataMap = new HashMap<String, Object>();

    public void putData(String key,Object obj){
        dataMap.put(key,obj);
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    public Message(int statusCode, Map<String, Object> dataMap) {
        this.statusCode = statusCode;
        this.dataMap = dataMap;
    }

    public Message() {
    }

}
