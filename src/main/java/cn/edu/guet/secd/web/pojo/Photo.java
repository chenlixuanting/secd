package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 图片
 *
 * @author Administrator
 */
public class Photo implements Serializable {

    /**
     * 图片主键
     */
    private String photoId;

    /**
     * 图片URL
     */
    private String url;

    /**
     * 创建时间
     */
    private Timestamp createTime;

    /**
     * 乐观锁
     */
    private Timestamp updateTime;

    public String getPhotoId() {
        return photoId;
    }

    public void setPhotoId(String photoId) {
        this.photoId = photoId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Photo() {
    }
}
