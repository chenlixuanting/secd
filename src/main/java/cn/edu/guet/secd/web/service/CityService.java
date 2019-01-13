package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.City;

import java.util.List;

/**
 * @author Administrator
 */
public interface CityService {

    Boolean saveCity(City city);

    City getByCityName(String cityName);

    List<City> listCityOrderByIdAscLimit(int start, int end);

    City getFirstByCityIdAsc();

    List<City> listCityByPage(int currentPage, int number);

    Long countAllCity();

    Boolean updateCity(City city);

    City getById(String id);

}
