package cn.edu.guet.secd.web.controller.user;

import cn.edu.guet.secd.web.constant.StatusCodeConstant;
import cn.edu.guet.secd.web.constant.UserConstant;
import cn.edu.guet.secd.web.pojo.User;
import cn.edu.guet.secd.web.service.UserService;
import cn.edu.guet.secd.web.util.GetDefaultHeadPic;
import cn.edu.guet.secd.web.vo.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String loginPage(){
        return UserConstant.USER_LOGIN;
    }

    @RequestMapping("/register")
    public String registerPage(){
        return UserConstant.USER_REGISTER;
    }

    @RequestMapping("/loginValidate")
    @ResponseBody
    public Message loginValidate(@RequestBody User user, HttpSession session){
        Message msg = new Message();
        if(!StringUtils.isEmpty(user)){

            if(StringUtils.isEmpty(user.getAccount())){
                msg.setStatusCode(StatusCodeConstant.USER_ACCOUNT_EMPTY);
            }else if(StringUtils.isEmpty(user.getPassword())){
                msg.setStatusCode(StatusCodeConstant.USER_PASSWORD_EMPTY);
            }else{
                User u = userService.getByUserAccount(user.getAccount());
                if(StringUtils.isEmpty(u)){
                    msg.setStatusCode(StatusCodeConstant.USER_NOT_EXIST);
                }else{
                    if(u.getPassword().equals(user.getPassword())){
                        //登录成功
                        session.setAttribute(UserConstant.USER,u);
                        msg.setStatusCode(StatusCodeConstant.LOGIN_SUCCESS);
                    }else{
                        msg.setStatusCode(StatusCodeConstant.PASSWORD_ERROR);
                    }
                }
            }

        }else{
            msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
        }

        return msg;
    }

    @RequestMapping("/registerValidate")
    @ResponseBody
    public Message registerValidate(@RequestBody User user, HttpServletRequest request, HttpServletResponse response){
        Message msg = new Message();
        if(!StringUtils.isEmpty(user)){
            if(StringUtils.isEmpty(user.getAccount())){
                msg.setStatusCode(StatusCodeConstant.USER_ACCOUNT_EMPTY);
            }else if(StringUtils.isEmpty(user.getPassword())){
                msg.setStatusCode(StatusCodeConstant.USER_PASSWORD_EMPTY);
            }else if(StringUtils.isEmpty(user.getUsername())){
                msg.setStatusCode(StatusCodeConstant.USER_USERNAME_EMPTY);
            }else if (StringUtils.isEmpty(user.getSex())){
                msg.setStatusCode(StatusCodeConstant.USER_SEX_EMPTY);
            }else if(StringUtils.isEmpty(user.getBirthday())){
                msg.setStatusCode(StatusCodeConstant.USER_BIRTHDAY_EMPTY);
            }else if(StringUtils.isEmpty(user.getIdCardNumber())){
                msg.setStatusCode(StatusCodeConstant.USER_ID_CARD_NUMBER_EMPTY);
            }else if(StringUtils.isEmpty(user.getMobilePhone())){
                msg.setStatusCode(StatusCodeConstant.USER_MOBILE_PHONE_EMPTY);
            }else if(StringUtils.isEmpty(user.getAddress())){
                msg.setStatusCode(StatusCodeConstant.USER_ADDRESS_EMPTY);
            }else{
                //查看账号是否被注册
                if(StringUtils.isEmpty(userService.getByUserAccount(user.getAccount()))){
                    //根据性别选择默认的头像
                    user.setHeadPic(GetDefaultHeadPic.choose(user.getSex()));
                    //填充创建时间和更新时间
                    Timestamp currentTime = new Timestamp(System.currentTimeMillis());
                    user.setCreateTime(currentTime);
                    user.setUpdateTime(currentTime);
                    //未注册则进行注册
                    if(userService.saveUser(user)){
                        msg.setStatusCode(StatusCodeConstant.REGISTER_SUCCESS);
                    }else{
                        msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
                    }
                }else{
                    msg.setStatusCode(StatusCodeConstant.USER_IS_REGISTERED);
                }
            }
        }else {
            msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
        }

        return msg;
    }

}
