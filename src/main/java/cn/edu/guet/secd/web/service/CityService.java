package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.City;

/**
 * @author Administrator
 */
public interface CityService {

    Boolean saveCity(City city);

    City findByCityName(String cityName);

}
