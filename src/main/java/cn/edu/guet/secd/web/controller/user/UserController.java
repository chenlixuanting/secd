package cn.edu.guet.secd.web.controller.user;

import cn.edu.guet.secd.web.constant.UserConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    /**
     * 用户首页
     * @return
     */
    @RequestMapping("/index")
    public String index() {
        return UserConstant.USER_INDEX;
    }

    /**
     * 城镇
     */
    @RequestMapping("/city")
    public String city(){
        return UserConstant.CITY_INDEX;
    }

}
