package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.SpotDao;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Spot;
import cn.edu.guet.secd.web.service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 */
@Service
public class SpotServiceImpl implements SpotService {

    @Autowired
    private SpotDao spotDao;

    @Override
    public Boolean saveSpot(Spot spot) {
        return spotDao.save(spot);
    }

    @Override
    public Spot getBySpotName(String spotName) {
        return spotDao.getBySpotName(spotName);
    }

    @Override
    public Boolean updateSpot(Spot spot) {
        return spotDao.update(spot);
    }

    @Override
    public List<Spot> listByCityOrderByRankAscLimit(City city, int firstRank, int endRank) {
        return spotDao.listByCityOrderByRankAscLimit(city, firstRank, endRank);
    }

    @Override
    public List<Spot> listSpotByCityPage(City city, int currentPage, int number) {
        return spotDao.listSpotByCityPage(city, currentPage, number);
    }

    @Override
    public Spot getSpotById(String spotId) {
        return spotDao.getSpotById(spotId);
    }

}
