package cn.edu.guet.secd.web.controller.administrator;

import cn.edu.guet.secd.web.constant.AdminConstant;
import cn.edu.guet.secd.web.constant.CommonConstant;
import cn.edu.guet.secd.web.constant.StatusCodeConstant;
import cn.edu.guet.secd.web.pojo.Administrator;
import cn.edu.guet.secd.web.service.AdministratorService;
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

/**
 * Created by Administrator on 9/10/2018.
 */
@Controller
@RequestMapping("/administrator")
public class AdminController {

    @Autowired
    private AdministratorService administratorService;

    /**
     * 管理员登录界面
     * @param session
     * @param response
     * @return
     */
    @RequestMapping("/login")
    public String login(HttpSession session, HttpServletResponse response) {
        return AdminConstant.ADMIN_LOGIN;
    }

    /**
     * 错误页面
     * @param request
     * @return
     */
    @RequestMapping(value = "/errorPage")
    public String errorPage( HttpServletRequest request){
        return CommonConstant.ERROR_PAGE;
    }

    /**
     * 管理员首页
     * @return
     */
    @RequestMapping("/index")
    public String index() {
        return AdminConstant.ADMIN_INDEX;
    }

    /**
     * 验证登录信息
     * @param administrator
     * @param request
     * @param response
     * @param session
     * @return
     */
    @RequestMapping("/loginvalidate")
    @ResponseBody
    public Message loginValidate(@RequestBody Administrator administrator, HttpServletRequest request,
                                 HttpServletResponse response, HttpSession session) {

        //响应消息实体
        Message msg = new Message();

        //如果administrator为null
        if(StringUtils.isEmpty(administrator)){

            //用户输入的账号
            String account = administrator.getAccount();

            //用户输入的密码
            String password = administrator.getPassword();

            //判断账号，密码是否为空
            if (StringUtils.isEmpty(account) || StringUtils.isEmpty(password)) {
                //服务器内部错误
                msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
            } else {
                //从数据中查询管理员账号
                Administrator admin = administratorService.findByAdminAccount(account);
                //判断用户是否存在
                if (StringUtils.isEmpty(admin)) {
                    msg.setStatusCode(StatusCodeConstant.USER_NOT_EXIST);
                } else {
                    if (password.equals(admin.getPassword())) {
                        //清除密码
                        admin.setPassword("");
                        //将用户保存到session中
                        session.setAttribute(AdminConstant.ADMINISTRATOR,admin);
                        //登录成功
                        msg.setStatusCode(StatusCodeConstant.SUCCESS);
                    } else {
                        //密码错误
                        msg.setStatusCode(StatusCodeConstant.PASSWORD_ERROR);
                    }
                }
            }

        }else{
            msg.setStatusCode(StatusCodeConstant.SERVER_INNER_ERROR);
        }
        return msg;
    }

}
