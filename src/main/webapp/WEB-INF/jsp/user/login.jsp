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
                        <dd><input class="r_input" type="text" id="account" placeholder="国内手机号/用户名/邮箱/卡号"></dd>
                    </dl>
                    <dl>
                        <dd class="r_input input_auth-code">
                            <input type="password" id="password" placeholder="登录密码">
                            <a href="#" class="forgotpwd" target="_black">忘记密码</a>
                        </dd>
                    </dl>
                    <div class="base_error" style="display:none" id="nerr"></div>
                    <dl>
                        <dd>
                            <input class="form_btn form_btn--block" id="loginBtn" type="submit" value="登   录">
                        </dd>
                    </dl>
                    <p class="agreement-list">登录即代表您同意我们的<a href="http://pages.ctrip.com/public/serve%20guideline.htm?1"
                                                            class="serviceAgreement" target="_black">服务协议</a>和<a
                            href="http://pages.ctrip.com/public/serve%20guideline.htm?2" class="privacyPolicy"
                            target="_black">隐私政策</a></p>
                </div>
                <div class="lg_weblogin" id="loginbanner" style="display: block;">
                    <div class="login-about">
                        <a href="user/register" class="free-regist" target="_black">免费注册</a>
                    </div>
                </div>
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
<script src="js/user/jquery-3.3.1.js"></script>
<script src="js/common/layer/layer.js"></script>
<script src="js/common/constant.js"></script>
<script>
    $(function () {

        $("#loginBtn").click(function () {

            var loginData = {
                account:$("#account").val(),
                password:$("#password").val()
            };

            //开始界面loading特效
            var loadingEffects = layer.load(2);

            $.ajax({
                url:"user/loginValidate",
                dataType:"json",
                contentType:"application/json",
                method:"post",
                data:JSON.stringify(loginData),
                success:function (d) {
                    var data = eval(d);
                    layer.close(loadingEffects);
                    switch (data.statusCode){
                        case 300:
                            layer.msg(constant.LOGIN_SUCCESS,{
                                icon: 1,
                                time: 1500
                            });
                            setTimeout(function () {
                                window.location.href="user";
                            },1500);
                            break;
                        case 310:
                            layer.msg(constant.USER_NOT_EXIST,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 405:
                            layer.msg(constant.PASSWORD_ERROR,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 110:
                            layer.msg(constant.USER_ACCOUNT_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 190:
                            layer.msg(constant.USER_PASSWORD_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                    }
                },error:function () {
                    layer.close(loadingEffects);
                    layer.msg("请求超时!");
                }
            });

        });

    });
</script>
</html>