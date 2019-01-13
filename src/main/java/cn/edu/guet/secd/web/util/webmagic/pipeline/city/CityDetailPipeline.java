package cn.edu.guet.secd.web.util.webmagic.pipeline.city;

import cn.edu.guet.secd.web.constant.CommonConstant;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Photo;
import cn.edu.guet.secd.web.service.CityService;
import cn.edu.guet.secd.web.util.UrlFileDownloadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * @author Administrator
 */
@Repository
public class CityDetailPipeline implements Serializable, Pipeline {

    @Autowired
    private CityService cityService;

    @Override
    public void process(ResultItems resultItems, Task task) {

        List<String> photosUrl = resultItems.get("photosUrl");
        String cityName = resultItems.get("cityName");

        City city = cityService.getByCityName(cityName);

        Set<Photo> photoSet = new HashSet<Photo>();

        for (String headPicUrl : photosUrl) {
            Photo headPic = new Photo();
            try {
                String newPicName = UUID.randomUUID().toString() + headPicUrl.substring(headPicUrl.lastIndexOf("."));
                String newPicUrl = CommonConstant.LOCAL_HOST_ADDRESS + CommonConstant.CITY_HEAD_PIC_ADDRESS + newPicName;
                headPic.setUrl(newPicUrl);
                headPic.setCreateTime(new Timestamp(System.currentTimeMillis()));
                UrlFileDownloadUtil.downloadPicture(headPicUrl, newPicName, CommonConstant.CITY_HEAD_PIC_BASE_DIR);
            } catch (Exception e) {
                e.printStackTrace();
            }
            photoSet.add(headPic);
        }
        city.setPhotos(photoSet);
        cityService.updateCity(city);
    }

}
