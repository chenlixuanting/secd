package cn.edu.guet.secd.web.util.webmagic.processor;

import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;

/**
 * @author Administrator
 */
@Component
public class SpotPageProcessor implements Serializable, PageProcessor {

    private Site site = Site.me().setRetryTimes(3).setSleepTime(100);

    @Override
    public void process(Page page) {

    }

    @Override
    public Site getSite() {
        return this.site;
    }
}
