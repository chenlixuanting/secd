package cn.edu.guet.secd.web.util.webmagic.processor.spot.list;

import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.list.SpotPagePipeline;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;
import java.util.List;

/**
 * @author Administrator
 */
@Component
public class SpotPageProcessor implements Serializable, PageProcessor {

    private Site site = Site.me().setRetryTimes(10).setSleepTime(400).setTimeOut(5000);

    @Override
    public void process(Page page) {

        List<String> spotDetailUrlList = page.getHtml().xpath("//div[@class='list_mod2']/div/a/@href").all();
        List<String> spotImgUrlList = page.getHtml().xpath("//div[@class='list_mod2']/div/a/img/@src").all();
        List<String> spotAddressList = page.getHtml().xpath("//dd[@class='ellipsis']/text()").all();
        List<String> spotNameList = page.getHtml().xpath("//div[@class='rdetailbox']/dl/dt/a/text()").all();
        List<String> spotRankList = page.getHtml().xpath("//div[@class='rdetailbox']/dl/dt/s/text()").all();
        List<String> spotScoreList = page.getHtml().xpath("//ul[@class='r_comment']/li/a/strong/text()").all();
        String cityName = page.getHtml().xpath("//div[@class='dest_toptitle']/div/div/h1/a/text()").toString();

        if(StringUtils.isEmpty(spotDetailUrlList) || StringUtils.isEmpty(spotImgUrlList) ||StringUtils.isEmpty(spotNameList) || StringUtils.isEmpty(spotRankList)){
            page.setSkip(true);
        }else{
            page.putField(SpotPagePipeline.SPOT_DETAIL_URL_LIST,spotDetailUrlList);
            page.putField(SpotPagePipeline.SPOT_IMG_URL_LIST,spotImgUrlList);
            page.putField(SpotPagePipeline.SPOT_ADDRESS_LIST,spotAddressList);
            page.putField(SpotPagePipeline.SPOT_NAME_LIST,spotNameList);
            page.putField(SpotPagePipeline.SPOT_RANK_LIST,spotRankList);
            page.putField(SpotPagePipeline.SPOT_SCORE_LIST,spotScoreList);
            page.putField(SpotPagePipeline.CITY_NAME,cityName);
        }

        List<String> urlList = page.getHtml().xpath("//div[@class='pager_v1']/a/@href").all();

        page.addTargetRequests(urlList);
    }

    @Override
    public Site getSite() {
        return this.site;
    }
}
