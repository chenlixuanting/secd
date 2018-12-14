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
    public String indexPage() {
        return ProvinceConstant.PROVINCE_INDEX;
    }

    /**
     * 省市景区
     * @return
     */
    @RequestMapping("/view-spot")
    public String viewSpotPage(){
        return ProvinceConstant.PROVINCE_VIEW_SPOT;
    }

    /**
     * 省市更多景区
     */
    @RequestMapping("/more-view-spot")
    public String moreViewSpotPage(){
        return ProvinceConstant.PROVINCE_MORE_VIEW_SPOT;
    }

}
