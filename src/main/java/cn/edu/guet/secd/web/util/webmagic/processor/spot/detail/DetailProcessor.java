package cn.edu.guet.secd.web.util.webmagic.processor.spot.detail;

import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.detail.DetailPipeline;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;
import java.util.List;

/**
 * 抓取景点详细信息
 *
 * @author Administrator
 */
@Component
public class DetailProcessor implements Serializable, PageProcessor {

    private Site site = Site.me().setRetryTimes(10).setSleepTime(400).setTimeOut(5000);

    @Override
    public void process(Page page) {
        String spotName = page.getHtml().xpath("//div[@class='dest_toptitle detail_tt']/div/div/h1/a/text()").toString();
        List<String> list = page.getHtml().xpath("//div[@class='detailcon detailbox_dashed']/html()").all();
        String brightPoint = page.getHtml().xpath("//div[@class='detailcon bright_spot']/ul/li/text()").toString();
        if (StringUtils.isEmpty(spotName) || StringUtils.isEmpty(list) || StringUtils.isEmpty(brightPoint)) {
            page.setSkip(true);
        } else {
            page.putField(DetailPipeline.SPOT_NAME, spotName);
            page.putField(DetailPipeline.BRIGHT_POINT, brightPoint);
            page.putField(DetailPipeline.INTRODUCE_AND_SPECIAL_HINT, list);
        }
    }

    @Override
    public Site getSite() {
        return this.site;
    }

}
