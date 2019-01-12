package cn.edu.guet.secd.web.dao.impl;

import cn.edu.guet.secd.web.dao.ProvinceDao;
import cn.edu.guet.secd.web.pojo.Province;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 * @author Administrator
 */
@Repository
public class ProvinceDaoImpl extends BaseDaoImpl<Province> implements ProvinceDao {

    @Override
    public Province findByProvinceName(String provinceName) {
        String hql = "from cn.edu.guet.secd.web.pojo.Province";
        try {
            Query query = getCurrentSession().createQuery(hql);
            return (Province) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
