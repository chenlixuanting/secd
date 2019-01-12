package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Set;

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
    private Photo headPic;

    /**
     * 游记内容
     */
    private String content;

    /**
     * 作者
     */
    private User user;

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

    /**
     * 所属城市
     */
    private City city;

    private Set<TravelComment> travelComments;

    public Set<TravelComment> getTravelComments() {
        return travelComments;
    }

    public void setTravelComments(Set<TravelComment> travelComments) {
        this.travelComments = travelComments;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

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

    public Photo getHeadPic() {
        return headPic;
    }

    public void setHeadPic(Photo headPic) {
        this.headPic = headPic;
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
