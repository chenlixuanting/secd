package cn.edu.guet.secd.web.service;


import cn.edu.guet.secd.web.pojo.Administrator;

/**
 * @author Administrator
 * @date 9/13/2018
 */
public interface AdministratorService {

    Administrator getByAdminAccount(String account);

}
