package cn.edu.guet.secd.web.dao.impl;

import cn.edu.guet.secd.web.dao.UserDao;
import cn.edu.guet.secd.web.pojo.User;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{

    @Override
    public User getByUserAccount(String account) {

        String hql = "from cn.edu.guet.secd.web.pojo.User as u where u.account=:account";

        User user = null;

        try {
            Query query = getCurrentSession().createQuery(hql).setParameter("account",account);
            user = (User) query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    @Override
    public Boolean saveUser(User user) {
        return save(user);
    }
}
