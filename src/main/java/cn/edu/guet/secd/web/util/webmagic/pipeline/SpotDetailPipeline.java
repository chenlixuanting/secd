package cn.edu.guet.secd.web.util.webmagic.pipeline;

import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.Serializable;

/**
 * 景点详情
 *
 * @author Administrator
 */
@Repository
public class SpotDetailPipeline implements Serializable,Pipeline{
    @Override
    public void process(ResultItems resultItems, Task task) {

    }
}
