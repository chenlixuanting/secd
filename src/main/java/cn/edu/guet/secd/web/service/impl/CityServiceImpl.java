package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.CityDao;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 */
@Service
public class CityServiceImpl implements CityService {

    @Autowired
    private CityDao cityDao;

    @Override
    public Boolean saveCity(City city) {
        return cityDao.save(city);
    }

    @Override
    public City getByCityName(String cityName) {
        return cityDao.getByCityName(cityName);
    }

    @Override
    public List<City> listCityOrderByIdAscLimit(int start, int end) {
        return cityDao.listCityOrderByIdAscLimit(start, end);
    }

    @Override
    public City getFirstByCityIdAsc() {
        return cityDao.getFirstByCityIdAsc();
    }

    @Override
    public List<City> listCityByPage(int currentPage, int number) {
        return cityDao.listCityByPage(currentPage, number);
    }

    @Override
    public Long countAllCity() {
        return cityDao.countAllCity();
    }

}
