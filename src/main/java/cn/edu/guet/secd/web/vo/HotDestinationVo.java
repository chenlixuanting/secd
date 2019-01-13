package cn.edu.guet.secd.web.vo;

import java.io.Serializable;

/**
 * @author Administrator
 */
public class HotDestinationVo implements Serializable{

    private String cityId;
    private String cityName;
    private String headPicUrl;

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getHeadPicUrl() {
        return headPicUrl;
    }

    public void setHeadPicUrl(String headPicUrl) {
        this.headPicUrl = headPicUrl;
    }

    public HotDestinationVo() {
    }

    @Override
    public String toString() {
        return "HotDestinationVo{" +
                "cityId='" + cityId + '\'' +
                ", cityName='" + cityName + '\'' +
                ", headPicUrl='" + headPicUrl + '\'' +
                '}';
    }

}
