package cn.edu.guet.secd.web.dao.impl;

import cn.edu.guet.secd.web.dao.AdministratorDao;
import cn.edu.guet.secd.web.pojo.Administrator;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 9/13/2018.
 */
@Repository
public class AdministratorDaoImpl extends BaseDaoImpl<Administrator> implements AdministratorDao {

    @Override
    public Administrator findByAdminAccount(String account) {

        String hql = "from cn.edu.guet.secd.web.pojo.Administrator as t where t.account=:account";

        Administrator administrator = null;

        try {
            Query query = getCurrentSession().createQuery(hql).setParameter("account", account);
            administrator = (Administrator) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return administrator;
    }

}
