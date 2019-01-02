package cn.edu.guet.secd.web.controller.province;

import cn.edu.guet.secd.web.constant.ProvinceConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Administrator
 */
@Controller
@RequestMapping("/province")
public class ProvinceController {

    /**
     * 省市首页
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String indexPage() {
        return ProvinceConstant.PROVINCE_INDEX;
    }

    /**
     * 省市景区
     *
     * @return
     */
    @RequestMapping(value = "/view-spot", method = RequestMethod.GET)
    public String viewSpotPage() {
        return ProvinceConstant.PROVINCE_VIEW_SPOT;
    }

    /**
     * 省市更多景区
     */
    @RequestMapping(value = "/more-view-spot", method = RequestMethod.GET)
    public String moreViewSpotPage() {
        return ProvinceConstant.PROVINCE_MORE_VIEW_SPOT;
    }

}
