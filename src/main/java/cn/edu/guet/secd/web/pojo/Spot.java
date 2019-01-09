package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * 景点详情
 *
 * @author Administrator
 */
public class Spot implements Serializable {

    /**
     * 景点主键
     */
    private String spotId;

    /**
     * 景点名称
     */
    private String spotName;

    /**
     * 景点评论
     */
    private List<SpotComment> spotComments;

    /**
     * 所属城市
     */
    private City city;

    /**
     * 景点亮点
     */
    private String brightPoint;

    /**
     * 景点介绍
     */
    private String introduce;

    /**
     * 特别提示
     */
    private String specialHint;

    /**
     * 景点图片组
     */
    private List<Photo> photos;

    /**
     * 评分
     */
    private Double score;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 乐观锁
     */
    private Timestamp updateTime;

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public String getSpotId() {
        return spotId;
    }

    public void setSpotId(String spotId) {
        this.spotId = spotId;
    }

    public String getSpotName() {
        return spotName;
    }

    public void setSpotName(String spotName) {
        this.spotName = spotName;
    }

    public List<SpotComment> getSpotComments() {
        return spotComments;
    }

    public void setSpotComments(List<SpotComment> spotComments) {
        this.spotComments = spotComments;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getBrightPoint() {
        return brightPoint;
    }

    public void setBrightPoint(String brightPoint) {
        this.brightPoint = brightPoint;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getSpecialHint() {
        return specialHint;
    }

    public void setSpecialHint(String specialHint) {
        this.specialHint = specialHint;
    }

    public List<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<Photo> photos) {
        this.photos = photos;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public Spot() {
    }
}
