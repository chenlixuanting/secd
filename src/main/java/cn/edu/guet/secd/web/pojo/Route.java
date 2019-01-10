package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;

/**
 * 行程
 *
 * @author Administrator
 */
public class Route implements Serializable {

    /**
     * 行程主键
     */
    private String routeId;

    /**
     * 作者名称
     */
    private String authorName;

    /**
     * 标题
     */
    private String title;

    /**
     * 浏览次数
     */
    private Integer vistedTimes;

    public String getRouteId() {
        return routeId;
    }

    public void setRouteId(String routeId) {
        this.routeId = routeId;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getVistedTimes() {
        return vistedTimes;
    }

    public void setVistedTimes(Integer vistedTimes) {
        this.vistedTimes = vistedTimes;
    }

    public Route() {
    }
}
