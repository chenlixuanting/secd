package cn.edu.guet.secd.web.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Set;

/**
 * 省份
 *
 * @author Administrators
 */
public class Province implements Serializable {

    /**
     * 省份主键
     */
    private String provinceId;

    /**
     * 省份名称
     */
    private String provinceName;

    /**
     * 城市
     */
    private Set<City> cities;

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

    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId;
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName;
    }

    public Set<City> getCities() {
        return cities;
    }

    public void setCities(Set<City> cities) {
        this.cities = cities;
    }

    public Province() {
    }
}
