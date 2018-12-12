package cn.edu.guet.secd.web.util;

import cn.edu.guet.secd.web.constant.CommonConstant;

/**
 * 通过性别为用户分配默认头像
 */
public class GetDefaultHeadPic {

    public static String choose(String sex) {

        StringBuilder sb = new StringBuilder();

        if (sex.equals(CommonConstant.MALE_SEX)) {
            sb.append(CommonConstant.LOCAL_HOST_ADDRESS).append(CommonConstant.USER_DEFAULT_HEAD_PIC_ADDRESS).append(CommonConstant.MALE_DEFAULT_HEAD_PIC_NAME);
        } else if (sex.equals(CommonConstant.FEALE_SEX)) {
            sb.append(CommonConstant.LOCAL_HOST_ADDRESS).append(CommonConstant.USER_DEFAULT_HEAD_PIC_ADDRESS).append(CommonConstant.FEMALE_DEFAULT_HEAD_PIC_NAME);
        } else {
            sb.append(CommonConstant.LOCAL_HOST_ADDRESS).append(CommonConstant.USER_DEFAULT_HEAD_PIC_ADDRESS).append(CommonConstant.UNKNOW_DEFUALT_HEAD_PIC_NAME);
        }

        return sb.toString();

    }

}
