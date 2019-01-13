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
    <meta name="location" content="province=广西;city=广西">
    <title>壮瑶文化信息采集和分类系统</title>
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/continent_s1.v2.0.css">
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
                <li class="ttd_first_nav current"><a href="http://localhost:8080/secd/province/index">主页</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/spot">景点</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/shopping">购物</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/travel">游记</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="ttd2_background ttd3_media">
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
            <!--热门目的地-->
            <div class="normalbox hotlistouter">
                <div class="normaltitle cf">
                    <h1>广西热门目的地</h1>
                    <span class="rbox">
                        <a href="http://localhost:8080/secd/province/more-spot/1" class="f_14" target="_blank">更多广西目的地<i
                                class="f14_more_arror"></i></a>
                    </span>
                </div>
                <div class="hot_destlist cf">
                    <ul>
                        <c:forEach var="hotDestinationVo" items="${hotDestinationVos}" varStatus="status">
                            <li class="w_220">
                                <a href="http://localhost:8080/secd/province/city/index/${hotDestinationVo.cityId}"
                                   target="_blank">
                                    <s class="ico_list"></s> <span class="pic_outer"><img
                                        src="${hotDestinationVo.headPicUrl}"
                                        img-src=""
                                        width="270" height="170"></span>
                                    <div class="liner_bg" style="height: 40px;">
                                        <dl style="top: 0px; bottom: auto;">
                                            <dt><strong>${status.index+1}</strong>${hotDestinationVo.cityName}</dt>
                                            <dd></dd>
                                        </dl>
                                    </div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

            <!--目的地游记-->
            <div class="normalbox">
                <div class="normaltitle cf">
                    <h1>广西游记</h1><span class="t_archives"><i></i><a
                        href="javascript:void(0)" target="_blank">什么是优质游记？申请必入！</a></span>
                    <span class="rbox"><a class="b_orange_m" href="javascript:void(0)"
                                          target="_blank">
                <span><i class="write_journal"></i>写游记</span> </a></span>
                </div>
                <ul class="journaltab cf">
                    <li class="current"><a rel="nofollow" href="javascript:void(0)">热门</a>
                        <span class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span>|
                    </li>
                    <li><a rel="nofollow" href="javascript:void(0)">最新</a>
                        <span class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span>
                    </li>
                </ul>
                <div class="journalslist cf">
                    <a class="journal-item cf" target="_blank"
                       href="http://you.ctrip.com/travels/guilin28/1490703.html">
                        <div class="iteminner">
                             <span class="item-photo item-nopic">
                                     <span class="pic-tagico-4"></span>
                                 <img style=" display:block;" width="210" height="140"
                                      src="images/user/7a64a65b10ff4c5fbdd5b05fac3710d2_C_240_140.jpg"
                                      writing="6014749" alt="">
                             </span>
                            <dl>
                                <dt class="ellipsis">2013毕业再游桂林，细细品味桂林的山水，详细攻略+游记</dt>
                                <dd class="item-user">轩轩的宣言发表于&nbsp;2013-08-20
                                    <span class="lastreply">
最新回复&nbsp;2018-07-27                                     </span>
                                </dd>
                                <dd class="item-short">桂林山水自古就有甲天下的美誉，我相信，桂林山水的美丽肯定不需要我在此累述。趁着大学的最......</dd>
                                <dd class="item-prac">
                                     <span class="tips_a">
                                        5天，和朋友
                                     </span>
                                    <span class="tips_b">
</span>
                                </dd>

                            </dl>
                            <ul class="item-infor">
                                <li><i title="浏览" class="numview">47.4万</i></li>
                                <li><i title="喜欢" class="want">4889</i></li>
                                <li><i title="回复" class="numreply">543</i></li>
                            </ul>
                        </div>
                    </a>
                    <div class="ttd_pager" data-type="3">
                        <p>1-1711 / 17106篇游记</p>
                        <div class="pager_v1"><a class="prevpage disabled"><i></i>上一页</a><a class="current"
                                                                                            href="http://you.ctrip.com/travels/guangxi100052/s3-p1.html">1</a><a
                                href="http://you.ctrip.com/travels/guangxi100052/s3-p2.html">2</a><a
                                href="http://you.ctrip.com/travels/guangxi100052/s3-p3.html">3</a><a
                                href="http://you.ctrip.com/travels/guangxi100052/s3-p4.html">4</a><a
                                href="http://you.ctrip.com/travels/guangxi100052/s3-p5.html">5</a><a class="nextpage"
                                                                                                     href="http://you.ctrip.com/travels/guangxi100052/s3-p2.html">下一页<i></i></a><span>到 <input
                                lt="0" type="text" value=""> 页 / <em class="numpage">1711</em>页</span><a class="gopage"
                                                                                                         href="javascript:;">确定</a>
                        </div>
                    </div>
                </div>
                <div class="journalslist undis">
                    <a class="journal-item cf" target="_blank"
                       href="http://you.ctrip.com/travels/beihai140/3757860.html">
                        <div class="iteminner">
                             <span class="item-photo item-nopic">
                                 <img style=" display:block;" width="210" height="140"
                                      src="images/user/eea9d0e1323c418c933f7283ec99cecf_C_240_140.jpg" writing="0"
                                      alt="">
                             </span>
                            <dl>
                                <dt class="ellipsis">巡礼全球大都会城市</dt>
                                <dd class="item-user">_CFT****06058发表于&nbsp;2018-12-07
                                    <span class="lastreply">最新回复&nbsp;2018-12-07</span>
                                </dd>
                                <dd class="item-short">城市综合体，是城市与建筑的精彩对话，也是都会生活的巅峰范本。一座综合体就像“城中之城......</dd>
                                <dd class="item-prac">
                                    <span class="tips_a"></span>
                                    <span class="tips_b"></span>
                                </dd>

                            </dl>
                            <ul class="item-infor">
                                <li><i title="浏览" class="numview">375</i></li>
                                <li><i title="喜欢" class="want">1</i></li>
                                <li><i title="回复" class="numreply">1</i></li>
                            </ul>
                        </div>
                    </a>
                    <div class="ttd_pager" data-type="2">
                        <p>1-1711 / 17106篇游记</p>
                        <div class="pager_v1"><a class="prevpage disabled"><i></i>上一页</a>
                            <a class="current" href="http://you.ctrip.com/travels/guangxi100052/s2-p1.html">1</a>
                            <a href="http://you.ctrip.com/travels/guangxi100052/s2-p2.html">2</a>
                            <a href="http://you.ctrip.com/travels/guangxi100052/s2-p3.html">3</a>
                            <a href="http://you.ctrip.com/travels/guangxi100052/s2-p4.html">4</a>
                            <a href="http://you.ctrip.com/travels/guangxi100052/s2-p5.html">5</a>
                            <a class="nextpage" href="http://you.ctrip.com/travels/guangxi100052/s2-p2.html">下一页<i></i>
                            </a><span>到 <input lt="0" type="text" value=""> 页 / <em class="numpage">1711</em>页</span>
                            <a class="gopage" href="javascript:;">确定</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</body>

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
            <dt>关注攻略社区</dt>
            <dd class="youguanzhu cf"><span class="ftweixin"></span></dd>
        </dl>
    </div>
</div>

<script src="js/user/jquery-3.3.1.js"></script>
<script>
    /*
        目的热点图片特效
    */
    $(function () {
        $(".hot_destlist li").hover(function () {
            $(this).find(".liner_bg").css("height", "100%");
            $(this).find(".liner_bg dl").css({top: "auto", bottom: "0"});
        }, function () {
            $(this).find(".liner_bg").css("height", "40px");
            $(this).find(".liner_bg dl").css({top: "o", bottom: "auto"});
        });
    });

    /*
    * 游记列表特效
    * */
    $(function () {
        $tabs(".journaltab li", ".journalslist");
        $(".journaltab a").click(function () {
            var b = $(this).parents(".normalbox").offset().top - $(".ttd_topnav").height();
            $("body,html").animate({scrollTop: b}, 800)
        })
    });

    function $tabs(b, a, c) {
        $(b).click(function () {
            if ($(this).parent().hasClass("scroll-top")) {
                var d = $(".journalbtn_t").offset().top;
                $("body,html").animate({scrollTop: d}, 500)
            }
            $(this).addClass("current").siblings().removeClass("current");
            $(a).hide().eq($(b).index(this)).show();
            "function" == typeof c && c($(this))
        });
        $(".journalslistv1 .journal-item").hover(function () {
            $(this).addClass("itemhover")
        }, function () {
            $(this).removeClass("itemhover")
        })
    }
</script>
</html>