package cn.edu.guet.secd.web.util.webmagic.pipeline.city;

import cn.edu.guet.secd.web.util.webmagic.processor.city.CityDetailProcessor;
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
public class CityDetailPagePipeline implements Serializable, Pipeline {

    public static final String CITY_SPOT_URL = "citySpotUrl";

    @Autowired
    private CityDetailProcessor cityDetailProcessor;
    @Autowired
    private CityDetailPipeline cityDetailPipeline;

    @Override
    public void process(ResultItems resultItems, Task task) {
        List<String> citySpotUrlList = resultItems.get(CITY_SPOT_URL);
        for (String str : citySpotUrlList) {
            Spider.create(cityDetailProcessor).addPipeline(cityDetailPipeline).addUrl(str).thread(10).run();
        }
    }

}
