package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 热门目的地
 *
 * @author Administrator
 */
public class HotDestination implements Serializable {

    /**
     * 主键
     */
    private String hotDesId;

    /**
     * 目的地名称
     */
    private String destName;

    /**
     * 所属省份
     */
    private Province province;

    /**
     * 头像
     */
    private Photo headPic;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 乐观锁
     */
    private Timestamp updateTime;

    public Photo getHeadPic() {
        return headPic;
    }

    public void setHeadPic(Photo headPic) {
        this.headPic = headPic;
    }

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }

    public String getHotDesId() {
        return hotDesId;
    }

    public void setHotDesId(String hotDesId) {
        this.hotDesId = hotDesId;
    }

    public String getDestName() {
        return destName;
    }

    public void setDestName(String destName) {
        this.destName = destName;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public HotDestination() {
    }
}
