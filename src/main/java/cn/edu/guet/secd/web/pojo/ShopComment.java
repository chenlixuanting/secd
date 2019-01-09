package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * 商店评论
 *
 * @author Administrator
 */
public class ShopComment implements Serializable {

    /**
     * 评论主键
     */
    private String commentId;

    /**
     * 商店
     */
    private Shop shop;

    /**
     * 作者
     */
    private User user;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 评论图片组
     */
    private List<Photo> photos;

    /**
     * 环境评分
     */
    private Double envScore;

    /**
     * 商品评分
     */
    private Double productScore;

    /**
     * 服务评分
     */
    private Double serverScore;

    /**
     * 总体评价
     */
    private String overallComment;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 乐观锁
     */
    private Timestamp updateTime;

    public Double getEnvScore() {
        return envScore;
    }

    public void setEnvScore(Double envScore) {
        this.envScore = envScore;
    }

    public Double getProductScore() {
        return productScore;
    }

    public void setProductScore(Double productScore) {
        this.productScore = productScore;
    }

    public Double getServerScore() {
        return serverScore;
    }

    public void setServerScore(Double serverScore) {
        this.serverScore = serverScore;
    }

    public String getOverallComment() {
        return overallComment;
    }

    public void setOverallComment(String overallComment) {
        this.overallComment = overallComment;
    }

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<Photo> photos) {
        this.photos = photos;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public ShopComment() {
    }
}
