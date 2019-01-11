package cn.edu.guet.secd.web.util.webmagic.pipeline;

import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Photo;
import cn.edu.guet.secd.web.pojo.Province;
import cn.edu.guet.secd.web.service.CityService;
import cn.edu.guet.secd.web.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.sql.Timestamp;
import java.util.List;

/**
 * 程序列表
 *
 * @author Administrator
 */
@Repository
public class CityListPagePipeline implements Pipeline {

    public static final String RES_KEY_CITY_NAME_LIST = "cityNameList";

    public static final String RES_KEY_CITY_HEAD_PIC_URL_LIST = "cityHeadPicUrlList";

    @Autowired
    private CityService cityService;

    @Autowired
    private ProvinceService provinceService;

    @Override
    public void process(ResultItems resultItems, Task task) {

        List<String> cityNameList = resultItems.get(RES_KEY_CITY_NAME_LIST);
        List<String> cityHeadPicUrlList = resultItems.get(RES_KEY_CITY_HEAD_PIC_URL_LIST);

        for (int x = 0; x < cityNameList.size(); x++) {

            Province province = provinceService.findByProvinceName("广西");

            Photo headPic = new Photo();
            headPic.setUrl(cityHeadPicUrlList.get(x));
            headPic.setCreateTime(new Timestamp(System.currentTimeMillis()));

            City city = new City();
            city.setProvince(province);
            city.setHeadPic(headPic);
            city.setCreateTime(new Timestamp(System.currentTimeMillis()));
            city.setCityName(cityNameList.get(x));

            cityService.saveCity(city);
        }

    }

}
