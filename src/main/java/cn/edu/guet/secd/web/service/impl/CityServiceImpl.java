package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.CityDao;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
