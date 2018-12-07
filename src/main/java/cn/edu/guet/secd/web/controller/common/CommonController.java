package cn.edu.guet.secd.web.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CommonController {

    /**
     * 首页
     * @param request
     * @return
     */
    @RequestMapping(value = {"","/","/index","/index.html"})
    public String index(HttpServletRequest request){
        return "redirect:user/index";
    }

}
