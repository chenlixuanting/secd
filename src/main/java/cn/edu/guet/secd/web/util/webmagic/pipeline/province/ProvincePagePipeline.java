package cn.edu.guet.secd.web.util.webmagic.pipeline.province;

import cn.edu.guet.secd.web.constant.CommonConstant;
import cn.edu.guet.secd.web.pojo.HotDestination;
import cn.edu.guet.secd.web.pojo.Photo;
import cn.edu.guet.secd.web.pojo.Province;
import cn.edu.guet.secd.web.service.HotDestinationService;
import cn.edu.guet.secd.web.service.ProvinceService;
import cn.edu.guet.secd.web.util.UrlFileDownloadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

/**
 * 广西省份页面
 *
 * @author Administrator
 */
@Repository
public class ProvincePagePipeline implements Pipeline {

    @Autowired
    private ProvinceService provinceService;

    @Autowired
    private HotDestinationService hotDestinationService;

    public static final String HOT_DESTINATION_PIC_URL = "hotDestinationPicUrl";
    public static final String HOT_DESTINATION_NAME = "hotDestinationName";

    @Override
    public void process(ResultItems resultItems, Task task) {

        Province province = new Province();
        province.setProvinceName("广西");
        province.setCreateTime(new Timestamp(System.currentTimeMillis()));
        provinceService.saveProvince(province);

        List<String> hotDestinationPicUrl = resultItems.get(HOT_DESTINATION_PIC_URL);
        List<String> hotDestinationName = resultItems.get(HOT_DESTINATION_NAME);

        for (int x = 0; x < hotDestinationName.size(); x++) {
            Province p = provinceService.getByProvinceName("广西");
            HotDestination hotDestination = new HotDestination();
            Photo photo = new Photo();

            try {
                String headPicUrl = hotDestinationPicUrl.get(x);
                String newPicName = UUID.randomUUID().toString() + headPicUrl.substring(headPicUrl.lastIndexOf("."));
                String newPicUrl = CommonConstant.LOCAL_HOST_ADDRESS + CommonConstant.CITY_HEAD_PIC_ADDRESS+newPicName;
                photo.setUrl(newPicUrl);
                photo.setCreateTime(new Timestamp(System.currentTimeMillis()));
                UrlFileDownloadUtil.downloadPicture(headPicUrl, newPicName, CommonConstant.CITY_HEAD_PIC_BASE_DIR);
            } catch (Exception e) {
                e.printStackTrace();
            }

            hotDestination.setDestName(hotDestinationName.get(x));
            hotDestination.setHeadPic(photo);
            hotDestination.setCreateTime(new Timestamp(System.currentTimeMillis()));
            hotDestination.setProvince(p);

            hotDestinationService.saveHotDestination(hotDestination);
        }

    }

}
