package cn.edu.guet.secd.web.service.impl;


import cn.edu.guet.secd.web.dao.AdministratorDao;
import cn.edu.guet.secd.web.pojo.Administrator;
import cn.edu.guet.secd.web.service.AdministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Administrator
 * @date 9/13/2018
 */
@Service
public class AdministratorServiceImpl implements AdministratorService {

    @Autowired
    private AdministratorDao administratorDao;

    @Override
    public Administrator findByAdminAccount(String account) {
        return administratorDao.findByAdminAccount(account);
    }

}
