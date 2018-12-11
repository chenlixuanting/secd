package cn.edu.guet.secd.web.dao;

import cn.edu.guet.secd.web.pojo.User;

public interface UserDao {
    User getByUserAccount(String account);
    Boolean saveUser(User user);
}
