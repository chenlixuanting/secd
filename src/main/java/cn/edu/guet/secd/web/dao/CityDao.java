package cn.edu.guet.secd.web.dao;

import cn.edu.guet.secd.web.pojo.City;

/**
 * @author Administrator
 */
public interface CityDao {

    Boolean save(City city);

    City findByCityName(String cityName);

}
