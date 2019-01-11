package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Set;

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
    private Set<SpotComment> spotComments;

    /**
     * 所属城市
     */
    private City city;

    /**
     * 景点亮点
     */
    private String brightPoint;

    /**
     * 地址
     */
    private String address;

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
    private Set<Photo> photos;

    /**
     * 排名
     */
    private Integer rank;

    /**
     * 购物点
     */
    private Set<Shop> shops;

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public Set<Shop> getShops() {
        return shops;
    }

    public void setShops(Set<Shop> shops) {
        this.shops = shops;
    }

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

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public Set<SpotComment> getSpotComments() {
        return spotComments;
    }

    public void setSpotComments(Set<SpotComment> spotComments) {
        this.spotComments = spotComments;
    }

    public Set<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(Set<Photo> photos) {
        this.photos = photos;
    }

    public Spot() {
    }
}
