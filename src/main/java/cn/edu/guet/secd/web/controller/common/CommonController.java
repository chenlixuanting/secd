package cn.edu.guet.secd.web.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {

    /**
     * 首页
     * @return
     */
    @RequestMapping(value = {"","/","/index","/index.html"})
    public String index(){
        return "redirect:province/index";
    }

}
