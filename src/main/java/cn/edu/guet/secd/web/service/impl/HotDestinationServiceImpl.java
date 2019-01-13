package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.HotDestinationDao;
import cn.edu.guet.secd.web.pojo.HotDestination;
import cn.edu.guet.secd.web.service.HotDestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 */
@Service
public class HotDestinationServiceImpl implements HotDestinationService {

    @Autowired
    private HotDestinationDao hotDestinationDao;

    @Override
    public Boolean saveHotDestination(HotDestination hotDestination) {
        return hotDestinationDao.save(hotDestination);
    }

    @Override
    public List<HotDestination> listAllHotDestination() {
        return hotDestinationDao.listAllHotDestination();
    }

}
