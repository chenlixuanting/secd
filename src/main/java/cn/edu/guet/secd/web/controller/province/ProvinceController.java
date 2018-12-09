package cn.edu.guet.secd.web.controller.province;

import cn.edu.guet.secd.web.constant.ProvinceConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/province")
public class ProvinceController {

    /**
     * 省市首页
     * @return
     */
    @RequestMapping("/index")
    public String index() {
        return ProvinceConstant.PROVINCE_INDEX;
    }

    /**
     * 省市景点
     * @return
     */
    @RequestMapping("/view-spot")
    public String viewSpot(){
        return ProvinceConstant.PROVINCE_VIEW_SPOT;
    }

}
