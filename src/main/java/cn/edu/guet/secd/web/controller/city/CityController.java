package cn.edu.guet.secd.web.controller.city;

import cn.edu.guet.secd.web.constant.CityConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/city")
public class CityController {

    /**
     * 城市首页
     * @return
     */
    @RequestMapping("/index")
        public String index(){
        return CityConstant.CITY_INDEX;
    }

    /**
     * 城市景点
     * @return
     */
    @RequestMapping("/view-spot")
    public String viewSpot(){
        return CityConstant.CITY_VIEW_SPOT;
    }

}
