package cn.edu.guet.secd.web.util.webmagic.pipeline.spot.list;

import cn.edu.guet.secd.web.util.webmagic.processor.spot.list.SpotPageProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.Serializable;
import java.util.List;

/**
 * @author Administrator
 */
@Repository
public class SpotListPagePipeline implements Serializable,Pipeline{

    public static final String CITY_SPOT_URL = "citySpotUrl";

    @Autowired
    private SpotPageProcessor spotPageProcessor;
    @Autowired
    private SpotPagePipeline spotPagePipeline;

    @Override
    public void process(ResultItems resultItems, Task task) {

        List<String> citySpotUrlList = resultItems.get(CITY_SPOT_URL);

        for (int x=0;x<citySpotUrlList.size();x++){
            citySpotUrlList.set(x, "http://you.ctrip.com"+citySpotUrlList.get(x).replaceFirst("place","sight"));
            Spider.create(spotPageProcessor).addPipeline(spotPagePipeline).addUrl(citySpotUrlList.get(x)).thread(10).run();
        }

    }

}
