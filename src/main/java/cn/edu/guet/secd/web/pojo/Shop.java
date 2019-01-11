package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

/**
 * 商店
 *
 * @author Administrator
 */
public class Shop implements Serializable {

    /**
     * 商店主键
     */
    private String shopId;

    /**
     * 商店名称
     */
    private String shopName;

    /**
     * 商店评分
     */
    private Double score;

    /**
     * 排名
     */
    private Integer rank;

    /**
     * 商店简介
     */
    private String introduce;

    /**
     * 所属景点
     */
    private Spot spot;

    /**
     * 商店评论
     */
    private Set<ShopComment> shopComments;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 乐观锁
     */
    private Timestamp updateTime;

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public String getShopId() {
        return shopId;
    }

    public void setShopId(String shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Spot getSpot() {
        return spot;
    }

    public void setSpot(Spot spot) {
        this.spot = spot;
    }

    public Set<ShopComment> getShopComments() {
        return shopComments;
    }

    public void setShopComments(Set<ShopComment> shopComments) {
        this.shopComments = shopComments;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Shop() {
    }
}
