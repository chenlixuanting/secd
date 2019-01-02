package cn.edu.guet.secd.web.constant;

/**
 * @author Administrator
 */
public class StatusCodeConstant {

    //账号为空
    public static final int USER_ACCOUNT_EMPTY = 110;

    //性别为空
    public static final int USER_SEX_EMPTY = 120;

    //地址为空
    public static final int USER_ADDRESS_EMPTY = 130;

    //出生年月日为空
    public static final int USER_BIRTHDAY_EMPTY = 140;

    //身份证号码为空
    public static final int USER_ID_CARD_NUMBER_EMPTY = 150;

    //电话号码为空
    public static final int USER_MOBILE_PHONE_EMPTY = 160;

    //用户已注册
    public static final int USER_IS_REGISTERED = 170;

    //用户真实姓名为空
    public static final int USER_USERNAME_EMPTY = 180;

    //密码为空
    public static final int USER_PASSWORD_EMPTY = 190;

    //注册成功
    public static final int REGISTER_SUCCESS = 200;

    //登录成功
    public static final int LOGIN_SUCCESS = 300;

    //用户不存在
    public static final int USER_NOT_EXIST = 310;

    //密码错误
    public static final int PASSWORD_ERROR = 405;

    //服务器内部错误
    public static final int SERVER_INNER_ERROR = 500;

}
