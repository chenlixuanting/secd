package cn.edu.guet.secd.web.vo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Administrator
 */
public class CityVo implements Serializable {

    private String cityId;
    private String cityName;
    private String headPic;
    private List<SpotVo> recommendSpots = new ArrayList<SpotVo>();

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

    public String getHeadPic() {
        return headPic;
    }

    public void setHeadPic(String headPic) {
        this.headPic = headPic;
    }

    public List<SpotVo> getRecommendSpots() {
        return recommendSpots;
    }

    public void setRecommendSpots(List<SpotVo> recommendSpots) {
        this.recommendSpots = recommendSpots;
    }

    public CityVo() {
    }
}
