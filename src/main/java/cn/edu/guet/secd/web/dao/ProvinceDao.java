package cn.edu.guet.secd.web.dao;

import cn.edu.guet.secd.web.pojo.Province;

/**
 * @author Administrator
 */
public interface ProvinceDao {
    Boolean save(Province province);

    Province findByProvinceName(String provinceName);
}
