package cn.edu.guet.secd.web.service.impl;

import cn.edu.guet.secd.web.dao.ProvinceDao;
import cn.edu.guet.secd.web.pojo.Province;
import cn.edu.guet.secd.web.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Administrator
 */
@Service
public class ProvinceServiceImpl implements ProvinceService {

    @Autowired
    private ProvinceDao provinceDao;

    @Override
    public Boolean saveProvince(Province province) {
        return provinceDao.save(province);
    }

    @Override
    public Province getByProvinceName(String provinceName) {
        return provinceDao.getByProvinceName(provinceName);
    }
}
