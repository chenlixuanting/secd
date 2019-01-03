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
    <title>广西旅游景点推荐,广西旅游必去景点,广西景点大全/排名</title>
    <meta name="keywords" content="广西景点,广西景点推荐,广西旅游景点,广西景点排名,广西景点大全,广西必去景点">
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
                <li class="current"><a href="http://localhost:8080/secd/province/spot">景点</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/shopping">购物</a>
                </li>
                <li><a href="http://you.ctrip.com/travels/guangxi100052.html">游记</a>
                </li>
                <li><a href="http://you.ctrip.com/journeys/guangxi100052.html">行程</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="ttd2_background">
    <div class="content cf">
        <div class="des_narrow f_left">
            <!--START新增榜单块-->
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
            <!--侧边热销门票排行-->
            <input type="hidden" id="ctmRmmp" name="ctmRmmp" value="#ctm_ref=gs_ttd_{0}_03_tkt_{1}_100052_undefined">
            <div id="hotTicketDivId" class="hot_ticket" style="display: none">
                <div class="narrow_title cf">
                    <h3>热销门票排行</h3>
                    <span><a target="_blank" href="http://piao.ctrip.com/dest/d-Guangxi-100052/s-tickets/"
                             class="ticketpic" data-id="ctm_gs_rmmp" data-type="2">更多<i class="gs2_more_arror"></i></a></span>
                </div>
                <ul id="hotTicketId"></ul>
            </div>
            <input type="hidden" id="txtTicketDistrictId" value="100052">
        </div>
        <div class="des_wide f_right">
            <!--各地景点-->
            <div class="normalbox">
                <div class="normaltitle cf">
                    <h1>广西<span> 各地景点</span></h1>
                </div>
                <div class="list_wide_mod1">
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/guilin28.html" target="_blank"><img
                                    src="images/user/CghzfVWwtayAcRE2ABaIuxjYffE235_C_100_100.jpg"
                                    width="100" height="100" alt=""></a> <i title="景点"></i><span>桂林</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/guilin28.html">桂林</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/guilin28/2888.html" target="_blank">漓江</a>、<a
                                    href="http://you.ctrip.com/sight/yangshuo702/22079.html" target="_blank">西街</a>、<a
                                    href="http://you.ctrip.com/sight/guilin28/5925.html" target="_blank">两江四湖</a>、<a
                                    href="http://you.ctrip.com/sight/yangshuo702/22081.html" target="_blank">遇龙河</a>、<a
                                    href="http://you.ctrip.com/sight/guilin28/107505.html" target="_blank">象山景区</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/guilin28.html" target="_blank">桂林景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/beihai140.html"
                               target="_blank"><img src="images/user/100p0e00000076fm26A57_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>北海</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/beihai140.html">北海</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/weizhouisland120063/9311.html" target="_blank">涠洲岛</a>、<a
                                    href="http://you.ctrip.com/sight/beihai140/9308.html" target="_blank">北海银滩旅游度假区</a>、<a
                                    href="http://you.ctrip.com/sight/beihai140/62160.html" target="_blank">北海老街</a>、<a
                                    href="http://you.ctrip.com/sight/beihai140/9312.html" target="_blank">北海海底世界</a>、<a
                                    href="http://you.ctrip.com/sight/weizhouisland120063/109882.html" target="_blank">鳄鱼山景区</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/beihai140.html" target="_blank">北海景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/nanning166.html"
                               target="_blank"><img src="images/user/10020t000000iwjol8F2F_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>南宁</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/nanning166.html">南宁</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/nanning166/8810.html"
                                        target="_blank">青秀山</a>、<a
                                    href="http://you.ctrip.com/sight/nanning166/8804.html" target="_blank">南湖公园</a>、<a
                                    href="http://you.ctrip.com/sight/nanning166/8841.html" target="_blank">大明山</a>、<a
                                    href="http://you.ctrip.com/sight/nanning166/8812.html" target="_blank">南宁动物园</a>、<a
                                    href="http://you.ctrip.com/sight/nanning166/133976.html" target="_blank">广西大学</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/nanning166.html" target="_blank">南宁景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/yangshuo702.html"
                               target="_blank"><img src="images/user/100m0i0000009ldzo6986_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>阳朔</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/yangshuo702.html">阳朔</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/yangshuo702/22079.html" target="_blank">西街</a>、<a
                                    href="http://you.ctrip.com/sight/yangshuo702/22081.html" target="_blank">遇龙河</a>、<a
                                    href="http://you.ctrip.com/sight/yangshuo702/22077.html" target="_blank">《印象刘三姐》山水实景演出</a>、<a
                                    href="http://you.ctrip.com/sight/yangshuo702/22083.html" target="_blank">大榕树</a>、<a
                                    href="http://you.ctrip.com/sight/yangshuo702/140484.html" target="_blank">世外桃源</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/yangshuo702.html" target="_blank">阳朔景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/liuzhou143.html"
                               target="_blank"><img src="images/user/1008070000002qm8h5F33_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>柳州</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/liuzhou143.html">柳州</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/liuzhou143/62242.html" target="_blank">龙潭公园</a>、<a
                                    href="http://you.ctrip.com/sight/sanjiang975/131755.html"
                                    target="_blank">程阳八寨</a>、<a href="http://you.ctrip.com/sight/liuzhou143/62241.html"
                                                                target="_blank">柳侯公园</a>、<a
                                    href="http://you.ctrip.com/sight/liuzhou143/1412452.html"
                                    target="_blank">百里柳江旅游景区</a>、<a
                                    href="http://you.ctrip.com/sight/sanjiang975/16900.html" target="_blank">三江侗乡</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/liuzhou143.html" target="_blank">柳州景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/longsheng1445120.html"
                               target="_blank"><img
                                    src="images/user/CggYHlZC0AiAedNMACKFFDgxDsk808_C_100_100.jpg"
                                    width="100" height="100" alt=""></a> <i title="景点"></i><span>龙胜</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/longsheng1445120.html">龙胜</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/longjititian970/14892.html" target="_blank">龙脊梯田</a>、<a
                                    href="http://you.ctrip.com/sight/longjititian970/110465.html"
                                    target="_blank">金坑梯田</a>、<a
                                    href="http://you.ctrip.com/sight/longjititian970/137435.html"
                                    target="_blank">七星伴月</a>、<a
                                    href="http://you.ctrip.com/sight/longsheng1445120/18143.html"
                                    target="_blank">龙胜温泉</a>、<a
                                    href="http://you.ctrip.com/sight/longjititian970/50289.html"
                                    target="_blank">黄洛瑶寨</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/longsheng1445120.html" target="_blank">龙胜景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/hezhou707.html"
                               target="_blank"><img src="images/user/1007090000003q38g67E9_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>贺州</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/hezhou707.html">贺州</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/huangyaoancienttown120533/22158.html"
                                        target="_blank">黄姚古镇</a>、<a
                                    href="http://you.ctrip.com/sight/hezhou707/22156.html" target="_blank">姑婆山</a>、<a
                                    href="http://you.ctrip.com/sight/hezhou707/137452.html" target="_blank">十八水原生态景区</a>、<a
                                    href="http://you.ctrip.com/sight/hezhou707/69544.html" target="_blank">玉石林风景区</a>、<a
                                    href="http://you.ctrip.com/sight/hezhou707/68580.html" target="_blank">紫云洞景区</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/hezhou707.html" target="_blank">贺州景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/baise524.html" target="_blank"><img
                                    src="images/user/CggYHFX7tJ-APZ4SAAvDwVf8iWs425_C_100_100.jpg"
                                    width="100" height="100" alt=""></a> <i title="景点"></i><span>百色</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/baise524.html">百色</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/jingxi967/51441.html" target="_blank">通灵大峡谷</a>、<a
                                    href="http://you.ctrip.com/sight/jingxi967/51464.html" target="_blank">鹅泉</a>、<a
                                    href="http://you.ctrip.com/sight/jingxi967/51456.html" target="_blank">古龙山峡谷群</a>、<a
                                    href="http://you.ctrip.com/sight/leye968/17720.html" target="_blank">大石围天坑群</a>、<a
                                    href="http://you.ctrip.com/sight/baise524/51452.html" target="_blank">百色起义纪念馆</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/baise524.html" target="_blank">百色景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/chongzuo837.html"
                               target="_blank"><img src="images/user/100k0c000000678oy17C0_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>崇左</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/chongzuo837.html">崇左</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/daxin963/8842.html"
                                        target="_blank">德天跨国瀑布景区</a>、<a
                                    href="http://you.ctrip.com/sight/daxin963/54425.html" target="_blank">明仕田园</a>、<a
                                    href="http://you.ctrip.com/sight/pingxiang840/18120.html" target="_blank">凭祥友谊关</a>、<a
                                    href="http://you.ctrip.com/sight/daxin963/110202.html" target="_blank">黑水河</a>、<a
                                    href="http://you.ctrip.com/sight/furui3068/1991277.html" target="_blank">龙谷湾恐龙公园</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/chongzuo837.html" target="_blank">崇左景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <div class="list_mod1">
                        <div class="cityimg">
                            <a class="ttd_nopic100" href="http://you.ctrip.com/place/wuzhou142.html"
                               target="_blank"><img src="images/user/100u0g0000007t2gwB5FC_C_100_100.jpg"
                                                    width="100" height="100" alt=""></a> <i
                                title="景点"></i><span>梧州</span>
                        </div>
                        <dl>
                            <dt><a target="_blank" href="http://you.ctrip.com/place/wuzhou142.html">梧州</a></dt>
                            <dd class="ellipsis">
                                推荐景点：<a href="http://you.ctrip.com/sight/tengxian143827/57728.html"
                                        target="_blank">石表山</a>、<a
                                    href="http://you.ctrip.com/sight/cenxi3056/57779.html" target="_blank">天龙顶国家山地公园</a>、<a
                                    href="http://you.ctrip.com/sight/wuzhou142/57751.html" target="_blank">骑楼城</a>、<a
                                    href="http://you.ctrip.com/sight/wuzhou142/57743.html" target="_blank">白云山</a>、<a
                                    href="http://you.ctrip.com/sight/wuzhou142/57747.html" target="_blank">龙母太庙</a>
                            </dd>
                            <dd>
                                <a href="http://you.ctrip.com/sightlist/wuzhou142.html" target="_blank">梧州景点速览<i
                                        class="gs2_more_arror"></i></a>
                            </dd>
                        </dl>
                    </div>
                    <!--翻页控件-->
                    <div class="ttd_pager cf"><p>1-10 / 74条</p>
                        <div class="pager_v1"><a class="prevpage disabled">上一页</a><a class="current">1</a><a
                                href="http://you.ctrip.com/countrysightlist/guangxi100052/p2.html">2</a><a
                                href="http://you.ctrip.com/countrysightlist/guangxi100052/p3.html">3</a><a
                                href="http://you.ctrip.com/countrysightlist/guangxi100052/p4.html">4</a><a
                                href="http://you.ctrip.com/countrysightlist/guangxi100052/p5.html">5</a><a
                                class="nextpage"
                                href="http://you.ctrip.com/countrysightlist/guangxi100052/p2.html">下一页</a><span>到 <input
                                id="gopagetext" value="" type="text"> 页 / <b class="numpage">8</b>页</span><a
                                class="gopage" href="javascript:;">确定</a></div>
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" id="page_id" value="290528">
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
</html>