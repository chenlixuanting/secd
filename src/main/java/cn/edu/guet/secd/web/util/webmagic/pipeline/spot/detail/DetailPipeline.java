package cn.edu.guet.secd.web.util.webmagic.pipeline.spot.detail;

import cn.edu.guet.secd.web.pojo.Spot;
import cn.edu.guet.secd.web.service.SpotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.Serializable;
import java.util.List;

/**
 * @author Administrator
 */
@Repository
public class DetailPipeline implements Serializable,Pipeline{

    public static final String SPOT_NAME = "spotName";
    public static final String INTRODUCE_AND_SPECIAL_HINT = "list";
    public static final String BRIGHT_POINT = "brightPoint";

    @Autowired
    private SpotService spotService;

    @Override
    public void process(ResultItems resultItems, Task task) {
        List<String> list = resultItems.get(INTRODUCE_AND_SPECIAL_HINT);
        String spotName = resultItems.get(SPOT_NAME);
        String brightPoint = resultItems.get(BRIGHT_POINT);
        Spot spot = spotService.findBySpotName(spotName);

        synchronized (DetailPipeline.class){
            if(!StringUtils.isEmpty(spot)){
                spot.setBrightPoint(brightPoint);
                spot.setIntroduce(list.get(0));
                System.out.println(list.get(list.size()-2));
                spot.setSpecialHint(list.get(list.size()-2));
                spotService.updateSpot(spot);
            }
        }

    }

}
