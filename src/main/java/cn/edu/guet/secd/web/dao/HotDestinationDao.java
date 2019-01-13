package cn.edu.guet.secd.web.dao;

import cn.edu.guet.secd.web.pojo.HotDestination;

import java.util.List;

/**
 * @author Administrator
 */
public interface HotDestinationDao {
    Boolean save(HotDestination hotDestination);
    List<HotDestination> listAllHotDestination();
}
