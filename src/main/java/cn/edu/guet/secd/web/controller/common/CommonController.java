package cn.edu.guet.secd.web.controller.common;

import cn.edu.guet.secd.web.constant.CommonConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Administrator
 */
@Controller
public class CommonController {

    /**
     * 网站首页
     *
     * @return
     */
    @RequestMapping(value = {"", "/", "/index", "/index.html"}, method = RequestMethod.GET)
    public String indexPage() {
        return "redirect:province/index";
    }

    /**
     * 404错误
     *
     * @param modelAndView
     * @return
     */
    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView pageNotFound(ModelAndView modelAndView) {
        modelAndView.setViewName(CommonConstant.PAGE_NOT_FOUND);
        return modelAndView;
    }

}
