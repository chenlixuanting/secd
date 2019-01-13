package cn.edu.guet.secd.web.dao;

import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Spot;

import java.util.List;

/**
 * @author Administrator
 */
public interface SpotDao {

    Boolean save(Spot spot);

    Spot getBySpotName(String spotName);

    Boolean update(Spot spot);

    List<Spot> listByCityOrderByRankAscLimit(City city, int firstRank, int endRank);

}
