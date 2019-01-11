package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.Province;

/**
 * @author Administrator
 */
public interface ProvinceService {

    Boolean saveProvince(Province province);

    Province findByProvinceName(String provinceName);

}
