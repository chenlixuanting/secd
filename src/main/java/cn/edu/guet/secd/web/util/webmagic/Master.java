package cn.edu.guet.secd.web.util.webmagic;

import cn.edu.guet.secd.web.util.webmagic.pipeline.city.CityListPagePipeline;
import cn.edu.guet.secd.web.util.webmagic.pipeline.province.ProvincePagePipeline;
import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.detail.SpotListDetailPipeline;
import cn.edu.guet.secd.web.util.webmagic.pipeline.spot.list.SpotListPagePipeline;
import cn.edu.guet.secd.web.util.webmagic.processor.city.CityListPageProcessor;
import cn.edu.guet.secd.web.util.webmagic.processor.province.ProvincePageProcessor;
import cn.edu.guet.secd.web.util.webmagic.processor.spot.detail.SpotDetailProcessor;
import cn.edu.guet.secd.web.util.webmagic.processor.spot.detail.SpotListDetailProcessor;
import cn.edu.guet.secd.web.util.webmagic.processor.spot.list.SpotListPageProcessor;
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

    /**
     * 抓取省份
     */
    @Autowired
    private ProvincePageProcessor provincePageProcessor;
    @Autowired
    private ProvincePagePipeline provincePagePipeline;

    /**
     * 抓取城市列表
     */
    @Autowired
    private CityListPageProcessor cityListPageProcessor;
    @Autowired
    private CityListPagePipeline cityListPagePipeline;

    /**
     * 抓取各城市景点列表
     */
    @Autowired
    private SpotListPageProcessor spotListPageProcessor;
    @Autowired
    private SpotListPagePipeline spotListPagePipeline;

    /**
     * 抓取各城市景点详情
     */
    @Autowired
    private SpotListDetailProcessor spotListDetailProcessor;
    @Autowired
    private SpotListDetailPipeline spotListDetailPipeline;

    @Test
    public void masterProcessor() {

        /**
         * 爬取省份主页信息生成province实体
         */
//        Spider.create(provincePageProcessor).addPipeline(provincePagePipeline).addUrl(ProvincePageProcessor.BASE_URL).thread(1).run();

        /**
         * 爬取省份城市列表生成city实体
         */
//        Spider.create(cityListPageProcessor).addPipeline(cityListPagePipeline).addUrl(CityListPageProcessor.BASE_URL).thread(5).run();

        /**
         * 爬取城市景点列表信息
         */
//        Spider.create(spotListPageProcessor).addPipeline(spotListPagePipeline).addUrl(SpotListPageProcessor.BASE_URL).thread(1).run();

        /**
         * 爬取景点详细信息
         */
        Spider.create(spotListDetailProcessor).addPipeline(spotListDetailPipeline).addUrl(SpotListDetailProcessor.BASE_URL).thread(10).run();

    }

}
