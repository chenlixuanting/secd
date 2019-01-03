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
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="location" content="province=广西;city=广西">
    <title>广西自然旅游行程安排,广西自然旅游线路推荐【携程攻略】</title>
    <meta name="keywords" content="广西，，, 自然">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/journey_v2.v2.0.css">
    <link href="css/user/login_popup_new.css" rel="stylesheet" type="text/css">
    <link href="css/user/bdsstyle.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="css/user/pc_flaot.css">
</head>
<body>
<link href="css/user/PageHeader_v2.css" rel="stylesheet">
<div class="gs-header cf">
    <div class="content">
        <div class="gs-nav">
            <ul>
                <li id="gs_nav_0"><a href="http://you.ctrip.com/"><i class="icon_home"></i></a></li>
                <li id="my_home"><a href="http://you.ctrip.com/members/">我的主页</a></li>
            </ul>
        </div>
        <div class="gs-search-2"><input id="gsSearch" type="text" placeholder="搜索城市/景点/游记/问答/住宿/用户" class="sgtgray">
            <button type="button" class="btn-search"></button>
            <div class="gs-notice" id="gsNotice"></div>
            <a class="gs_write_link" id="gsWriteLink" href="http://you.ctrip.com/add-travel/Guide.html"><i></i></a>
        </div>
    </div>
</div>
<div class="content cf ">
    <div class="dest_toptitle">
        <div class="cf">
            <div class="f_left">
                <h1>
                    <a title="广西" href="http://you.ctrip.com/place/guangxi100052.html">广西</a>
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
            <a class="c_map_link" href="http://you.ctrip.com/map/guangxi100052.html" target="_blank"><i></i>地图</a>
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
                <li><a href="http://localhost:8080/secd/province/spot">景点</a>
                </li>
                <li ><a href="http://localhost:8080/secd/province/shopping">购物</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/travel">游记</a>
                </li>
                <li class="current"><a href="http://localhost:8080/secd/province/route">行程</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="ttd2_background ttd3_media">
    <div class="content cf dest_city">
        <div class="des_narrow f_left">
            <div class="country_xclist">
                <h3>携程旅行口碑榜2017</h3>
                <dl>
                    <dt><a target="_blank" href="http://top.ctrip.com/2017/place/zijiayou.html" title="2017十佳自驾游目的地">2017十佳自驾游目的地</a>
                    </dt>
                    <dd><i></i><a target="_blank" href="http://you.ctrip.com/place/hezhou707.html" title="贺州">贺州</a>
                    </dd>
                </dl>
                <dl>
                    <dt><a target="_blank" href="http://top.ctrip.com/2017/place/niandusheying.html"
                           title="2017年度十大摄影目的地">2017年度十大摄影目的地</a></dt>
                    <dd><i></i><a target="_blank" href="http://you.ctrip.com/place/guilin28.html" title="桂林">桂林</a></dd>
                </dl>
                <dl>
                    <dt><a target="_blank" href="http://top.ctrip.com/2017/place/yazhoulvxing.html"
                           title="2017亚洲十大旅行目的地">2017亚洲十大旅行目的地</a></dt>
                    <dd><i></i><a target="_blank" href="http://you.ctrip.com/place/guilin28.html" title="桂林">桂林</a></dd>
                </dl>
            </div>
        </div>
        <div class="des_wide f_right">
            <div class="normalbox">
                <input type="hidden" id="page_id" value="290555">
                <div class="normaltitle cf">
                    <h1>广西推荐行程</h1>
                </div>
                <div class="journeyswrap">
                    <!--cate search 没有行程列表时候这里没有-->
                    <div class="cate_search">
                        <ul>
                            <li data-type="1">
                                <dl>
                                    <dt><span>包含目的地：</span> <a href="javascript:;" data-id="0" class="current">不限</a>
                                    </dt>
                                    <dd>
                                        <a data-id="100052"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis100052tag129t1.html"
                                           class="">广西省内</a>
                                        <a data-id="702"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis702tag129t1.html"
                                           class="">阳朔</a>
                                        <a data-id="28"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis28tag129t1.html"
                                           class="">桂林</a>
                                        <a data-id="140"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis140tag129t1.html"
                                           class="">北海</a>
                                        <a data-id="120063"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis120063tag129t1.html"
                                           class="">涠洲岛</a>
                                        <a data-id="166"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis166tag129t1.html"
                                           class="">南宁</a>
                                        <a data-id="143"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis143tag129t1.html"
                                           class="">柳州</a>
                                        <a data-id="975"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis975tag129t1.html"
                                           class="">三江</a>
                                        <a data-id="970"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis970tag129t1.html"
                                           class="">龙脊梯田</a>
                                        <a data-id="1445120"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis1445120tag129t1.html"
                                           class="">龙胜</a>
                                        <a data-id="2016142"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis2016142tag129t1.html"
                                           class="">鱼峰区</a>
                                        <a data-id="963"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis963tag129t1.html"
                                           class="">大新</a>
                                        <a data-id="181"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis181tag129t1.html"
                                           class="">河内</a>
                                        <a data-id="218"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/dis218tag129t1.html"
                                           class="">下龙湾</a>
                                    </dd>
                                </dl>
                                <span class="r_select">
                            <a href="javascript:;" class="morecheck"> 多选<b>+</b> </a> 
                            <a class="seeline" href="javascript:;" style="display: inline;"> 更多<span></span> </a> 
                        </span>
                            </li>
                            <li data-type="2">
                                <dl>
                                    <dt><span>行程天数：</span> <a data-id="0" href="javascript:;" class="current">不限</a>
                                    </dt>
                                    <dd>
                                        <a data-id="1"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/day1tag129t1.html"
                                           class="">1日</a>
                                        <a data-id="2"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/day2tag129t1.html"
                                           class="">2日</a>
                                        <a data-id="3"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/day3tag129t1.html"
                                           class="">3日</a>
                                        <a data-id="4"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/day4tag129t1.html"
                                           class="">4日</a>
                                        <a data-id="5"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/day5tag129t1.html"
                                           class="">5日</a>
                                        <a data-id="6"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/day6tag129t1.html"
                                           class="">6日</a>
                                    </dd>
                                </dl>
                                <span class="r_select">
                            <a href="javascript:;" class="morecheck"> 多选<b>+</b> </a> <a class="seeline"
                                                                                         href="javascript:;"> 更多<span></span> </a> </span>
                            </li>
                            <li data-type="3">
                                <dl>
                                    <dt><span>行程亮点：</span> <a href="http://you.ctrip.com/journeys/Guangxi100052/t1.html"
                                                              class="">不限</a></dt>
                                    <dd>
                                        <a data-id="129" href="javascript:;" class="current">自然</a>
                                        <a data-id="57" href="http://you.ctrip.com/journeys/Guangxi100052/tag57t1.html"
                                           class="">亲水</a>
                                        <a data-id="79" href="http://you.ctrip.com/journeys/Guangxi100052/tag79t1.html"
                                           class="">游山/爬山</a>
                                        <a data-id="127"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag127t1.html"
                                           class="">亲水</a>
                                        <a data-id="113"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag113t1.html"
                                           class="">坐游船</a>
                                        <a data-id="118"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag118t1.html"
                                           class="">摄影</a>
                                        <a data-id="32" href="http://you.ctrip.com/journeys/Guangxi100052/tag32t1.html"
                                           class="">逛特色街</a>
                                        <a data-id="1" href="http://you.ctrip.com/journeys/Guangxi100052/tag1t1.html"
                                           class="">经典</a>
                                        <a data-id="109"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag109t1.html"
                                           class="">夜游</a>
                                        <a data-id="12" href="http://you.ctrip.com/journeys/Guangxi100052/tag12t1.html"
                                           class="">人文</a>
                                        <a data-id="27" href="http://you.ctrip.com/journeys/Guangxi100052/tag27t1.html"
                                           class="">古镇古村游</a>
                                        <a data-id="70" href="http://you.ctrip.com/journeys/Guangxi100052/tag70t1.html"
                                           class="">逛公园</a>
                                        <a data-id="45" href="http://you.ctrip.com/journeys/Guangxi100052/tag45t1.html"
                                           class="">看夕阳</a>
                                        <a data-id="75" href="http://you.ctrip.com/journeys/Guangxi100052/tag75t1.html"
                                           class="">漂流</a>
                                        <a data-id="42" href="http://you.ctrip.com/journeys/Guangxi100052/tag42t1.html"
                                           class="">看海</a>
                                        <a data-id="20" href="http://you.ctrip.com/journeys/Guangxi100052/tag20t1.html"
                                           class="">吃海鲜</a>
                                        <a data-id="28" href="http://you.ctrip.com/journeys/Guangxi100052/tag28t1.html"
                                           class="">观光骑行</a>
                                        <a data-id="41" href="http://you.ctrip.com/journeys/Guangxi100052/tag41t1.html"
                                           class="">看表演</a>
                                        <a data-id="59" href="http://you.ctrip.com/journeys/Guangxi100052/tag59t1.html"
                                           class="">森林氧吧</a>
                                        <a data-id="43" href="http://you.ctrip.com/journeys/Guangxi100052/tag43t1.html"
                                           class="">看日出</a>
                                        <a data-id="13" href="http://you.ctrip.com/journeys/Guangxi100052/tag13t1.html"
                                           class="">户外</a>
                                        <a data-id="130"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag130t1.html"
                                           class="">城市</a>
                                        <a data-id="23" href="http://you.ctrip.com/journeys/Guangxi100052/tag23t1.html"
                                           class="">地貌奇观</a>
                                        <a data-id="49" href="http://you.ctrip.com/journeys/Guangxi100052/tag49t1.html"
                                           class="">民俗体验</a>
                                        <a data-id="73" href="http://you.ctrip.com/journeys/Guangxi100052/tag73t1.html"
                                           class="">水上活动</a>
                                        <a data-id="15" href="http://you.ctrip.com/journeys/Guangxi100052/tag15t1.html"
                                           class="">参观博物馆</a>
                                        <a data-id="25" href="http://you.ctrip.com/journeys/Guangxi100052/tag25t1.html"
                                           class="">访古</a>
                                        <a data-id="51" href="http://you.ctrip.com/journeys/Guangxi100052/tag51t1.html"
                                           class="">泡吧</a>
                                        <a data-id="81" href="http://you.ctrip.com/journeys/Guangxi100052/tag81t1.html"
                                           class="">春游</a>
                                        <a data-id="84" href="http://you.ctrip.com/journeys/Guangxi100052/tag84t1.html"
                                           class="">海鲜季</a>
                                        <a data-id="60" href="http://you.ctrip.com/journeys/Guangxi100052/tag60t1.html"
                                           class="">赏花</a>
                                        <a data-id="40" href="http://you.ctrip.com/journeys/Guangxi100052/tag40t1.html"
                                           class="">看动物</a>
                                        <a data-id="5" href="http://you.ctrip.com/journeys/Guangxi100052/tag5t1.html"
                                           class="">情侣</a>
                                        <a data-id="124"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag124t1.html"
                                           class="">历史</a>
                                        <a data-id="21" href="http://you.ctrip.com/journeys/Guangxi100052/tag21t1.html"
                                           class="">吃农家菜</a>
                                        <a data-id="26" href="http://you.ctrip.com/journeys/Guangxi100052/tag26t1.html"
                                           class="">潜水</a>
                                        <a data-id="74" href="http://you.ctrip.com/journeys/Guangxi100052/tag74t1.html"
                                           class="">踏青</a>
                                        <a data-id="19" href="http://you.ctrip.com/journeys/Guangxi100052/tag19t1.html"
                                           class="">城镇漫步</a>
                                        <a data-id="121"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag121t1.html"
                                           class="">亲子</a>
                                        <a data-id="112"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag112t1.html" class="">游览园林</a>
                                        <a data-id="11" href="http://you.ctrip.com/journeys/Guangxi100052/tag11t1.html"
                                           class="">美食</a>
                                        <a data-id="92" href="http://you.ctrip.com/journeys/Guangxi100052/tag92t1.html"
                                           class="">错峰</a>
                                        <a data-id="99" href="http://you.ctrip.com/journeys/Guangxi100052/tag99t1.html"
                                           class="">暑假</a>
                                        <a data-id="105"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag105t1.html" class="">宗教文化游</a>
                                        <a data-id="83" href="http://you.ctrip.com/journeys/Guangxi100052/tag83t1.html"
                                           class="">花季</a>
                                        <a data-id="56" href="http://you.ctrip.com/journeys/Guangxi100052/tag56t1.html"
                                           class="">品味建筑</a>
                                        <a data-id="115"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag115t1.html" class="">缆车观光</a>
                                        <a data-id="125"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/tag125t1.html"
                                           class="">宗教</a>
                                    </dd>
                                </dl>
                                <span class="r_select"> <a href="javascript:;" class="morecheck"> 多选<b>+</b> </a> <a
                                        class="seeline" href="javascript:;"
                                        style="display: inline;"> 更多<span></span> </a></span>
                            </li>
                            <li data-type="4" style="border: none;">
                                <dl>
                                    <dt>
                                        <span>景&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点：</span>
                                        <a href="javascript:;" class="current">不限</a>
                                    </dt>
                                    <dd>
                                        <a data-id="10558831"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight10558831tag129t1.html"
                                           class="">西街</a>
                                        <a data-id="90682"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight90682tag129t1.html"
                                           class="">象山景区</a>
                                        <a data-id="10558668"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight10558668tag129t1.html"
                                           class="">涠洲岛</a>
                                        <a data-id="90680"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight90680tag129t1.html"
                                           class="">独秀峰王城景区</a>
                                        <a data-id="91428"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight91428tag129t1.html"
                                           class="">鳄鱼山景区</a>
                                        <a data-id="91429"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight91429tag129t1.html"
                                           class="">滴水丹屏</a>
                                        <a data-id="86967"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight86967tag129t1.html"
                                           class="">北海老街</a>
                                        <a data-id="91427"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight91427tag129t1.html"
                                           class="">天主教堂</a>
                                        <a data-id="91430"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight91430tag129t1.html"
                                           class="">五彩滩</a>
                                        <a data-id="77771"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight77771tag129t1.html"
                                           class="">北海银滩旅游度假区</a>
                                        <a data-id="75898"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight75898tag129t1.html"
                                           class="">漓江</a>
                                        <a data-id="91431"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight91431tag129t1.html"
                                           class="">石螺口海滩</a>
                                        <a data-id="75889"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight75889tag129t1.html"
                                           class="">叠彩山</a>
                                        <a data-id="76822"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight76822tag129t1.html"
                                           class="">两江四湖</a>
                                        <a data-id="84570"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight84570tag129t1.html"
                                           class="">十里画廊</a>
                                        <a data-id="10758276"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight10758276tag129t1.html"
                                           class="">《印象刘三姐》山水实景演出</a>
                                        <a data-id="10524281"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight10524281tag129t1.html"
                                           class="">正阳步行街</a>
                                        <a data-id="80972"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight80972tag129t1.html"
                                           class="">月亮山</a>
                                        <a data-id="77819"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight77819tag129t1.html"
                                           class="">冠头岭国家森林公园</a>
                                        <a data-id="10559008"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight10559008tag129t1.html"
                                           class="">海洋之窗</a>
                                        <a data-id="83042"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight83042tag129t1.html"
                                           class="">黄布倒影</a>
                                        <a data-id="77467"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight77467tag129t1.html"
                                           class="">青秀山</a>
                                        <a data-id="84828"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight84828tag129t1.html"
                                           class="">广西壮族自治区博物馆</a>
                                        <a data-id="94037"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight94037tag129t1.html"
                                           class="">程阳八寨</a>
                                        <a data-id="80161"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight80161tag129t1.html"
                                           class="">银子岩</a>
                                        <a data-id="80971"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight80971tag129t1.html"
                                           class="">大榕树</a>
                                        <a data-id="80969"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight80969tag129t1.html"
                                           class="">遇龙河</a>
                                        <a data-id="82046"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight82046tag129t1.html"
                                           class="">兴坪古镇</a>
                                        <a data-id="77815"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight77815tag129t1.html"
                                           class="">北部湾广场</a>
                                        <a data-id="83215"
                                           href="http://you.ctrip.com/journeys/Guangxi100052/sight83215tag129t1.html"
                                           class="">日月双塔</a>
                                    </dd>
                                </dl>
                                <span class="r_select">
                            <a href="javascript:;" class="morecheck">多选<b>+</b></a>
                            <a class="seeline" href="javascript:;" style="display: inline;">更多<span></span></a>
                        </span>
                            </li>
                        </ul>
                    </div>
                    <div class="journeys_v2box cf jv2boxborder" data-id="502422" data-name="杨堤-兴坪段漓江精华1日游">
                        <span class="journeypic"><img src="images/user/4bde3b739f1d4f92b0dcc96680886036_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">杨堤-兴坪段漓江精华1日游</dt>
                            <dd><span class="daycount"><i></i>1天</span><span class="sightcount"><i></i>5个观光地</span></dd>
                            <dd class="fixed_height">
                                “桂林山水甲天下，阳朔山水甲桂林”，其中杨堤-兴坪段更是不容错过。这条行程可以让你在阳朔感受到漓江的精华，还可以领略古镇老街的悠悠韵味。
                            </dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>阳朔</li>
                            <li class="ellipsis"><span>行程标签：</span>古镇古村游 逛特色街 亲水 漂流 坐游船 自然</li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/502422.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="502677" data-name="单车骑行，一日看尽阳朔美">
                        <span class="journeypic"><img src="images/user/d067342418da4ec184e1d50e7d0ec93c_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">单车骑行，一日看尽阳朔美</dt>
                            <dd><span class="daycount"><i></i>1天</span><span class="sightcount"><i></i>6个观光地</span></dd>
                            <dd class="fixed_height">
                                到了阳朔怎么能不尝试一下漂流旅程呢，漂流结束后再租上一辆自行车，最好是山地车，然后开始接下来的的骑行之旅，最后回到西街体验阳朔丰富多彩的夜生活，一天的行程就这样完美结束啦。
                            </dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>阳朔</li>
                            <li class="ellipsis"><span>行程标签：</span>户外 观光骑行 逛特色街 泡吧 亲水 漂流 坐游船 自然</li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/502677.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="502408" data-name="有山有水有公园，桂林人文休闲一日徒步游">
                        <span class="journeypic"><img src="images/user/0853a2bdae324089b22a9e6282da56b7_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">有山有水有公园，桂林人文休闲一日徒步游</dt>
                            <dd><span class="daycount"><i></i>1天</span><span class="sightcount"><i></i>9个观光地</span></dd>
                            <dd class="fixed_height">在桂林，一天的时间能干什么？一天足够将桂林的青山绿水与人文荟萃一网打尽，来一次高贵大气上档次、低调奢华有内涵的桂林山水一日游！
                            </dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>桂林</li>
                            <li class="ellipsis"><span>行程标签：</span>人文 访古 逛特色街 看日出 看夕阳 亲水 逛公园 游山/爬山 夜游 坐游船 自然 城市</li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/502408.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="503293" data-name="桂林山水2日经典悠游">
                        <span class="journeypic"><img src="images/user/4fbc07a81442492a9a465f1cd4af22b9_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">桂林山水2日经典悠游</dt>
                            <dd><span class="daycount"><i></i>2天</span><span class="sightcount"><i></i>8个观光地</span></dd>
                            <dd class="fixed_height">
                                桂林、阳朔那么多景点，两天时间该怎么玩儿？小编告诉你：咱只挑最经典的内容，去看看象鼻山、靖江王城、兴坪古镇、十里画廊，再游漓江、看《印象刘三姐》、体验遇龙河漂流，以及逛逛阳朔西街，不紧不慢，两天足矣！
                            </dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>桂林 &gt; 阳朔</li>
                            <li class="ellipsis"><span>行程标签：</span>经典 情侣 人文 古镇古村游 观光骑行 逛特色街 泡吧 亲水 逛公园 漂流 游山/爬山 春游 坐游船 自然
                            </li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/503293.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="502402" data-name="桂林阳朔龙脊梯田经典3日游">
                        <span class="journeypic"><img src="images/user/7a2cf9cce9254bab9fdcfb7bde87b35a_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">桂林阳朔龙脊梯田经典3日游</dt>
                            <dd><span class="daycount"><i></i>3天</span><span class="sightcount"><i></i>14个观光地</span>
                            </dd>
                            <dd class="fixed_height">三天的行程涵盖了桂林、阳朔、龙脊梯田的精华景点。如诗山水，大美梯田，古寨风情轻松一次看个够。</dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>桂林 &gt; 阳朔 &gt; 桂林 &gt; 龙脊梯田 &gt; 桂林</li>
                            <li class="ellipsis"><span>行程标签：</span>经典 人文 吃农家菜 地貌奇观 古镇古村游 逛特色街 看日出 看夕阳 民俗体验 亲水 逛公园 游山/爬山
                                夜游 坐游船 摄影 亲水 自然
                            </li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/502402.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="503125" data-name="半城绿树半城楼，南宁休闲观景2日游">
                        <span class="journeypic"><img src="images/user/CggYHFbRe5aAM7tcAAVLZcMRlqg283_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">半城绿树半城楼，南宁休闲观景2日游</dt>
                            <dd><span class="daycount"><i></i>2天</span><span class="sightcount"><i></i>7个观光地</span></dd>
                            <dd class="fixed_height">南宁山清水秀，市内公园绿地众多，周边则有森林、群山等自然景观，二日休闲游带你深入领略绿城生态好风光。</dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>南宁</li>
                            <li class="ellipsis"><span>行程标签：</span>经典 户外 参观博物馆 逛特色街 森林氧吧 赏花 逛公园 踏青 游山/爬山 花季 缆车观光 自然 城市
                            </li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/503125.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="502579" data-name="北海、涠洲岛4日经典之旅">
                        <span class="journeypic"><img src="images/user/CggYG1YA-4KAO82JAGNMOWVXoOc048_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">北海、涠洲岛4日经典之旅</dt>
                            <dd><span class="daycount"><i></i>4天</span><span class="sightcount"><i></i>13个观光地</span>
                            </dd>
                            <dd class="fixed_height">
                                北海这座古代海上丝绸之路出发点的城市，记录了太多的沧桑变迁，站在细沙滩上朝大海的眺望，思绪容易沉浸在历史的某个片段。涠洲岛风光迷人，可体验当地渔村生活，岛上玩点不少，建议在岛上住一晚，但一定要先查好天气预报。另外，岛上无法刷卡，要提前准备好现金。
                            </dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>北海 &gt; 涠洲岛 &gt; 北海</li>
                            <li class="ellipsis"><span>行程标签：</span>吃海鲜 地貌奇观 观光骑行 逛特色街 看动物 看海 看日出 看夕阳 森林氧吧 海鲜季 摄影 亲水 自然
                            </li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/502579.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="503381" data-name="北海、阳朔4日深度游">
                        <span class="journeypic"><img src="images/user/c34f999cef29446694bc13ccdd0d8d3c_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">北海、阳朔4日深度游</dt>
                            <dd><span class="daycount"><i></i>4天</span><span class="sightcount"><i></i>13个观光地</span>
                            </dd>
                            <dd class="fixed_height">大美风景在脚下，四日行程带你从北海到阳朔，一路领略广西独特的风光和民俗。</dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>北海 &gt; 涠洲岛 &gt; 阳朔</li>
                            <li class="ellipsis"><span>行程标签：</span>经典 吃海鲜 观光骑行 逛特色街 看表演 看海 看日出 看夕阳 泡吧 亲水 水上活动 漂流 海鲜季 夜游
                                摄影 亲水 自然
                            </li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/503381.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="503388" data-name="广西小环线4日全景游">
                        <span class="journeypic"><img src="images/user/65b89b870a2840e28ca22331fbd6100f_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">广西小环线4日全景游</dt>
                            <dd><span class="daycount"><i></i>4天</span><span class="sightcount"><i></i>17个观光地</span>
                            </dd>
                            <dd class="fixed_height">四日小环线一路游玩，带你从桂林到北海，领略喀斯特山水美景和迷人海滨风光。</dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>桂林 &gt; 北海 &gt; 涠洲岛 &gt; 北海</li>
                            <li class="ellipsis"><span>行程标签：</span>人文 吃海鲜 访古 观光骑行 逛特色街 看动物 看海 看夕阳 亲水 森林氧吧 游山/爬山 夜游 坐游船
                                摄影 亲水 自然
                            </li>
                        </ul>
                        <!--整块链接-->
                        <a href="http://you.ctrip.com/journeys/Guangxi100052/503388.html" class="jv2boxhover"
                           target="_blank"></a>
                    </div>
                    <div class="journeys_v2box cf" data-id="503395" data-name="多彩风情，南宁及周边三日舒适全景游">
                        <span class="journeypic"><img src="images/user/fddd5bb557a944d8b4b5b1a6918d5cb6_D_180_180.jpg"
                                                      height="180px" width="180px"></span>
                        <dl>
                            <dt class="ellipsis">多彩风情，南宁及周边三日舒适全景游</dt>
                            <dd><span class="daycount"><i></i>3天</span><span class="sightcount"><i></i>5个观光地</span></dd>
                            <dd class="fixed_height">南宁有繁花似锦的宜人居住环境、多姿多彩的民俗风情、气势壮观的跨国大瀑布，花上几天好好感受南宁这个魅力之都吧。</dd>
                        </dl>
                        <ul>
                            <li class="ellipsis"><span>此行去了：</span>南宁 &gt; 大新</li>
                            <li class="ellipsis"><span>行程标签：</span>经典 人文 户外 参观博物馆 访古 古镇古村游 亲水 逛公园 踏青 游山/爬山 自然 城市</li>
                        </ul>
                    </div>
                    <!--新版翻页形式+左侧数字-->
                    <div class="ttd_pager">
                        <div class="ttd_pager cf"><p>1-10 / 15条</p>
                            <div class="pager_v1"><a class="prevpage disabled">上一页</a><a class="current">1</a><a
                                    href="http://you.ctrip.com/journeys/Guangxi100052/tag129t1p2.html">2</a><a
                                    class="nextpage" href="http://you.ctrip.com/journeys/Guangxi100052/tag129t1p2.html">下一页</a><span>到 <input
                                    id="gopagetext" value="" type="text"> 页 / <b class="numpage">2</b>页</span><a
                                    class="gopage" href="javascript:;">确定</a></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="footgray">
    <div class="footinner cf">
        <dl>
            <dt>社区必读</dt>
            <dd><a href="http://you.ctrip.com/htmlpages/eula.html" target="_blank">用户协议</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/guide.html" target="_blank">社区指南</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/exp.html" target="_blank">经验与等级</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/help.html" target="_blank">新手导航</a></dd>
            <dd><a href="http://you.ctrip.com/thematic/marketing/mianze" target="_blank">网络信息侵权保障</a></dd>
        </dl>
        <dl>
            <dt>发现你的旅行</dt>
            <dd><a href="http://you.ctrip.com/place" target="_blank">了解目的地</a></dd>
            <dd><a href="http://you.ctrip.com/travels" target="_blank">阅读精彩游记</a></dd>
            <dd><a href="http://you.ctrip.com/guides" target="_blank">下载精品攻略</a></dd>
            <dd><a href="http://you.ctrip.com/asks" target="_blank">请教旅行达人</a></dd>
            <dd><a href="http://you.ctrip.com/events" target="_blank">发起结伴</a></dd>
        </dl>
        <dl>
            <dt>分享你的旅行</dt>
            <dd><a href="http://you.ctrip.com/add-travel/guide.html" target="_blank">发表游记大作</a></dd>
            <dd><a href="http://you.ctrip.com/dianping/" target="_blank">点评去过的景点</a></dd>
        </dl>
        <dl class="ftabout">
            <dt>关于我们</dt>
            <dd><a href="http://you.ctrip.com/htmlpages/about.html" target="_blank">社区简介</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/contact.html" target="_blank">联系我们</a></dd>
            <dd><a href="http://you.ctrip.com/htmlpages/job.html" target="_blank">加入我们</a></dd>
            <dd><a href="http://you.ctrip.com/intelligence.html" target="_blank">智慧旅游</a></dd>
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
        $(".journeyswrap .journeys_v2box").hover(function () {
            $(this).addClass("jv2boxborder")
        }, function () {
            $(this).removeClass("jv2boxborder")
        });
    });
</script>
</html>