package cn.edu.guet.secd.web.service;

import cn.edu.guet.secd.web.pojo.User;

/**
 * @author Administrator
 */
public interface UserService {

    User getByUserAccount(String account);

    Boolean saveUser(User user);

}
