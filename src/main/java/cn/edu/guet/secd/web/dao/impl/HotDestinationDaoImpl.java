package cn.edu.guet.secd.web.dao.impl;

import cn.edu.guet.secd.web.dao.HotDestinationDao;
import cn.edu.guet.secd.web.pojo.HotDestination;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Administrator
 */
@Repository
public class HotDestinationDaoImpl extends BaseDaoImpl<HotDestination> implements HotDestinationDao {

    @Override
    public List<HotDestination> listAllHotDestination() {
        String hql = "from cn.edu.guet.secd.web.pojo.HotDestination";
        try {
            Query query = getCurrentSession().createQuery(hql);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
