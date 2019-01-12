package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.Spot;

/**
 * @author Administrator
 */
public interface SpotService {

    Boolean saveSpot(Spot spot);

    Spot findBySpotName(String spotName);

    Boolean updateSpot(Spot spot);

}
