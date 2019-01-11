package cn.edu.guet.secd.web.util.webmagic.pipeline;

import cn.edu.guet.secd.web.pojo.Province;
import cn.edu.guet.secd.web.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.sql.Timestamp;

/**
 * 广西省份页面
 *
 * @author Administrator
 */
@Repository
public class ProvincePagePipeline implements Pipeline {

    @Autowired
    private ProvinceService provinceService;

    @Override
    public void process(ResultItems resultItems, Task task) {
        Province province = new Province();
        province.setProvinceName("广西");
        province.setCreateTime(new Timestamp(System.currentTimeMillis()));
        provinceService.saveProvince(province);
    }

}
