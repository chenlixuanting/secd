package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.SpotDao;
import cn.edu.guet.secd.web.pojo.Spot;
import cn.edu.guet.secd.web.service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Administrator
 */
@Service
public class SpotServiceImpl implements SpotService{

    @Autowired
    private SpotDao spotDao;

    @Override
    public Boolean saveSpot(Spot spot) {
        return spotDao.save(spot);
    }

    @Override
    public Spot findBySpotName(String spotName) {
        return spotDao.findBySpotName(spotName);
    }

    @Override
    public Boolean updateSpot(Spot spot) {
        return spotDao.update(spot);
    }

}
