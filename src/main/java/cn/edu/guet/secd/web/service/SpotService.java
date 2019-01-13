package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Spot;

import java.util.List;

/**
 * @author Administrator
 */
public interface SpotService {

    Boolean saveSpot(Spot spot);

    Spot getBySpotName(String spotName);

    Boolean updateSpot(Spot spot);

    List<Spot> listByCityOrderByRankAscLimit(City city, int firstRank, int endRank);

    List<Spot> listSpotByCityPage(City city, int currentPage, int number);

}
