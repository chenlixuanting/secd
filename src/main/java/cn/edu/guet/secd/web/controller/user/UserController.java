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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;

/**
 * 用户控制器
 *
 * @author Administrator
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 用户登录界面
     *
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return UserConstant.USER_LOGIN;
    }

    /**
     * 用户注册界面
     *
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerPage() {
        return UserConstant.USER_REGISTER;
    }

    /**
     * 用户中心界面
     *
     * @return
     */
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String userHomePage() {
        return UserConstant.USER_HOME;
    }

    /**
     * 登录验证
     *
     * @param user
     * @param session
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.PUT)
    @ResponseBody
    public Message loginValidate(@RequestBody User user, HttpSession session) {
        Message msg = new Message();
        if (!StringUtils.isEmpty(user)) {
            if (StringUtils.isEmpty(user.getAccount())) {
                msg.setStatusCode(StatusCodeConstant.USER_ACCOUNT_EMPTY);
            } else if (StringUtils.isEmpty(user.getPassword())) {
                msg.setStatusCode(StatusCodeConstant.USER_PASSWORD_EMPTY);
            } else {
                User u = userService.getByUserAccount(user.getAccount());
                if (StringUtils.isEmpty(u)) {
                    msg.setStatusCode(StatusCodeConstant.USER_NOT_EXIST);
                } else {
                    if (u.getPassword().equals(user.getPassword())) {
                        //登录成功
                        session.setAttribute(UserConstant.USER, u);
                        msg.setStatusCode(StatusCodeConstant.LOGIN_SUCCESS);
                    } else {
                        msg.setStatusCode(StatusCodeConstant.PASSWORD_ERROR);
                    }
                }
            }
        } else {
            msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
        }
        return msg;
    }

    /**
     * 注册验证
     *
     * @param user
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public Message registerValidate(@RequestBody User user, HttpServletRequest request, HttpServletResponse response) {
        Message msg = new Message();
        if (!StringUtils.isEmpty(user)) {
            if (StringUtils.isEmpty(user.getAccount())) {
                msg.setStatusCode(StatusCodeConstant.USER_ACCOUNT_EMPTY);
            } else if (StringUtils.isEmpty(user.getPassword())) {
                msg.setStatusCode(StatusCodeConstant.USER_PASSWORD_EMPTY);
            } else if (StringUtils.isEmpty(user.getUsername())) {
                msg.setStatusCode(StatusCodeConstant.USER_USERNAME_EMPTY);
            } else if (StringUtils.isEmpty(user.getSex())) {
                msg.setStatusCode(StatusCodeConstant.USER_SEX_EMPTY);
            } else if (StringUtils.isEmpty(user.getBirthday())) {
                msg.setStatusCode(StatusCodeConstant.USER_BIRTHDAY_EMPTY);
            } else if (StringUtils.isEmpty(user.getIdCardNumber())) {
                msg.setStatusCode(StatusCodeConstant.USER_ID_CARD_NUMBER_EMPTY);
            } else if (StringUtils.isEmpty(user.getMobilePhone())) {
                msg.setStatusCode(StatusCodeConstant.USER_MOBILE_PHONE_EMPTY);
            } else if (StringUtils.isEmpty(user.getAddress())) {
                msg.setStatusCode(StatusCodeConstant.USER_ADDRESS_EMPTY);
            } else {
                //查看账号是否被注册
                if (StringUtils.isEmpty(userService.getByUserAccount(user.getAccount()))) {
                    //根据性别选择默认的头像
//                    user.setHeadPic(GetDefaultHeadPic.choose(user.getSex()));
                    //填充创建时间和更新时间
                    Timestamp currentTime = new Timestamp(System.currentTimeMillis());
                    user.setCreateTime(currentTime);
                    //未注册则进行注册
                    if (userService.saveUser(user)) {
                        msg.setStatusCode(StatusCodeConstant.REGISTER_SUCCESS);
                    } else {
                        msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
                    }
                } else {
                    msg.setStatusCode(StatusCodeConstant.USER_IS_REGISTERED);
                }
            }
        } else {
            msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
        }
        return msg;
    }

    /**
     * 好友主页
     *
     * @return
     */
    @RequestMapping(value = "/friend", method = RequestMethod.GET)
    public ModelAndView friendHomePage(ModelAndView modelAndView) {
        modelAndView.setViewName(UserConstant.USER_FRIEND_HOME);
        return modelAndView;
    }

    /**
     * 游记
     *
     * @param modelAndView
     * @return
     */
    @RequestMapping(value = "/travel", method = RequestMethod.GET)
    public ModelAndView travelPage(ModelAndView modelAndView) {
        modelAndView.setViewName(UserConstant.USER_TRAVEL);
        return modelAndView;
    }

}
