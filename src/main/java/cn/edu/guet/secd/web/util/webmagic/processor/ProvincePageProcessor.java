package cn.edu.guet.secd.web.util.webmagic.processor;

import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;

/**
 * 省份页面处理器
 *
 * @author Administrator
 */
@Component
public class ProvincePageProcessor implements Serializable, PageProcessor {

    /**
     * 广西省主页
     */
    public static final String BASE_URL = "http://you.ctrip.com/place/guangxi100052.html";

    private Site site = Site.me().setRetryTimes(3).setSleepTime(100);

    @Override
    public void process(Page page) {
    }

    @Override
    public Site getSite() {
        return this.site;
    }

}
