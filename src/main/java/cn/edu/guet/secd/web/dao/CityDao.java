package cn.edu.guet.secd.web.dao;

import cn.edu.guet.secd.web.pojo.City;

import java.util.List;

/**
 * @author Administrator
 */
public interface CityDao {

    Boolean save(City city);

    City getByCityName(String cityName);

    List<City> listCityOrderByIdAscLimit(int start, int end);

    City getFirstByCityIdAsc();

    List<City> listCityByPage(int currentPage, int number);

    Long countAllCity();

}
