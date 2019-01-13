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
    public City getByCityName(String cityName) {
        String hql = "from cn.edu.guet.secd.web.pojo.City as c where c.cityName=:cityName";
        try {
            Query query = getCurrentSession().createQuery(hql).setParameter("cityName", cityName);
            return (City) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<City> listCityOrderByIdAscLimit(int start, int end) {
        String hql = "from cn.edu.guet.secd.web.pojo.City as c order by c.cityId asc";
        try {
            //query.setFirstResult(0),query.setMaxResults(4);相当于MySQL中的limit 0, 4;
            Query query = getCurrentSession().createQuery(hql);
            /**
             * 从第一条记录开始
             */
            query.setFirstResult(start);

            /**
             * 往后取6条记录
             */
            query.setMaxResults(end);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public City getFirstByCityIdAsc() {
        String hql = "from cn.edu.guet.secd.web.pojo.City as c order by c.cityId asc";
        try {
            Query query = getCurrentSession().createQuery(hql);
            query.setFirstResult(0);
            query.setMaxResults(1);
            return (City) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<City> listCityByPage(int currentPage, int number) {
        String hql = "from cn.edu.guet.secd.web.pojo.City";
        try {
            Query query = getCurrentSession().createQuery(hql);
            query.setFirstResult((currentPage - 1) * number);
            query.setMaxResults(number);
            return query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Long countAllCity() {
        String hql = "select count(*) from cn.edu.guet.secd.web.pojo.City";
        try {
            Query query = getCurrentSession().createQuery(hql);
            return (Long) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public City getById(String id) {
        String hql = "from cn.edu.guet.secd.web.pojo.City as c where c.cityId=:cityId";
        try {
            Query query = getCurrentSession().createQuery(hql);
            query.setParameter("cityId", id);
            return (City) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
