package cn.edu.guet.secd.web.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Administrator
 */
@Controller
public class CommonController {

    /**
     * 首页
     *
     * @return
     */
    @RequestMapping(value = {"", "/", "/index", "/index.html"}, method = RequestMethod.GET)
    public String indexPage() {
        return "redirect:province/index";
    }

}
