package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * 景点评论
 *
 * @author Administrator
 */
public class SpotComment implements Serializable {

    /**
     * 评论主键
     */
    private String commentId;

    /**
     * 评论者
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
     * 景色评分
     */
    private Double sceneryScore;

    /**
     * 趣味评分
     */
    private Double interestScore;

    /**
     * 性价比评分
     */
    private Double costPerformanceScore;

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

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
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

    public Double getSceneryScore() {
        return sceneryScore;
    }

    public void setSceneryScore(Double sceneryScore) {
        this.sceneryScore = sceneryScore;
    }

    public Double getInterestScore() {
        return interestScore;
    }

    public void setInterestScore(Double interestScore) {
        this.interestScore = interestScore;
    }

    public Double getCostPerformanceScore() {
        return costPerformanceScore;
    }

    public void setCostPerformanceScore(Double costPerformanceScore) {
        this.costPerformanceScore = costPerformanceScore;
    }

    public String getOverallComment() {
        return overallComment;
    }

    public void setOverallComment(String overallComment) {
        this.overallComment = overallComment;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public SpotComment() {
    }
}
