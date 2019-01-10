package cn.edu.guet.secd.web.webmagic;


import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.processor.PageProcessor;

import java.io.Serializable;

/**
 * 抓取所有
 *
 * @author Administrator
 */
public class GrabProvinceSpot implements Serializable, PageProcessor {

    @Override
    public void process(Page page) {
    }

    @Override
    public Site getSite() {
        return null;
    }

    public static void main(String[] args) {

    }

}
