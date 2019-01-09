package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 游记
 *
 * @author Administrator
 */
public class Travel implements Serializable {

    /**
     * 游记主键
     */
    private String travelId;

    /**
     * 游记标题
     */
    private String title;

    /**
     * 游记背景图片
     */
    private String backgroundPic;

    /**
     * 游记内容
     */
    private String content;

    /**
     * 作者
     */
    private User author;

    /**
     * 玩法
     */
    private String playStyle;

    /**
     * 花费时间
     */
    private Integer spendTime;

    /**
     * 平均开销
     */
    private Integer averageMoney;

    /**
     * 组团方式
     */
    private String groupType;

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

    public String getTravelId() {
        return travelId;
    }

    public void setTravelId(String travelId) {
        this.travelId = travelId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBackgroundPic() {
        return backgroundPic;
    }

    public void setBackgroundPic(String backgroundPic) {
        this.backgroundPic = backgroundPic;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getPlayStyle() {
        return playStyle;
    }

    public void setPlayStyle(String playStyle) {
        this.playStyle = playStyle;
    }

    public Integer getSpendTime() {
        return spendTime;
    }

    public void setSpendTime(Integer spendTime) {
        this.spendTime = spendTime;
    }

    public Integer getAverageMoney() {
        return averageMoney;
    }

    public void setAverageMoney(Integer averageMoney) {
        this.averageMoney = averageMoney;
    }

    public String getGroupType() {
        return groupType;
    }

    public void setGroupType(String groupType) {
        this.groupType = groupType;
    }

    public Travel() {
    }
}
