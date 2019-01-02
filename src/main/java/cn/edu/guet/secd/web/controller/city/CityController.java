package cn.edu.guet.secd.web.controller.city;

import cn.edu.guet.secd.web.constant.CityConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Administrator
 */
@Controller
@RequestMapping("/city")
public class CityController {

    /**
     * 城市首页
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexPage() {
        return CityConstant.CITY_INDEX;
    }

    /**
     * 城市景点
     *
     * @return
     */
    @RequestMapping(value = "/view-spot", method = RequestMethod.GET)
    public String viewSpotPage() {
        return CityConstant.CITY_VIEW_SPOT;
    }

}
