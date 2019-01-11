package cn.edu.guet.secd.web.util.webmagic.pipeline;

import org.springframework.stereotype.Repository;
import us.codecraft.webmagic.ResultItems;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.Pipeline;

import java.io.Serializable;

/**
 * @author Administrator
 */
@Repository
public class SpotPagePipeline implements Serializable,Pipeline {
    @Override
    public void process(ResultItems resultItems, Task task) {
    }
}
