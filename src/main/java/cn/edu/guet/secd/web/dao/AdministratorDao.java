package cn.edu.guet.secd.web.dao;


import cn.edu.guet.secd.web.pojo.Administrator;

/**
 * Created by Administrator on 9/13/2018.
 */
public interface AdministratorDao {

    public Administrator findByAdminAccount(String account);

}
