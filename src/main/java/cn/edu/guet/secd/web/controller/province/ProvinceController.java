package cn.edu.guet.secd.web.controller.province;

import cn.edu.guet.secd.web.constant.CityConstant;
import cn.edu.guet.secd.web.constant.ProvinceConstant;
import cn.edu.guet.secd.web.pojo.City;
import cn.edu.guet.secd.web.pojo.HotDestination;
import cn.edu.guet.secd.web.pojo.Photo;
import cn.edu.guet.secd.web.pojo.Spot;
import cn.edu.guet.secd.web.service.CityService;
import cn.edu.guet.secd.web.service.HotDestinationService;
import cn.edu.guet.secd.web.service.ProvinceService;
import cn.edu.guet.secd.web.service.SpotService;
import cn.edu.guet.secd.web.vo.CityVo;
import cn.edu.guet.secd.web.vo.HotDestinationVo;
import cn.edu.guet.secd.web.vo.PageVo;
import cn.edu.guet.secd.web.vo.SpotVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * 省市控制器
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/province")
public class ProvinceController {

    @Autowired
    private CityService cityService;

    @Autowired
    private ProvinceService provinceService;

    @Autowired
    private HotDestinationService hotDestinationService;

    @Autowired
    private SpotService spotService;

    /**
     * 省市首页
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView provinceIndexPage(HttpServletRequest request, HttpServletResponse response, ModelAndView modelAndView) {

        //加载广西必玩
        List<City> cities = cityService.listCityOrderByIdAscLimit(0, 6);
        List<HotDestination> hotDestinations = hotDestinationService.listAllHotDestination();
        List<HotDestinationVo> hotDestinationVos = new ArrayList<HotDestinationVo>();
        for (int x = 0; x < cities.size(); x++) {
            HotDestinationVo hotDestinationVo = new HotDestinationVo();
            hotDestinationVo.setCityId(cities.get(x).getCityId());
            hotDestinationVo.setCityName(cities.get(x).getCityName());
            hotDestinationVo.setHeadPicUrl(hotDestinations.get(x).getHeadPic().getUrl());
            hotDestinationVos.add(hotDestinationVo);
        }

        modelAndView.addObject("hotDestinationVos", hotDestinationVos);
        modelAndView.setViewName(ProvinceConstant.PROVINCE_INDEX);
        return modelAndView;
    }

    /**
     * 省市景区
     *
     * @return
     */
    @RequestMapping(value = "/spot", method = RequestMethod.GET)
    public ModelAndView provinceSpotPage(ModelAndView modelAndView) {

        City city = cityService.getFirstByCityIdAsc();
        List<Spot> spots = spotService.listByCityOrderByRankAscLimit(city, 1, 6);
        List<SpotVo> spotVos = new ArrayList<SpotVo>();
        for (Spot spot : spots) {
            SpotVo spotVo = new SpotVo();
            spotVo.setSpotId(spot.getSpotId());
            spotVo.setSpotName(spot.getSpotName());
            spotVo.setTotalComment(spot.getSpotComments().size());
//            spotVo.setTextdetail(spot.getIntroduce().substring(0, 20));
            spotVo.setScore(spot.getScore());
            spotVo.setHeadPicUrl(spot.getHeadPic().getUrl());
            spotVo.setScoreCss((int) (spot.getScore() / 5.0 * 100));
            spotVos.add(spotVo);
        }

        //加载前10条广西城市
        List<City> topTenCitys = cityService.listCityOrderByIdAscLimit(0, 10);
        List<CityVo> cityVos = new ArrayList<CityVo>();
        for (City c : topTenCitys) {
            CityVo cityVo = new CityVo();
            cityVo.setCityId(c.getCityId());
            cityVo.setCityName(c.getCityName());
            cityVo.setHeadPic(c.getHeadPic().getUrl());
            List<Spot> s = spotService.listByCityOrderByRankAscLimit(c, 0, 5);
            for (Spot spot : s) {
                SpotVo spotVo = new SpotVo();
                spotVo.setSpotId(spot.getSpotId());
                spotVo.setSpotName(spot.getSpotName());
                cityVo.getRecommendSpots().add(spotVo);
            }
            cityVos.add(cityVo);
        }
        modelAndView.addObject("cityVos", cityVos);
        modelAndView.addObject("spotVos", spotVos);
        modelAndView.setViewName(ProvinceConstant.PROVINCE_SPOT);
        return modelAndView;
    }

    /**
     * 省市更多景区
     */
    @RequestMapping(value = "/more-spot/{currentPage}", method = RequestMethod.GET)
    public ModelAndView provinceMoreSpotPage(@PathVariable Integer currentPage, ModelAndView modelAndView) {

        if (currentPage <= 0) {
            currentPage = 1;
        }

        List<City> cities = cityService.listCityByPage(currentPage, 10);
        List<CityVo> cityVos = new ArrayList<CityVo>();
        for (City city : cities) {
            CityVo cityVo = new CityVo();
            cityVo.setCityId(city.getCityId());
            cityVo.setCityName(city.getCityName());
            cityVo.setHeadPic(city.getHeadPic().getUrl());
            List<Spot> spots = spotService.listByCityOrderByRankAscLimit(city, 0, 5);
            for (Spot spot : spots) {
                SpotVo spotVo = new SpotVo();
                spotVo.setSpotId(spot.getSpotId());
                spotVo.setSpotName(spot.getSpotName());
                cityVo.getRecommendSpots().add(spotVo);
            }
            cityVos.add(cityVo);
        }

        //更新分页
        PageVo pageVo = new PageVo();
        pageVo.setCurrentPage(currentPage);
        pageVo.setStart((currentPage - 1) * 10 + 1);
        pageVo.setEnd((currentPage - 1) * 10 + cityVos.size());
        pageVo.setPreviousPageUrl("http://localhost:8080/secd/province/more-spot/" + (currentPage - 1));
        pageVo.setNextPageUrl("http://localhost:8080/secd/province/more-spot/" + (currentPage + 1));
        pageVo.setTotal(cityService.countAllCity());
        double n = Math.ceil(pageVo.getTotal() / 10.0);
        pageVo.setFirstPage((int) n > 0 ? 1 : 0);
        pageVo.setFinalPage((int) n);
        for (int x = 1; x <= n; x++) {
            pageVo.getContainPage().add(x);
        }
        modelAndView.addObject("cityVos", cityVos);
        modelAndView.addObject("pageVo", pageVo);
        modelAndView.setViewName(ProvinceConstant.PROVINCE_MORE_SPOT);
        return modelAndView;
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
    @RequestMapping(value = "/city/index/{cityId}", method = RequestMethod.GET)
    public ModelAndView cityIndexPage(@PathVariable String cityId, ModelAndView modelAndView) {

        //轮播图片
        City city = cityService.getById(cityId);
        Set<Photo> photoSet = city.getPhotos();
        Iterator<Photo> photoIterator = photoSet.iterator();
        CityVo cityVo = new CityVo();
        while (photoIterator.hasNext()) {
            cityVo.getPhotos().add(photoIterator.next().getUrl());
        }
        cityVo.setCityName(city.getCityName());
        cityVo.setCityId(city.getCityId());
        modelAndView.addObject("cityVo", cityVo);

        //必游
        List<Spot> spots = spotService.listByCityOrderByRankAscLimit(city, 1, 6);
        List<SpotVo> spotVos = new ArrayList<SpotVo>();
        for (Spot spot : spots) {
            SpotVo spotVo = new SpotVo();
            spotVo.setSpotId(spot.getSpotId());
            spotVo.setSpotRank(spot.getSpotRank());
            spotVo.setSpotName(spot.getSpotName());
            spotVo.setTotalComment(spot.getSpotComments().size());
            spotVo.setTextdetail(spot.getIntroduce() == null ? "" : spot.getIntroduce().substring(0, 20));
            spotVo.setScore(spot.getScore());
            spotVo.setHeadPicUrl(spot.getHeadPic().getUrl());
            spotVo.setScoreCss((int) (spot.getScore() / 5.0 * 100));
            spotVos.add(spotVo);
        }
        modelAndView.addObject("spotVos", spotVos);

        //必逛

        modelAndView.setViewName(CityConstant.CITY_INDEX);
        return modelAndView;
    }

    /**
     * 城市景点列表
     *
     * @return
     */
    @RequestMapping(value = "/city/spot/{cityId}/{currentPage}", method = RequestMethod.GET)
    public ModelAndView citySpotPage(@PathVariable String cityId, @PathVariable Integer currentPage, ModelAndView modelAndView) {

        if (currentPage <= 0) {
            currentPage = 1;
        }

        City city = cityService.getById(cityId);
        CityVo cityVo = new CityVo();
        cityVo.setCityId(city.getCityId());
        cityVo.setCityName(city.getCityName());

        List<Spot> spots = spotService.listSpotByCityPage(city, currentPage, 15);
        List<SpotVo> spotVos = new ArrayList<SpotVo>();
        for (Spot spot : spots) {
            SpotVo spotVo = new SpotVo();
            spotVo.setSpotId(spot.getSpotId());
            spotVo.setIntroduce(spot.getIntroduce());
            spotVo.setSpotRank(spot.getSpotRank());
            spotVo.setSpotName(spot.getSpotName());
            spotVo.setAddress(spot.getAddress());
            spotVo.setScore(spot.getScore());
            spotVo.setTextdetail(spot.getIntroduce() == null ? "" : spot.getIntroduce().substring(0, 40));
            spotVo.setTotalComment(spot.getSpotComments().size());
            spotVo.setScoreCss((int) (spot.getScore() / 5.0 * 100));
            spotVo.setSpotId(spot.getSpotId());
            spotVo.setHeadPicUrl(spot.getHeadPic().getUrl());
            spotVos.add(spotVo);
        }

        modelAndView.addObject("spotVos", spotVos);
        modelAndView.addObject("cityVo", cityVo);
        modelAndView.setViewName(CityConstant.CITY_SPOT);
        return modelAndView;
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
     * 写景点评论
     *
     * @return
     */
    @RequestMapping(value = "/city/spot-comment/{spotId}")
    public ModelAndView citySpotComment(@PathVariable String spotId, ModelAndView modelAndView) {
        Spot spot = spotService.getSpotById(spotId);
        SpotVo spotVo = new SpotVo();
        if (!StringUtils.isEmpty(spot)) {
            spotVo.setSpotName(spot.getSpotName());
            spotVo.setHeadPicUrl(spot.getHeadPic().getUrl());
            spotVo.setAddress(spot.getAddress());
        }
        modelAndView.addObject("spotVo", spotVo);
        modelAndView.setViewName(CityConstant.CITY_SPOT_COMMENT);
        return modelAndView;
    }

    /**
     * 城市景点详情
     *
     * @return
     */
    @RequestMapping(value = "/city/spot-detail/{spotId}")
    public ModelAndView citySpotDetailPage(@PathVariable String spotId, ModelAndView modelAndView) {

        Spot spot = spotService.getSpotById(spotId);
        SpotVo spotVo = new SpotVo();
        CityVo cityVo = new CityVo();

        if (!StringUtils.isEmpty(spot)) {
            spotVo.setScore(spot.getScore());
            spotVo.setAddress(spot.getAddress());
            spotVo.setHeadPicUrl(spot.getHeadPic().getUrl());
            spotVo.setSpotId(spot.getSpotId());
            spotVo.setScoreCss((int) (spot.getScore() / 5.0 * 100));
            spotVo.setTotalComment(spot.getSpotComments().size());
            spotVo.setTextdetail(spot.getIntroduce());
            spotVo.setSpotName(spot.getSpotName());
            spotVo.setSpotRank(spot.getSpotRank());
            spotVo.setIntroduce(spot.getIntroduce());
            spotVo.setBrightPoint(spot.getBrightPoint());
            spotVo.setSpecialHint(spot.getSpecialHint());
            City city = cityService.getById(spot.getCity().getCityId());
            if (!StringUtils.isEmpty(city)) {
                cityVo.setCityName(city.getCityName());
                cityVo.setCityId(city.getCityId());
            }
        }

        modelAndView.addObject("cityVo", cityVo);
        modelAndView.addObject("spotVo", spotVo);
        modelAndView.setViewName(CityConstant.CITY_SPOT_DETAIL);

        return modelAndView;
    }

    /**
     * 详细行程
     *
     * @return
     */
    @RequestMapping(value = "/city/route-detail")
    public String routeDetailPage() {
        return "";
    }

}
