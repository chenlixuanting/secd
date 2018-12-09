package cn.edu.guet.secd.web.controller.user;

import cn.edu.guet.secd.web.constant.UserConstant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/login")
    public String login(){
        return UserConstant.USER_LOGIN;
    }

}
