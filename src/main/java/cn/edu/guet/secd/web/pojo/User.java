package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Set;

/**
 * @author Administrator
 */
public class User implements Serializable {

    /**
     * 主键
     */
    private String userId;

    /**
     * 账户
     */
    private String account;

    /**
     * 密码
     */
    private String password;

    /**
     * 真实姓名
     */
    private String username;

    /**
     * 性别
     */
    private String sex;

    /**
     * 出生年月日
     */
    private Date birthday;

    /**
     * 身份证号码
     */
    private String idCardNumber;

    /**
     * 电话号码
     */
    private String mobilePhone;

    /**
     * 详细地址
     */
    private String address;

    /**
     * 景点评论
     */
    private Set<SpotComment> spotComments;

    /**
     * 购物点评论
     */
    private Set<ShopComment> shopComments;

    /**
     * 游记评论
     */
    private Set<TravelComment> travelComments;

    /**
     * 游记
     */
    private Set<Travel> travels;

    /**
     * 头像
     */
    private Photo headPic;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 更新时间
     */
    private Timestamp updateTime;

    public Set<SpotComment> getSpotComments() {
        return spotComments;
    }

    public void setSpotComments(Set<SpotComment> spotComments) {
        this.spotComments = spotComments;
    }

    public Set<ShopComment> getShopComments() {
        return shopComments;
    }

    public void setShopComments(Set<ShopComment> shopComments) {
        this.shopComments = shopComments;
    }

    public Set<TravelComment> getTravelComments() {
        return travelComments;
    }

    public void setTravelComments(Set<TravelComment> travelComments) {
        this.travelComments = travelComments;
    }

    public Set<Travel> getTravels() {
        return travels;
    }

    public void setTravels(Set<Travel> travels) {
        this.travels = travels;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getIdCardNumber() {
        return idCardNumber;
    }

    public void setIdCardNumber(String idCardNumber) {
        this.idCardNumber = idCardNumber;
    }

    public String getMobilePhone() {
        return mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Photo getHeadPic() {
        return headPic;
    }

    public void setHeadPic(Photo headPic) {
        this.headPic = headPic;
    }

    public User() {
    }
}
