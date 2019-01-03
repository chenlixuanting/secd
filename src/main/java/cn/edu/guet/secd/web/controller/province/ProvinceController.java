package cn.edu.guet.secd.web.controller.province;

import cn.edu.guet.secd.web.constant.ProvinceConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 省市控制器
 *
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
    @RequestMapping(value = "/spot", method = RequestMethod.GET)
    public String viewSpotPage() {
        return ProvinceConstant.PROVINCE_SPOT;
    }

    /**
     * 省市更多景区
     */
    @RequestMapping(value = "/more-spot", method = RequestMethod.GET)
    public String moreViewSpotPage() {
        return ProvinceConstant.PROVINCE_MORE_SPOT;
    }

    /**
     * 省市购物地点
     *
     * @return
     */
    @RequestMapping(value = "/shopping", method = RequestMethod.GET)
    public String shoppingPlace() {
        return ProvinceConstant.PROVINCE_SHOPPING;
    }

    /**
     * 省市更多购物地点
     *
     * @return
     */
    @RequestMapping(value = "/more-shopping", method = RequestMethod.GET)
    public String moreShoppingPlace() {
        return ProvinceConstant.PROVINCE_MORE_SHOPPING;
    }

    @RequestMapping(value = "/travel", method = RequestMethod.GET)
    public String travelPage() {
        return ProvinceConstant.PROVINCE_TRAVEL;
    }

}
