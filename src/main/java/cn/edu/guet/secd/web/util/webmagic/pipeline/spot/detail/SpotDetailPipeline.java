package cn.edu.guet.secd.web.util.webmagic.pipeline.spot.detail;

import cn.edu.guet.secd.web.util.webmagic.processor.spot.detail.DetailProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.downloader.HttpClientDownloader;
import us.codecraft.webmagic.pipeline.Pipeline;
import us.codecraft.webmagic.proxy.Proxy;
import us.codecraft.webmagic.proxy.SimpleProxyProvider;

import java.io.Serializable;
import java.util.List;

/**
 * 景点详情
 *
 * @author Administrator
 */
@Repository
public class SpotDetailPipeline implements Serializable,Pipeline{

    public static final String SPOT_DETAIL_URL_LIST = "spotDetailUrlList";

    @Autowired
    private DetailProcessor detailProcessor;
    @Autowired
    private DetailPipeline detailPipeline;

    @Override
    public void process(ResultItems resultItems, Task task) {
        List<String> spotDetailUrlList = resultItems.get(SPOT_DETAIL_URL_LIST);
        for (String url:spotDetailUrlList) {
            Spider.create(detailProcessor).addPipeline(detailPipeline).addUrl(url).thread(10).run();
        }

    }
}
