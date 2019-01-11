package cn.edu.guet.secd.web.util.webmagic;

import cn.edu.guet.secd.web.util.webmagic.pipeline.CityListPagePipeline;
import cn.edu.guet.secd.web.util.webmagic.pipeline.ProvincePagePipeline;
import cn.edu.guet.secd.web.util.webmagic.processor.CityListPageProcessor;
import cn.edu.guet.secd.web.util.webmagic.processor.ProvincePageProcessor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import us.codecraft.webmagic.Spider;

import java.io.Serializable;

/**
 * master页面处理器
 *
 * @author Administrator
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Master implements Serializable {

    @Autowired
    private ProvincePageProcessor provincePageProcessor;

    @Autowired
    private ProvincePagePipeline provincePagePipeline;

    @Autowired
    private CityListPageProcessor cityListPageProcessor;

    @Autowired
    private CityListPagePipeline cityListPagePipeline;

    @Test
    public void masterProcessor() {

        /**
         * 爬取省份主页信息生成province实体
         */
        Spider.create(provincePageProcessor).addPipeline(provincePagePipeline).addUrl(ProvincePageProcessor.BASE_URL).thread(1).run();

        /**
         * 爬取省份城市列表生成city实体
         */
        Spider.create(cityListPageProcessor).addPipeline(cityListPagePipeline).addUrl(CityListPageProcessor.BASE_URL).thread(1).run();

    }

}
