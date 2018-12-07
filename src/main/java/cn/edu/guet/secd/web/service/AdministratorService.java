package cn.edu.guet.secd.web.service;


import cn.edu.guet.secd.web.pojo.Administrator;

/**
 * Created by Administrator on 9/13/2018.
 */
public interface AdministratorService {

    public Administrator findByAdminAccount(String account);

}
