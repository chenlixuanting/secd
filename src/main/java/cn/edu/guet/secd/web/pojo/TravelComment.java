package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 游记评论
 *
 * @author Administrator
 */
public class TravelComment implements Serializable {

    /**
     * 评论主键
     */
    private String commentId;

    /**
     * 评论内容
     */
    private String content;

    /**
     * 评论用户
     */
    private User user;

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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public TravelComment() {
    }
}
