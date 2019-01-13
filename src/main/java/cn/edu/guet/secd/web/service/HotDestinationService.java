package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.HotDestination;

import java.util.List;

/**
 * @author Administrator
 */
public interface HotDestinationService {
    Boolean saveHotDestination(HotDestination hotDestination);

    List<HotDestination> listAllHotDestination();

}
