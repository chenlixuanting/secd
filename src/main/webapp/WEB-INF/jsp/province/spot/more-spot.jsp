<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=1024">
    <meta http-equiv="Cache-Control" content="no-siteapp ">
    <title>广西旅游景点推荐,广西旅游必去景点,广西景点大全/排名</title>
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/country_sight.v2.0.css">
    <link href="css/user/login_popup_new.css" rel="stylesheet" type="text/css">
    <link href="css/user/bdsstyle.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="css/user/pc_flaot.css">
</head>
<body>

<div>
    <div class="gs-header cf">
        <div class="content">
            <div class="gs-nav">
                <ul>
                    <li id="gs_nav_0"><a href="http://localhost:8080/secd/province/index"><i class="icon_home"></i></a>
                    </li>
                    <li id="my_home"><a href="http://localhost:8080/secd/user/home">我的主页</a></li>
                </ul>
            </div>
            <div class="gs-search-2"><input id="gsSearch" type="text" placeholder="搜索城市/景点/游记/问答/住宿/用户" class="sgtgray">
                <button type="button" class="btn-search"></button>
            </div>
        </div>
    </div>
</div>

<div class="content cf ">
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="广西" href="http://localhost:8080/secd/province/index">广西</a>
                </h1>
                <p>Guangxi</p>
            </div>
            <div class="f_right">
                <ul>
                    <li class="des_icon_been" id="wentClick">
                        <a href="javascript:void(0)" data-cat="100052" dataresource-cat="100052" data_type="Place"
                           class="a_popup_login" rel="nofollow" id="wentClickID"></a>
                        <p>
                            <span id="spanwentId" class="textcolor">去过</span><span><em
                                id="emWentValueID">5645</em></span>
                        </p>
                    </li>
                    <li class="des_icon_want" id="wantClick">
                        <a href="javascript:void(0)" rel="nofollow" data-cat="100052" dataresource-cat="100052"
                           data_type="Place" class="a_popup_login" id="wantClickID"></a>
                        <p>
                            <span id="spanwantId" class="textcolor">想去</span><span><em
                                id="emWantValueID">10300</em></span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="sec_line cf">
            <p class="c_text_left ellipsis">
                欢迎您访问广西 </p>
        </div>
    </div>
</div>

<div class="ttd_topnav_box">
    <div class="ttd_topnav"
         style="position: relative; overflow: visible; top: 0px; left: 0px; right: 0px; width: 100%; height: 39px;">
        <div class="innerbox">
            <ul class="cf">
                <li class="ttd_first_nav"><a href="http://localhost:8080/secd/province/index">主页</a>
                </li>
                <li class="current"><a href="http://localhost:8080/secd/province/spot">景点</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/shopping">购物</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/travel">游记</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="ttd2_background">
    <div class="content cf">

        <div class="des_narrow f_left">
            <div class="country_xclist">
                <h3>携程旅行口碑榜2017</h3>
                <dl>
                    <dt><a target="_blank" href="http://localhost:8080/secd/destinationsite/top"
                           title="2017十佳自驾游目的地">2017十佳自驾游目的地</a></dt>
                    <dd><i></i><a target="_blank" href="javascript:void(0)" title="贺州">贺州</a>
                    </dd>
                </dl>
                <dl>
                    <dt><a target="_blank" href="http://localhost:8080/secd/destinationsite/top"
                           title="2017年度十大摄影目的地">2017年度十大摄影目的地</a></dt>
                    <dd><i></i><a target="_blank" href="javascript:void(0)" title="桂林">桂林</a></dd>
                </dl>
                <dl>
                    <dt><a target="_blank" href="http://localhost:8080/secd/destinationsite/top"
                           title="2017亚洲十大旅行目的地">2017亚洲十大旅行目的地</a></dt>
                    <dd><i></i><a target="_blank" href="javascript:void(0)" title="桂林">桂林</a></dd>
                </dl>
            </div>
        </div>

        <div class="des_wide f_right">
            <!--各地景点-->
            <div class="normalbox">
                <div class="normaltitle cf">
                    <h1>广西<span> 各地景点</span></h1>
                </div>

                <div class="list_wide_mod1">

                    <c:forEach var="cityVo" items="${cityVos}">
                        <div class="list_mod1">
                            <div class="cityimg">
                                <a class="ttd_nopic100" href="province/city/index/${cityVo.cityId}" target="_blank"><img
                                        src="${cityVo.headPic}"
                                        width="100" height="100" alt=""></a> <i
                                    title="景点"></i><span>${cityVo.cityName}</span>
                            </div>
                            <dl>
                                <dt><a target="_blank"
                                       href="province/city/index/${cityVo.cityId}">${cityVo.cityName}</a></dt>
                                <dd class="ellipsis">
                                    推荐景点：
                                    <c:forEach var="s" items="${cityVo.recommendSpots}">
                                        <a href="/province/city/spot-detail/${s.spotId}"
                                           target="_blank">${s.spotName}</a>、
                                    </c:forEach>
                                </dd>
                                <dd>
                                    <a href="province/city/spot/${cityVo.cityId}" target="_blank">${cityVo.cityName}景点速览<i
                                            class="gs2_more_arror"></i></a>
                                </dd>
                            </dl>
                        </div>
                    </c:forEach>

                    <!--翻页控件-->
                    <div class="ttd_pager cf"><p>${pageVo.start}-${pageVo.end} / ${pageVo.total}条</p>
                        <div class="pager_v1">
                            <c:if test="${pageVo.currentPage == 1}">
                                <a class="prevpage disabled">上一页</a>
                            </c:if>
                            <c:if test="${pageVo.currentPage != 1}">
                                <c:if test="${pageVo.currentPage != 0}">
                                    <a class="prevpage" href="${pageVo.previousPageUrl}">上一页</a>
                                </c:if>
                            </c:if>

                            <c:forEach var="page" items="${pageVo.containPage}">
                                <c:if test="${page == pageVo.currentPage}">
                                    <a class="current">${pageVo.currentPage}</a>
                                </c:if>
                                <c:if test="${page != pageVo.currentPage}">
                                    <a href="http://localhost:8080/secd/province/more-spot/${page}">${page}</a>
                                </c:if>
                            </c:forEach>

                            <c:if test="${pageVo.currentPage == pageVo.finalPage}">
                                <a class="nextpage disabled">下一页</a>
                            </c:if>
                            <c:if test="${pageVo.currentPage != pageVo.finalPage}">
                                <a class="nextpage"
                                   href="${pageVo.nextPageUrl}">下一页</a>
                            </c:if>

                            <span>到 <input id="gopagetext" value="" type="text"> 页 / <b
                                    class="numpage">${pageVo.finalPage}</b>页</span>
                            <a class="gopage" href="javascript:;" id="gotoPgae">确定</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<%--底部--%>
<div class="footgray">
    <div class="footinner cf">
        <dl>
            <dt>社区必读</dt>
            <dd><a href="" target="_blank">用户协议</a></dd>
            <dd><a href="" target="_blank">社区指南</a></dd>
            <dd><a href="" target="_blank">经验与等级</a></dd>
            <dd><a href="" target="_blank">新手导航</a></dd>
            <dd><a href="" target="_blank">网络信息侵权保障</a></dd>
        </dl>
        <dl>
            <dt>发现你的旅行</dt>
            <dd><a href="" target="_blank">了解目的地</a></dd>
            <dd><a href="" target="_blank">阅读精彩游记</a></dd>
            <dd><a href="" target="_blank">下载精品攻略</a></dd>
            <dd><a href="" target="_blank">请教旅行达人</a></dd>
            <dd><a href="" target="_blank">发起结伴</a></dd>
        </dl>
        <dl>
            <dt>分享你的旅行</dt>
            <dd><a href="" target="_blank">发表游记大作</a></dd>
            <dd><a href="" target="_blank">点评去过的景点</a></dd>
        </dl>
        <dl class="ftabout">
            <dt>关于我们</dt>
            <dd><a href="" target="_blank">社区简介</a></dd>
            <dd><a href="" target="_blank">联系我们</a></dd>
            <dd><a href="" target="_blank">加入我们</a></dd>
            <dd><a href="" target="_blank">智慧旅游</a></dd>
        </dl>
        <dl class="ftguanzhu">
            <dt>关注携程攻略社区</dt>
            <dd class="youguanzhu cf"><span class="ftweixin"></span></dd>
        </dl>
    </div>
</div>
</body>
<script src="js/user/jquery-3.3.1.js"></script>
<script>
    $(function () {
        $("#gotoPgae").click(function () {
            window.location.href = "http://localhost:8080/secd/province/more-spot/" + $("#gopagetext").val();
        });
    });
</script>
</html>