package cn.edu.guet.secd.web.util.webmagic.processor;

import cn.edu.guet.secd.web.util.webmagic.pipeline.CityListPagePipeline;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;
import java.util.List;

/**
 * 抓取广西所有城市
 *
 * @author Administrator
 */
@Component
public class CityListPageProcessor implements Serializable, PageProcessor {

    /**
     * 广西省城市列表页
     */
    public static final String BASE_URL = "http://you.ctrip.com/countrysightlist/guangxi100052.html";

    private Site site = Site.me().setRetryTimes(3).setSleepTime(100);

    @Override
    public void process(Page page) {

        List<String> urlList = page.getHtml().links().regex("/countrysightlist/guangxi100052/p.?\\.html").all();

        for (int x = 0; x < urlList.size(); x++) {
            urlList.set(x, new StringBuilder(urlList.get(x)).insert(0, "http://you.ctrip.com").toString());
        }

        List<String> cityNameList = page.getHtml().xpath("//div[@class='cityimg']/span/text()").all();
        List<String> cityHeadPicUrlList = page.getHtml().xpath("//a[@class='ttd_nopic100']/img/@src").all();

        if (StringUtils.isEmpty(cityNameList) || StringUtils.isEmpty(cityHeadPicUrlList)) {
            page.setSkip(true);
        } else {
            page.putField(CityListPagePipeline.RES_KEY_CITY_NAME_LIST, cityNameList);
            page.putField(CityListPagePipeline.RES_KEY_CITY_HEAD_PIC_URL_LIST, cityHeadPicUrlList);
        }

        //更新待爬取队列
        page.addTargetRequests(urlList);

    }

    @Override
    public Site getSite() {
        return site;
    }

}
