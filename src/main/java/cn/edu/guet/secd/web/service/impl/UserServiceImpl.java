package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.UserDao;
import cn.edu.guet.secd.web.pojo.User;
import cn.edu.guet.secd.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Administrator
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getByUserAccount(String account) {
        return userDao.getByUserAccount(account);
    }

    @Override
    public Boolean saveUser(User user) {
        return userDao.saveUser(user);
    }
}
