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
    <link href="css/user/reg.956c5e3c.css" rel="stylesheet" type="text/css">
    <link href="css/user/header_public.css" rel="stylesheet" type="text/css">
    <title>同程旅行网-会员注册</title>
</head>
<body>
<div class="reg_logo_hd">
    <h1 class="ctriplogo_reg"><a href="http://www.ctrip.com/" title="携程旅行网">携程旅行网</a></h1>
</div>
<div class="cui_bd">
    <div class="reg_wrap hh_reg_wrap">
        <ul class="reg_step">
            <li class="current"><span></span>验证手机</li>
            <li class="current"><span></span>设置密码</li>
            <li class="current"><span></span>注册成功</li>
        </ul>
        <div class="reg_form reg_form_step1">

            <dl>
                <dt class="label">账号</dt>
                <dd>
                    <input class="r_input" type="text" placeholder="账号" id="account">
                </dd>
            </dl>

            <dl>
                <dt class="label">密码</dt>
                <dd>
                    <input class="r_input" type="text" placeholder="密码" id="password">
                </dd>
            </dl>

            <dl>
                <dt class="label">真实姓名</dt>
                <dd>
                    <input class="r_input" type="text" placeholder="真实姓名" id="username">
                </dd>
            </dl>

            <dl>
                <dt class="label">性别</dt>
                <dd style="margin-top: 8px;" id="sex">
                    <input class="r_input" style="width: 30px;height: 20px;margin-left: 40px;" type="radio" value="男" checked="checked" name="sex">男
                    <input class="r_input" style="width: 30px;height: 20px;margin-left: 40px;" type="radio" value="女" name="sex">女
                    <input class="r_input" style="width: 30px;height: 20px;margin-left: 40px;" type="radio" value="未知" name="sex">未知
                </dd>
            </dl>

            <dl>
                <dt class="label">出生年月日</dt>
                <dd>
                    <input class="r_input" type="date" placeholder="出生年月日" id="birthday">
                </dd>
            </dl>

            <dl>
                <dt class="label">身份证号码</dt>
                <dd>
                    <input class="r_input" type="text" placeholder="身份证号码" id="idCardNumber">
                </dd>
            </dl>

            <dl>
                <dt class="label">手机号</dt>
                <dd>
                    <input class="r_input" type="text" placeholder="有效手机号" id="mobilePhone">
                </dd>
            </dl>

            <dl>
                <dt class="label">详细地址</dt>
                <dd>
                    <input class="r_input" type="text" placeholder="详细地址" id="address">
                </dd>
            </dl>

            <dl>
                <dt class="label">&nbsp;</dt>
                <dd><label class="base_label">同意
                    <a id="agreementUrl" target="_blank" href="http://pages.ctrip.com/public/serve%20guideline.htm?1">《服务协议》</a>和<a
                            id="policyUrl" target="_blank" href="http://pages.ctrip.com/public/serve%20guideline.htm?2">《隐私政策》</a></label>
                </dd>
            </dl>

            <dl class="form_space">
                <dt class="label">&nbsp;</dt>
                <dd><input class="reg_btn" type="submit" value="提交" id="regBtn"></dd>
            </dl>

        </div>
    </div>
</div>
</body>
<script src="js/user/jquery-3.3.1.js"></script>
<script src="js/common/layer/layer.js"></script>
<script src="js/common/constant.js"></script>
<script>
    $(function () {
        $("#regBtn").click(function () {

            var loginData = {
                account:$("#account").val(),
                password:$("#password").val(),
                username:$("#username").val(),
                sex:$("#sex").children("input:radio[name='sex']:checked").val(),
                birthday:$("#birthday").val(),
                idCardNumber:$("#idCardNumber").val(),
                mobilePhone:$("#mobilePhone").val(),
                address:$("#address").val()
            };

            //开始界面loading特效
            var loadingEffects = layer.load(2);

            /**
             * 请求注册
             */
            $.ajax({
                url:"user/registerValidate",
                dataType:"json",
                contentType:"application/json",
                method:"post",
                data:JSON.stringify(loginData),
                success:function (d) {
                    var data = eval(d);
                    layer.close(loadingEffects);
                    switch (data.statusCode){
                        case 200:
                            layer.msg(constant.SUCCESS,{
                                icon: 1,
                                time: 1500
                            });
                            setTimeout(function () {
                                window.location.href="user/login";
                            },1500);
                            break;
                        case 110:
                            layer.msg(constant.USER_ACCOUNT_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 120:
                            layer.msg(constant.USER_SEX_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 130:
                            layer.msg(constant.USER_ADDRESS_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 140:
                            layer.msg(constant.USER_BIRTHDAY_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 150:
                            layer.msg(constant.USER_ID_CARD_NUMBER_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 160:
                            layer.msg(constant.USER_MOBILE_PHONE_EMPTY,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 170:
                            layer.msg(constant.USER_IS_REGISTERED,{
                                icon: 2,
                                time: 1500
                            });
                            break;
                        case 180:
                            layer.msg(constant.USER_USERNAME_EMPTY,{
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
                    layer.msg("请求超时失败!");
                }
            });

        });
    });
</script>
</html>