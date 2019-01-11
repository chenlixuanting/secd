package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

/**
 * 城市
 *
 * @author Administrator
 */
public class City implements Serializable {

    /**
     * 城市主键
     */
    private String cityId;

    /**
     * 城市名称
     */
    private String cityName;

    /**
     * 所属省份
     */
    private Province province;

    /**
     * 景点
     */
    private List<Spot> spots;

    /**
     * 游记
     */
    private List<Travel> travels;

    /**
     * 城市头像
     */
    private Photo headPic;

    /**
     * 城市图片组
     */
    private Set<Photo> photos;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 乐观锁
     */
    private Timestamp updateTime;

    public Set<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(Set<Photo> photos) {
        this.photos = photos;
    }

    public Photo getHeadPic() {
        return headPic;
    }

    public void setHeadPic(Photo headPic) {
        this.headPic = headPic;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

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

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }

    public List<Spot> getSpots() {
        return spots;
    }

    public void setSpots(List<Spot> spots) {
        this.spots = spots;
    }

    public List<Travel> getTravels() {
        return travels;
    }

    public void setTravels(List<Travel> travels) {
        this.travels = travels;
    }

    public City() {
    }
}
