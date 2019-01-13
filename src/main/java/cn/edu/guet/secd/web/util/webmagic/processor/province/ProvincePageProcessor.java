package cn.edu.guet.secd.web.util.webmagic.processor.province;

import cn.edu.guet.secd.web.util.webmagic.pipeline.province.ProvincePagePipeline;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;
import java.util.List;

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

    private Site site = Site.me().setRetryTimes(10).setSleepTime(400).setTimeOut(5000);

    @Override
    public void process(Page page) {

        List<String> hotDestinationName = page.getHtml().xpath("//div[@class='liner_bg']/dl/dt/text()").all();
        List<String> hotDestinationPicUrl = page.getHtml().xpath("//li[@class='w_220']/a/span/img/@img-src").all();

        if (StringUtils.isEmpty(hotDestinationName) || StringUtils.isEmpty(hotDestinationPicUrl)) {
            page.setSkip(true);
        } else {
            page.putField(ProvincePagePipeline.HOT_DESTINATION_NAME, hotDestinationName);
            page.putField(ProvincePagePipeline.HOT_DESTINATION_PIC_URL, hotDestinationPicUrl);
        }

    }

    @Override
    public Site getSite() {
        return this.site;
    }

}
