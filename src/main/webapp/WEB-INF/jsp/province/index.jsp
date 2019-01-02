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
    <meta name="mobile-agent" content="format=html5;url=https://gs.ctrip.com/html5/you/place/100052.html">
    <title>壮瑶文化旅游中心</title>
    <meta name="keywords" content="广西旅游,广西自助游,广西自驾,广西出游,广西自由行,广西旅游攻略,广西游玩攻略,广西自助游攻略">
    <meta name="description">
    <link rel="canonical" href="http://you.ctrip.com/place/guangxi100052.html">
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
                <li class="ttd_first_nav current"><a href="http://localhost:8080/secd/province/index">主页</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/spot">景点</a>
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
<div class="ttd2_background ttd3_media">
    <div class="content cf">
        <div class="des_narrow f_left">
            <!--侧边下载二维码&攻略轮播-->
            <!--侧边淘线路-->
            <div class="narrow_wbox tao_line">
                <div class="narrow_title cf">
                    <h3><i class="ico_tao"></i>淘线路</h3>
                </div>
                <div class="tabitem">
                    <div class="sformline">
                        <label>目的地：</label>
                        <input id="taoDistrict" class="sformtext" value="广西" type="text">
                    </div>
                    <div class="sformline">
                        <label>类 型：</label>
                        <div class="fed_select_box sformselect short_s">
                            <div id="taoType" data-value="2" class="fed_select_txt">跟团游</div>
                            <ul class="fed_option undis" style="display: none;">
                                <li><a href="javascript:;" data-value="2">跟团游</a></li>
                                <li><a href="javascript:;" data-value="1">自由行</a></li>
                            </ul>
                            <span class="arrow"></span>
                        </div>
                    </div>
                    <div class="sformline">
                        <label>人 数：</label>
                        <div class="fed_select_box sformselect short_s">
                            <div id="taoPeople" class="fed_select_txt" data-value="2">2</div>
                            <ul style="display: none;" class="fed_option undis">
                                <li><a href="javascript:;" data-value="1">1</a></li>
                                <li><a href="javascript:;" data-value="2">2</a></li>
                                <li><a href="javascript:;" data-value="3">3</a></li>
                                <li><a href="javascript:;" data-value="4">4</a></li>
                                <li><a href="javascript:;" data-value="5">5</a></li>
                                <li><a href="javascript:;" data-value="6">6</a></li>
                                <li><a href="javascript:;" data-value="7">7</a></li>
                                <li><a href="javascript:;" data-value="8">8</a></li>
                                <li><a href="javascript:;" data-value="9">9</a></li>
                                <li><a href="javascript:;" data-value="10">10</a></li>
                            </ul>
                            <span class="arrow"></span>
                        </div>
                        <span class="unit">人</span>
                    </div>
                    <div class="sformline">
                        <label>预 算：</label>
                        <div class="fed_select_box sformselect short_s">
                            <div id="taoBudget" class="fed_select_txt" data-value="0">不限</div>
                            <ul style="display: none;" class="fed_option undis">
                                <li><a href="javascript:;" data-value="0">不限</a></li>
                                <li><a href="javascript:;" data-value="3000">3000</a></li>
                                <li><a href="javascript:;" data-value="5000">5000</a></li>
                                <li><a href="javascript:;" data-value="10000">10000</a></li>
                                <li><a href="javascript:;" data-value="30000">30000</a></li>
                                <li><a href="javascript:;" data-value="50000">50000</a></li>
                            </ul>
                            <span class="arrow"></span>
                        </div>
                        <span class="unit">元/人</span>
                    </div>
                    <div class="sformline"><label>电 话：</label>
                        <input id="taoTelephone" class="sformtext" type="text" placeholder="旅行顾问会尽快联系您"></div>
                    <div class="sformline"><a class="b_blue_m" href="javascript:;"><span>为我淘线路</span></a></div>
                </div>
                <p class="hotline"><span>咨询热线</span> <em>400-051-7937</em></p>
            </div>
            <div class="gsn-layer continent_pbox" id="continentPopbox">
                <a href="javascript:$.popupbox.close();" class="close"></a>
                <h3>提交成功</h3>
                <p>携程旅行顾问将尽快联系您定制私人线路。</p>
            </div>
            <!--口碑榜单-->
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
            <!--END新增榜单块-->
            <!--侧边查看大地图-->

            <!--侧边当地达人-->
            <div class="narrow_wbox c_expert" id="destexpertId" style="display: none">
            </div>
            <input type="hidden" id="txtDistrictId" value="100052">
            <!--侧边游友动态-->
            <div class="narrow_wbox c_dynamic">
                <div class="narrow_title cf">
                    <h3>游友动态</h3>
                </div>
                <div class="rollbox">
                    <ul>
                        <li style="display: list-item;">
                            <dl>
                                <dt><span class="username">暗黑法师</span>
                                    <text>发表了问题</text>
                                </dt>
                                <dd><a href="http://you.ctrip.com/asks/guangxi100052/4373079.html" target="_blank">#桂林沐兰坊客栈#昨天看新闻，说广西这里被淹了，想问下现在的情况，还下雨么？是个出游吗？</a>
                                </dd>
                                <dd>521天前</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
            <!--侧边正在发生旅游热点-->
            <div class="narrow_wbox hot_travels">
                <div class="narrow_title cf">
                    <h3>正在发生的旅游热点</h3>
                </div>
                <ul>
                    <li class=""><span><i></i></span>
                        <a target="_blank" href="http://you.ctrip.com/news/list-ctrip/21328.html">地球上的神奇动物</a>
                    </li>
                    <li class=""><span><i></i></span>
                        <a target="_blank"
                           href="http://you.ctrip.com/news/list-ctrip/21327.html">爱上慢时光，杨烁在这座绝美边城找回初心</a>
                    </li>
                </ul>
            </div>

        </div>
        <div class="des_wide f_right">
            <!--热门照片-->
            <!--热门目的地-->
            <div class="normalbox hotlistouter">
                <div class="normaltitle cf">
                    <h1>广西热门目的地</h1>
                    <span class="rbox">
                        <a href="http://you.ctrip.com/countrysightlist/guangxi100052.html" class="f_14" target="_blank">更多广西目的地<i
                                class="f14_more_arror"></i></a>
                    </span>
                </div>
                <div class="hot_destlist cf">
                    <ul>
                        <li class="w_220">
                            <a href="http://you.ctrip.com/place/guilin28.html" target="_blank">
                                <s class="ico_list"></s> <span class="pic_outer"><img
                                    src="images/user/CghzfVWwtayAcRE2ABaIuxjYffE235_C_270_170.jpg"
                                    img-src="https://dimg01.c-ctrip.com/images/fd/tg/g1/M07/7A/98/CghzfVWwtayAcRE2ABaIuxjYffE235_C_270_170.jpg"
                                    width="270" height="170"></span>
                                <div class="liner_bg" style="height: 40px;">
                                    <dl style="top: 0px; bottom: auto;">
                                        <dt><strong>1</strong>桂林</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                            </a>
                        </li>
                        <li class="w_220">
                            <a href="http://you.ctrip.com/place/beihai140.html" target="_blank">
                                <span class="pic_outer">
                                    <img src="images/user/100p0e00000076fm26A57_C_270_170.jpg"
                                         img-src="https://dimg05.c-ctrip.com/images/100p0e00000076fm26A57_C_270_170.jpg"
                                         width="270" height="170"></span>
                                <div class="liner_bg" style="height: 40px;">
                                    <dl style="top: 0px; bottom: auto;">
                                        <dt><strong>2</strong>北海</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                            </a>
                        </li>
                        <li class="w_220">
                            <a href="http://you.ctrip.com/place/nanning166.html" target="_blank">
                                <span class="pic_outer"><img src="images/user/10020t000000iwjol8F2F_C_270_170.jpg"
                                                             img-src="https://dimg01.c-ctrip.com/images/10020t000000iwjol8F2F_C_270_170.jpg"
                                                             width="270" height="170"></span>
                                <div class="liner_bg" style="height: 40px;">
                                    <dl style="top: 0px; bottom: auto;">
                                        <dt><strong>3</strong>南宁</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                            </a>
                        </li>
                        <li class="w_220">
                            <a href="http://you.ctrip.com/place/yangshuo702.html" target="_blank">
                                <span class="pic_outer"><img src="images/user/100m0i0000009ldzo6986_C_270_170.jpg"
                                                             img-src="https://dimg01.c-ctrip.com/images/100m0i0000009ldzo6986_C_270_170.jpg"
                                                             width="270" height="170"></span>
                                <div class="liner_bg" style="height: 40px;">
                                    <dl style="top: 0px; bottom: auto;">
                                        <dt><strong>4</strong>阳朔</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                            </a>
                        </li>
                        <li class="w_220">
                            <a href="http://you.ctrip.com/place/liuzhou143.html" target="_blank">
                                <span class="pic_outer"><img src="images/user/1008070000002qm8h5F33_C_270_170.jpg"
                                                             img-src="https://dimg04.c-ctrip.com/images/1008070000002qm8h5F33_C_270_170.jpg"
                                                             width="270" height="170"></span>
                                <div class="liner_bg" style="height: 40px;">
                                    <dl style="top: 0px; bottom: auto;">
                                        <dt><strong>5</strong>柳州</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                            </a>
                        </li>
                        <li class="w_220">
                            <a href="http://you.ctrip.com/place/longsheng1445120.html" target="_blank">
                                <span class="pic_outer"><img
                                        src="images/user/CggYHlZC0AiAedNMACKFFDgxDsk808_C_270_170.jpg"
                                        img-src="https://dimg05.c-ctrip.com/images/fd/tg/g4/M08/C9/CA/CggYHlZC0AiAedNMACKFFDgxDsk808_C_270_170.jpg"
                                        width="270" height="170"></span>
                                <div class="liner_bg" style="height: 40px;">
                                    <dl style="top: 0px; bottom: auto;">
                                        <dt><strong>6</strong>龙胜</dt>
                                        <dd></dd>
                                    </dl>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!--推荐行程-->
            <div class="normalbox cityjourneys">
                <div class="normaltitle cf">
                    <h1>广西推荐行程</h1>
                    <span class="rbox"><a href="http://you.ctrip.com/journeys/guangxi100052.html" target="_blank"
                                          class="f_14">更多广西行程<i class="f14_more_arror"></i></a></span>
                </div>
                <div class="journeyswrap">
                    <div class="journeys_v2box cf">
                        <a class="jv2boxhover" href="http://you.ctrip.com/journeys/guangxi100052/502422.html"
                           target="_blank">
                            <span class="journeypic"><img
                                    src="images/user/4bde3b739f1d4f92b0dcc96680886036_D_150_150.jpg" width="150"
                                    height="150"></span>
                            <dl>
                                <dt>杨堤-兴坪段漓江精华1日游</dt>
                                <dd><span class="daycount"><i></i>1天</span><span class="sightcount"><i></i>5个观光地</span>
                                </dd>

                                <dd>“桂林山水甲天下，阳朔山水甲桂林”，其中杨堤-兴坪段更是不容错过。这条行程可以让你在阳朔感受到漓江的精华，还可以领略古镇老街的悠悠韵味。</dd>
                            </dl>
                        </a>
                    </div>
                </div>
            </div>
            <!--目的地游记-->
            <div class="normalbox">
                <div class="normaltitle cf">
                    <h1>广西游记</h1><span class="t_archives"><i></i><a
                        href="http://you.ctrip.com/travels/youyouctripstar10000/1756062.html" target="_blank">什么是优质游记？申请必入！</a></span>
                    <span class="rbox"><a class="b_orange_m" href="http://you.ctrip.com/add-travel/Guide.html"
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

<script src="js/user/jquery-3.3.1.js"></script>
<script src=""></script>
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