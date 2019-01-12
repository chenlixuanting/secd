package cn.edu.guet.secd.web.dao.impl;

import cn.edu.guet.secd.web.dao.CityDao;
import cn.edu.guet.secd.web.pojo.City;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Administrator
 */
@Repository
public class CityDaoImpl extends BaseDaoImpl<City> implements CityDao {

    @Override
    public City findByCityName(String cityName) {

        String hql = "from cn.edu.guet.secd.web.pojo.City as c where c.cityName=:cityName";

        try {
            Query query = getCurrentSession().createQuery(hql).setParameter("cityName",cityName);
            return (City) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

}
