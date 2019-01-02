package cn.edu.guet.secd.web.dao;


import cn.edu.guet.secd.web.pojo.Administrator;

/**
 * @author Administrator
 * @date 9/13/2018
 */
public interface AdministratorDao {

    Administrator findByAdminAccount(String account);

}
