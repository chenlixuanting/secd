package cn.edu.guet.secd.web.util.webmagic.processor.spot.detail;

import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.detail.SpotListDetailPipeline;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;
import java.util.List;

/**
 * 景点列表
 *
 * @author Administrator
 */
@Component
public class SpotListDetailProcessor implements Serializable, PageProcessor {

    /**
     * 广西省城市列表页
     */
    public static final String BASE_URL = "http://you.ctrip.com/countrysightlist/guangxi100052.html";

    private Site site = Site.me().setRetryTimes(10).setSleepTime(400).setTimeOut(10000);

    @Override
    public void process(Page page) {
        List<String> urlList = page.getHtml().links().regex("/countrysightlist/guangxi100052/p.?\\.html").all();
        for (int x = 0; x < urlList.size(); x++) {
            urlList.set(x, new StringBuilder(urlList.get(x)).insert(0, "http://you.ctrip.com").toString());
        }
        List<String> citySpotUrl = page.getHtml().xpath("//div[@class='cityimg']/a/@href").all();
        if (StringUtils.isEmpty(citySpotUrl)) {
            page.setSkip(true);
        } else {
            page.putField(SpotListDetailPipeline.CITY_SPOT_URL, citySpotUrl);
        }
        //更新待爬取队列
        page.addTargetRequests(urlList);
    }

    @Override
    public Site getSite() {
        return this.site;
    }

}
