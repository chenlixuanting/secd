package cn.edu.guet.secd.web.util.webmagic.processor.spot.detail;

import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.detail.SpotDetailPipeline;
import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.list.SpotPagePipeline;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.List;

/**
 * 景点详情
 *
 * @author Administrator
 */
@Component
public class SpotDetailProcessor implements PageProcessor{

    private Site site = Site.me().setRetryTimes(15).setSleepTime(100).setTimeOut(3000);

    @Override
    public void process(Page page) {

        List<String> spotDetailUrlList = page.getHtml().xpath("//div[@class='list_mod2']/div/a/@href").all();

        for (int x = 0; x < spotDetailUrlList.size(); x++) {
            spotDetailUrlList.set(x, new StringBuilder(spotDetailUrlList.get(x)).insert(0, "http://you.ctrip.com").toString());
        }

        page.putField(SpotDetailPipeline.SPOT_DETAIL_URL_LIST,spotDetailUrlList);

        List<String> urlList = page.getHtml().xpath("//div[@class='pager_v1']/a/@href").all();

//        System.out.println(urlList.toString());

        for (int x = 0; x < urlList.size(); x++) {
            urlList.set(x, new StringBuilder(urlList.get(x)).insert(0, "http://you.ctrip.com").toString());
        }

        page.addTargetRequests(urlList);
    }

    @Override
    public Site getSite() {
        return this.site;
    }

}
