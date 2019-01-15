package cn.edu.guet.secd.web.dao.impl;

import cn.edu.guet.secd.web.dao.SpotDao;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Spot;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Administrator
 */
@Repository
public class SpotDaoImpl extends BaseDaoImpl<Spot> implements SpotDao {

    @Override
    public Spot getBySpotName(String spotName) {
        String hql = "from cn.edu.guet.secd.web.pojo.Spot as s where s.spotName=:spotName";
        try {
            Query query = getCurrentSession().createQuery(hql).setParameter("spotName", spotName);
            return (Spot) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Spot> listByCityOrderByRankAscLimit(City city, int firstRank, int endRank) {
        String hql = "from cn.edu.guet.secd.web.pojo.Spot as s where s.city=? and s.spotRank between ? and ? order by s.spotRank asc";
        try {
            Query query = getCurrentSession().createQuery(hql).setParameter(0, city).setParameter(1, firstRank).setParameter(2, endRank);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Spot> listSpotByCityPage(City city, int currentPage, int number) {
        String hql = "from cn.edu.guet.secd.web.pojo.Spot as s where s.city=?";
        try {
            Query query = getCurrentSession().createQuery(hql);
            query.setParameter(0, city);
            query.setFirstResult((currentPage - 1) * number);
            query.setMaxResults(number);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Spot getSpotById(String spotId) {
        String hql = "from cn.edu.guet.secd.web.pojo.Spot as s where s.spotId=:spotId";
        try {
            Query query = getCurrentSession().createQuery(hql);
            query.setParameter("spotId", spotId);
            return (Spot) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
