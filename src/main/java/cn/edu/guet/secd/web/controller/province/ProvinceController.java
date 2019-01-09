package cn.edu.guet.secd.web.controller.province;

import cn.edu.guet.secd.web.constant.CityConstant;
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
    public String provinceIndexPage() {
        return ProvinceConstant.PROVINCE_INDEX;
    }

    /**
     * 省市景区
     *
     * @return
     */
    @RequestMapping(value = "/spot", method = RequestMethod.GET)
    public String provinceSpotPage() {
        return ProvinceConstant.PROVINCE_SPOT;
    }

    /**
     * 省市更多景区
     */
    @RequestMapping(value = "/more-spot", method = RequestMethod.GET)
    public String provinceMoreSpotPage() {
        return ProvinceConstant.PROVINCE_MORE_SPOT;
    }

    /**
     * 省市购物地点
     *
     * @return
     */
    @RequestMapping(value = "/shopping", method = RequestMethod.GET)
    public String provinceShoppingPage() {
        return ProvinceConstant.PROVINCE_SHOPPING;
    }

    /**
     * 省市更多购物地点
     *
     * @return
     */
    @RequestMapping(value = "/more-shopping", method = RequestMethod.GET)
    public String provinceMoreShoppingPage() {
        return ProvinceConstant.PROVINCE_MORE_SHOPPING;
    }

    /**
     * 省市游记
     *
     * @return
     */
    @RequestMapping(value = "/travel", method = RequestMethod.GET)
    public String provinceTravelPage() {
        return ProvinceConstant.PROVINCE_TRAVEL;
    }

    /**
     * 省市行程
     *
     * @return
     */
    @RequestMapping(value = "/route", method = RequestMethod.GET)
    public String provinceRoutePage() {
        return ProvinceConstant.PROVINCE_ROUTE;
    }

    /**
     * 城市首页
     *
     * @return
     */
    @RequestMapping(value = "/city/index", method = RequestMethod.GET)
    public String cityIndexPage() {
        return CityConstant.CITY_INDEX;
    }

    /**
     * 城市景点列表
     *
     * @return
     */
    @RequestMapping(value = "/city/spot", method = RequestMethod.GET)
    public String citySpotPage() {
        return CityConstant.CITY_SPOT;
    }

    /**
     * 城市购物点
     *
     * @return
     */
    @RequestMapping(value = "/city/shopping", method = RequestMethod.GET)
    public String cityShoppingPage() {
        return CityConstant.CITY_SHOPPING;
    }

    /**
     * 城市游记列表
     *
     * @return
     */
    @RequestMapping(value = "/city/travel", method = RequestMethod.GET)
    public String cityTravelPage() {
        return CityConstant.CITY_TRAVEL;
    }

    /**
     * 城市行程列表
     *
     * @return
     */
    @RequestMapping(value = "/city/route")
    public String cityRoutePage() {
        return CityConstant.CITY_ROUTE;
    }

    /**
     * 城市景点详情
     *
     * @return
     */
    @RequestMapping(value = "/city/spot-detail")
    public String citySpotDetailPage() {
        return CityConstant.CITY_SPOT_DETAIL;
    }


}
