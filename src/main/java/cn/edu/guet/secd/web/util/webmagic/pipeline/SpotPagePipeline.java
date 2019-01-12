package cn.edu.guet.secd.web.util.webmagic.pipeline;

import cn.edu.guet.secd.web.constant.CommonConstant;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.Photo;
import cn.edu.guet.secd.web.pojo.Spot;
import cn.edu.guet.secd.web.service.CityService;
import cn.edu.guet.secd.web.service.SpotService;
import cn.edu.guet.secd.web.util.UrlFileDownloadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
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
public class SpotPagePipeline implements Serializable,Pipeline {

    public static final String SPOT_DETAIL_URL_LIST = "spotDetailUrlList";
    public static final String SPOT_IMG_URL_LIST = "spotImgUrlList";
    public static final String SPOT_ADDRESS_LIST = "spotAddressList";
    public static final String SPOT_NAME_LIST = "spotNameList";
    public static final String SPOT_RANK_LIST = "spotRankList";
    public static final String SPOT_SCORE_LIST = "spotScoreList";
    public static final String CITY_NAME = "cityName";

    public static Set<String> set = new HashSet<String>();

    @Autowired
    private SpotService spotService;
    @Autowired
    private CityService cityService;

    @Override
    public void process(ResultItems resultItems, Task task) {

        List<String> spotDetailUrlList = resultItems.get(SPOT_DETAIL_URL_LIST);
        List<String> spotImgUrlList = resultItems.get(SPOT_IMG_URL_LIST);
        List<String> spotAddressList = resultItems.get(SPOT_ADDRESS_LIST);
        List<String> spotNameList = resultItems.get(SPOT_NAME_LIST);
        List<String> spotRankList = resultItems.get(SPOT_RANK_LIST);
        List<String> spotScoreList = resultItems.get(SPOT_SCORE_LIST);
        String cityName = resultItems.get(CITY_NAME);

        for (int x=0;x<spotDetailUrlList.size();x++){

            synchronized (SpotPagePipeline.class){
                Spot spot = new Spot();
                String spotName = spotNameList.get(x);
                if(!set.contains(spotName)){
                    set.add(spotName);
                    spot.setSpotName(spotNameList.get(x));
                    City city = cityService.findByCityName(cityName);
                    spot.setCity(city);
                    String headPicUrl = spotImgUrlList.get(x);
                    Photo headPic = new Photo();

                    try {
                        String newPicName = UUID.randomUUID().toString() + headPicUrl.substring(headPicUrl.lastIndexOf("."));
                        UrlFileDownloadUtil.downloadPicture(headPicUrl, newPicName, CommonConstant.SPOT_HEAD_PIC_BASE_DIR);
                        String newPicUrl = CommonConstant.LOCAL_HOST_ADDRESS +CommonConstant.SPOT_HEAD_PIC_ADDRESS+ newPicName;
                        headPic.setUrl(newPicUrl);
                    }catch (Exception e){
                        headPic.setUrl(CommonConstant.LOCAL_HOST_ADDRESS+CommonConstant.SPOT_DEFAULT_HEAD_PIC_ADDRESS);
                    }

                    headPic.setCreateTime(new Timestamp(System.currentTimeMillis()));
                    spot.setHeadPic(headPic);
                    spot.setAddress(spotAddressList.get(x));

                    if(!StringUtils.isEmpty(spotRankList) && x<spotRankList.size()){
                        spot.setSpotRank(Integer.valueOf(spotRankList.get(x).substring(1,spotRankList.get(x).length()-1)));
                    }

                    if(!StringUtils.isEmpty(spotScoreList) && x<spotScoreList.size()){
                        spot.setScore(Double.valueOf(spotScoreList.get(x)));
                    }

                    spot.setCreateTime(new Timestamp(System.currentTimeMillis()));
                    spotService.saveSpot(spot);
                }

            }

        }

    }
}
