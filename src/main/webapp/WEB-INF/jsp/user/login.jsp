<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录首页</title>
    <link href="css/user/login.00cc5887.css" rel="stylesheet" type="text/css">
    <link href="css/user/header_public.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="lg_hd">
    <input id="page_id" type="hidden" value="10320670296">
    <h1 class="ctriplogo_login ctriplogoindex"><a href="#" title="">同程旅行网</a></h1>
    <div class="hhlogo" style="display: none;">鸿鹄逸游</div>
</div>
<div class="lg_bd" id="lg_bd">
    <!-- 广告图片区域 -->
    <div class="lg_banner_wrap">
        <div class="lg_banner_list jmkt-picsroller" id="bannerpic">
            <div class="jmkt-picsroller-pics" id="418a532c-c4de-83a3-b359-0639f23f57a8" style="z-index: 1;"><a
                    href="javascript:void(0);" id="a_418a532c-c4de-83a3-b359-0639f23f57a8"><img
                    src="images/user/70010x000000lt93kD31F_1920_540_363.jpg" width="1920" height="540"></a></div>
        </div>
    </div>
    <div class="mod-box" style="z-index: 10;">
        <div class="lg_loginwrap" id="loginwrap">
            <!-- 个性化登录 -->
            <div class="lg_loginbox" id="lg_loginbox" style="top: 10px; margin-top: 30px;">
                <h2 class="lg_loginbox_title" id="logintitle">同程账号登录</h2>
                <div class="form_wrap" id="normalview" style="display: block;">
                    <dl>
                        <dd><input class="r_input" type="text" id="nloginname" placeholder="国内手机号/用户名/邮箱/卡号"></dd>
                    </dl>
                    <dl>
                        <dd class="r_input input_auth-code"><input type="password" id="npwd" placeholder="登录密码"><a
                                href="#" class="forgotpwd"
                                target="_black">忘记密码</a></dd>
                    </dl>
                    <dl style="display: none;">
                        <dd id="sliderddnormal" style="dlsplay:none">
                            <div class=" cpt-drop-box">
                                <div class="cpt-loading-box" style="display: block;"><span
                                        class="cpt-loading-info-box"
                                        style="position: static; display: inline-block;"><span
                                        class="cpt-loading-icon-content" style="display: inline-block;"><i
                                        class="cpt-logo cpt-loading-right" style="display: block;"></i><i
                                        class="cpt-logo cpt-loading-error" style="display: none;"></i></span><span
                                        class="cpt-loading-text" style="display: inline-block; color: rgb(85, 85, 85);">检测风险通过！</span></span>
                                </div>
                                <div class="cpt-drop-btn">
                                    <div class="cpt-img-double-right-outer"><i
                                            class="cpt-logo cpt-img-double-right"></i><i
                                            class="cpt-logo cpt-img-check-right"></i><i
                                            class="cpt-logo cpt-img-check-error"></i><i
                                            class="cpt-logo cpt-img-check-refresh"></i><img
                                            class="cpt-img-check-loading" src="images/user/loading.gif"></div>
                                </div>
                                <div class="cpt-drop-bg"></div>
                                <div class="cpt-bg-bar" unselectable="on"><span class="cpt-info-board"
                                                                                style="background: none; -webkit-text-fill-color: inherit; position: static;"></span>
                                </div>
                            </div>
                            <div class=" cpt-img-box"><input type="text" class="cpt-text-input" name="captcha"
                                                             placeholder="验证码">
                                <div class="cpt-img-check-outer"><i class="cpt-logo cpt-check-right"></i><i
                                        class="cpt-logo cpt-check-error"></i></div>
                                <img class="cpt-img-verif"
                                     src="https://passport.ctrip.com/user/login?fnew=2&amp;backurl=http%3a%2f%2fyou.ctrip.com%2fmembersite%3fprofileurlno%3d">
                                <div class="cpt-img-refresh-outer"><a class="cpt-logo cpt-img-refresh" title="刷新验证码"
                                                                      href="javascript:;"></a></div>
                                <span class="cpt-info-text">输入有误，请重新输入</span></div>
                        </dd>
                    </dl>
                    <div class="base_error" style="display:none" id="nerr"></div>
                    <dl>
                        <dd>
                            <input class="form_btn form_btn--block" id="nsubmit" type="submit" value="登   录">
                        </dd>
                    </dl>
                    <p class="agreement-list">登录即代表您同意我们的<a href="http://pages.ctrip.com/public/serve%20guideline.htm?1"
                                                            class="serviceAgreement" target="_black">服务协议</a>和<a
                            href="http://pages.ctrip.com/public/serve%20guideline.htm?2" class="privacyPolicy"
                            target="_black">隐私政策</a></p>
                </div>
                <div class="form_wrap" id="personview" style="display: none;">
                    <div class="avatar-box">
					<span class="avatar-img">
						<img id="beforeHeadPic" src="images/user/eb4b7bea9720440dac09eab89328ab00.jpg" alt="">
					</span>
                        <p class="user-name">181****8474</p>
                        <p class="change-user"><a href="javascript:;" id="changeaccount">更换账号</a></p>
                    </div>
                    <dl>
                        <dd class="r_input input_auth-code"><input type="password" placeholder="登录密码" id="personpwd"><a
                                href="https://passport.ctrip.com/user/resetpwd/verifyIdentity" class="forgotpwd"
                                target="_black">忘记密码</a></dd>
                    </dl>
                    <div class="base_error" style="display:none" id="personErr"></div>
                    <div class="login-set">
                        <label class="auto-login"><input type="checkbox" checked="checked"
                                                         id="person30day">30天内自动登录</label>
                        <a href="javascript:;" class="login-entry-dynamic">手机动态密码登录 <i class="icon-arrowr"></i></a>
                    </div>

                    <dl>
                        <dd>
                            <input class="form_btn form_btn--block" type="submit" id="personSubmit" value="登   录">
                        </dd>
                    </dl>
                    <p class="agreement-list">登录即代表您同意我们的<a href="http://pages.ctrip.com/public/serve%20guideline.htm?1"
                                                            class="serviceAgreement" target="_black">服务协议</a>和<a
                            href="http://pages.ctrip.com/public/serve%20guideline.htm?2" class="privacyPolicy"
                            target="_black">隐私政策</a></p>
                </div>
                <div class="form_wrap" id="dynamicview" style="display:none">
                    <dl>
                        <dd class="r_input input_country-code" id="dyCcode" code="86">
                            中国大陆 86 <a href="javascript:;" class="link_code"></a>
                        </dd>
                    </dl>
                    <dl>
                        <dd><input class="r_input" type="text"
                                   onafterpaste="this.value=this.value.replace(/\D/g,&#39;&#39;)" maxlength="15"
                                   id="dyphone" placeholder="注册或绑定手机号"></dd>
                    </dl>
                    <dl>
                        <dd id="sliderdddynamic" style="dlsplay:none"></dd>
                    </dl>
                    <dl>
                        <dd class="r_input input_auth-code dynamic"><input type="text" id="dypwd" maxlength="8"
                                                                           placeholder="短信动态码"><a href="javascript:;"
                                                                                                  id="sdy">发送动态码</a>
                        </dd>
                    </dl>
                    <div class="base_error" style="display:none" id="dyerr"></div>
                    <div class="login-set">
                        <label class="auto-login"><input type="checkbox" id="dynamic30d"
                                                         checked="checked">30天内自动登录</label>
                    </div>

                    <dl>
                        <dd>
                            <input class="form_btn form_btn--block" id="dylogin" type="submit" value="登   录">
                        </dd>
                    </dl>
                    <p class="agreement-list">登录即代表您同意我们的<a href="http://pages.ctrip.com/public/serve%20guideline.htm?1"
                                                            class="serviceAgreement" target="_black">服务协议</a>和<a
                            href="http://pages.ctrip.com/public/serve%20guideline.htm?2" class="privacyPolicy"
                            target="_black">隐私政策</a></p>
                    <a href="javascript:;" class="go_prev-step"><i>&lt;</i>携程账号登录</a>
                </div>
                <div class="form_wrap" id="overseasview" style="display:none">
                    <dl>
                        <dd class="r_input input_country-code" id="overcode" code="86">
                            中国大陆 86 <a href="javascript:;" class="link_code"></a>
                        </dd>
                    </dl>
                    <dl>
                        <dd><input class="r_input" type="text" id="overphone"
                                   onafterpaste="this.value=this.value.replace(/\D/g,&#39;&#39;)" maxlength="15"
                                   placeholder="注册或绑定手机号"></dd>
                    </dl>
                    <dl>
                        <dd class="r_input input_auth-code"><input type="password" id="overpwd" placeholder="登录密码"><a
                                href="https://passport.ctrip.com/user/resetpwd/verifyIdentity" class="forgotpwd"
                                target="_black">忘记密码</a></dd>
                    </dl>
                    <dl>
                        <dd id="slideroverseas" style="dlsplay:none"></dd>
                    </dl>
                    <div class="base_error" style="display:none" id="overerr"></div>
                    <div class="login-set">
                        <label class="auto-login"><input type="checkbox" id="overseas30day"
                                                         checked="checked">30天内自动登录</label>
                        <a href="javascript:;" class="login-entry-dynamic">手机动态密码登录 <i class="icon-arrowr"></i></a>
                    </div>
                    <dl>
                        <dd>
                            <input class="form_btn form_btn--block" id="oversubmit" type="submit" value="登   录">
                        </dd>
                    </dl>
                    <p class="agreement-list">登录即代表您同意我们的<a href="http://pages.ctrip.com/public/serve%20guideline.htm?1"
                                                            class="serviceAgreement" target="_black">服务协议</a>和<a
                            href="http://pages.ctrip.com/public/serve%20guideline.htm?2" class="privacyPolicy"
                            target="_black">隐私政策</a></p>
                    <a href="javascript:;" class="go_prev-step"><i>&lt;</i>携程账号登录</a>
                </div>
                <div class="lg_weblogin" id="loginbanner" style="display: block;">
                    <div class="login-about">
                        <a href="user/register" class="free-regist" target="_black">免费注册</a>
                    </div>
                </div>

                <div class="nologin" id="nologin" style="display: none;">
                    <a href="javascript:;" id="btn_nologin">不登录，直接预订<i>&gt;</i></a>
                </div>
                <input type="hidden" id="sliderResult" token="p0948c803cd2c84a9294666db5e170473a" version="2.5.24"
                       state="hidden">
            </div>
        </div>
    </div>
</div>
<div class="base_ft_wrap" id="base_ft">
    <p>
        <a href="" title="网站导航">网站导航</a> |
        <a href="" title="宾馆索引">宾馆索引</a> |
        <a href="" title="用户协议">用户协议</a> |
        <a href="" title="关于携程">关于携程</a> |
        <a href="" title="企业公民">企业公民</a> |
        <a href="" title="诚聘英才">诚聘英才</a> |
        <a href="" title="分销联盟">分销联盟</a> |
        <a href="" title="企业礼品卡采购">企业礼品卡采购</a> |
        <a href="" title="代理合作">代理合作</a> |
        <a href="" title="广告业务">广告业务</a> |
        <a href="" title="联系我们">联系我们</a> |
        <a id="callOld" title="返回旧版" href="">返回旧版</a>
    </p>
    <p class="copyright">
        <a href="">Copyright ©</a> <span id="copyrightDate">2017-2018</span>,
        <a href="">ttrip.com</a>.
        All rights reserved.
    </p>
</div>
</body>
</html>