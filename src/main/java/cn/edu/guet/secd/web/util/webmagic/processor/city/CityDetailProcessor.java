package cn.edu.guet.secd.web.util.webmagic.processor.city;

import cn.edu.guet.secd.web.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;
import java.util.List;

/**
 * @author Administrator
 */
@Component
public class CityDetailProcessor implements Serializable, PageProcessor {

    private Site site = Site.me().setRetryTimes(10).setSleepTime(400).setTimeOut(5000);

    @Override
    public void process(Page page) {
        List<String> photosUrl = page.getHtml().xpath("//div[@class='slide_show']/div/img/@src").all();
        String cityName = page.getHtml().xpath("//div[@class='dest_toptitle']/div/div/h1/a/@title").toString();
        page.putField("cityName", cityName);
        page.putField("photosUrl", photosUrl);
    }

    @Override
    public Site getSite() {
        return this.site;
    }

}
