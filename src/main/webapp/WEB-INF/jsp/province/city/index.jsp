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
    <meta name="location" content="province=广西;city=桂林;coord=110.30255,25.281292">
    <meta name="mobile-agent" content="format=html5;url=https://gs.ctrip.com/html5/you/place/28.html">
    <title>2018桂林旅游攻略,12月桂林自助游/周边自驾/出游/自由行/游玩攻略【携程攻略】</title>
    <meta name="keywords" content="桂林旅游,桂林自助游,桂林自驾,桂林出游,桂林自由行,桂林旅游攻略,桂林游玩攻略,桂林自助游攻略">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/city.v2.0.css">
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
                    <a title="桂林" href="http://you.ctrip.com/place/guilin28.html">桂林</a>
                </h1>
                <p>Guilin</p>

            </div>
            <div class="f_right">
                <ul>
                    <li class="des_icon_been" id="wentClick">
                        <a href="javascript:void(0)" data-cat="28" dataresource-cat="28" data_type="Place"
                           class="a_popup_login" rel="nofollow" id="wentClickID"></a>
                        <p>
                            <span id="spanwentId" class="textcolor">去过</span><span><em
                                id="emWentValueID">266639</em></span>
                        </p>
                    </li>
                    <li class="des_icon_want" id="wantClick">
                        <a href="javascript:void(0)" rel="nofollow" data-cat="28" dataresource-cat="28"
                           data_type="Place" class="a_popup_login" id="wantClickID"></a>
                        <p>
                            <span id="spanwantId" class="textcolor">想去</span><span><em
                                id="emWantValueID">84654</em></span>
                        </p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="sec_line cf">

            <p class="c_text_left ellipsis">
                欢迎您访问桂林 </p>
            <a class="c_map_link" href="http://you.ctrip.com/map/guilin28.html" target="_blank"><i></i>地图</a>
        </div>
    </div>
</div>
<div class="ttd_topnav_box">
    <div class="ttd_topnav"
         style="position: relative; overflow: visible; top: 0px; left: 0px; right: 0px; width: 100%; height: 39px;">
        <div class="innerbox">
            <ul class="cf">

                <li class="ttd_first_nav current"><a href="http://localhost:8080/secd/province/city/index">主页</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/city/spot">景点</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/city/shopping">购物</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/city/travel">游记</a>
                </li>
                <li><a href="http://localhost:8080/secd/province/city/route">行程</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--二级导航-->
<div class="ttd2_background">
    <div class="content cf dest_city">
        <div class="des_narrow f_left">
            <!--侧边榜单-->
            <div class="city_xclist">
                <h3>携程旅行口碑榜2017</h3>
                <ul>
                    <li><a target="_blank" href="http://top.ctrip.com/2017/place/yazhoulvxing.html">2017亚洲十大旅行目的地</a>
                    </li>
                </ul>
            </div>
            <div id="cityStrategyPartner" class="strategic" style="display:none;"></div>
            <div id="CityBannerLeftHtml" class="gs_event_ttdn" style="display: none;"></div>

            <!--度假End-->
            <!--侧边热销门票排行-->
            <input type="hidden" id="ctmRmmp" name="ctmRmmp" value="#ctm_ref=gs_ttd_{0}_03_tkt_{1}_28_undefined">
            <div id="hotTicketDivId" class="hot_ticket" style="display: none">
                <div class="narrow_title cf">
                    <h3>热销门票排行</h3>
                    <span><a target="_blank" href="http://piao.ctrip.com/dest/d-Guilin-28/s-tickets/" class="ticketpic"
                             data-id="ctm_gs_rmmp" data-type="2">更多<i class="gs2_more_arror"></i></a></span>
                </div>
                <ul id="hotTicketId"></ul>
            </div>
        </div>
        <div class="des_wide f_right">
            <!--幻灯结构-->
            <!--首页热门照片-->
            <div class="slide_show">
                <div data-inner="" class="imgbackgbox">
                    <img data-item="0" src="images/user/CghzfVWwtayAcRE2ABaIuxjYffE235_C_880_350.jpg" width="880"
                         height="350" class="" alt="" style="display: none;">
                    <img data-item="1" src="images/user/10020t000000iop8dE9E1_C_880_350.jpg" width="880" height="350"
                         alt="" class="" style="display: none;">
                    <img data-item="2" src="images/user/100f0600000015zg903FB_C_880_350.jpg" width="880" height="350"
                         alt="" class="" style="display: none;">
                    <img data-item="3" src="images/user/100e0500000010r3xD538_C_880_350.jpg" width="880" height="350"
                         alt="" class="" style="display: none;">
                    <img data-item="4" src="images/user/CggYGVZztWeAHWcjADCY2xj_5_8960_C_880_350.jpg" width="880"
                         height="350" alt="" class="current" style="display: inline;">
                </div>
                <div class="tabcover">
                </div>
                <ul class="tabpicbox" data-indicators="">
                    <li data-slip-to="0" class="">
                        <img src="images/user/CghzfVWwtayAcRE2ABaIuxjYffE235_C_80_50.jpg" width="80" height="50"
                             alt=""><i></i>
                    </li>
                    <li data-slip-to="1" class="">
                        <img src="images/user/10020t000000iop8dE9E1_C_80_50.jpg" width="80" height="50" alt=""><i></i>
                    </li>
                    <li data-slip-to="2" class="">
                        <img src="images/user/100f0600000015zg903FB_C_80_50.jpg" width="80" height="50" alt=""><i></i>
                    </li>
                    <li data-slip-to="3" class="">
                        <img src="images/user/100e0500000010r3xD538_C_80_50.jpg" width="80" height="50" alt=""><i></i>
                    </li>
                    <li data-slip-to="4" class="current">
                        <img src="images/user/CggYGVZztWeAHWcjADCY2xj_5_8960_C_80_50.jpg" width="80" height="50"
                             alt=""><i></i>
                    </li>
                </ul>
                <div class="alllinkbox" data-inner="">
                    <div data-item="0" class="linkbox" style="display: none;">
                        <a target="_blank" href="http://you.ctrip.com/photos/guilin28/r28-23519528.html"
                           class="imglink"></a>
                        <span class="linkcover"></span>
                        <span class="linkline">
                                    <a href="http://you.ctrip.com/place/guilin28.html">桂林</a>

                                        &nbsp;by&nbsp;
                                            <a href="http://you.ctrip.com/members/0BB6A1CACA194BE48C5FFD74C5B7A869"
                                               target="_blank">克克克里斯</a>
                                </span>
                    </div>
                    <div data-item="1" class="linkbox" style="display: none;">
                        <a target="_blank" href="http://you.ctrip.com/photos/guilin28/r28-272758102.html"
                           class="imglink"></a>
                        <span class="linkcover"></span>
                        <span class="linkline">
                                    <a href="http://you.ctrip.com/place/guilin28.html">桂林</a>

                                        &nbsp;by&nbsp;
                                            <a href="http://you.ctrip.com/members/18A257D4E4424781B611E6EA44FFBEF6"
                                               target="_blank">C_image</a>
                                </span>
                    </div>
                    <div data-item="2" class="linkbox" style="display: none;">
                        <a target="_blank" href="http://you.ctrip.com/photos/guilin28/r28-73805877.html"
                           class="imglink"></a>
                        <span class="linkcover"></span>
                        <span class="linkline">
                                    <a href="http://you.ctrip.com/place/guilin28.html">桂林</a>

                                        &nbsp;by&nbsp;
                                            <a href="http://you.ctrip.com/members/18A257D4E4424781B611E6EA44FFBEF6"
                                               target="_blank">C_image</a>
                                </span>
                    </div>
                    <div data-item="3" class="linkbox" style="display: none;">
                        <a target="_blank" href="http://you.ctrip.com/photos/guilin28/r28-72444498.html"
                           class="imglink"></a>
                        <span class="linkcover"></span>
                        <span class="linkline">
                                    <a href="http://you.ctrip.com/place/guilin28.html">桂林</a>

                                        &nbsp;by&nbsp;
                                            <a href="http://you.ctrip.com/members/18A257D4E4424781B611E6EA44FFBEF6"
                                               target="_blank">C_image</a>
                                </span>
                    </div>
                    <div data-item="4" class="linkbox current" style="display: block;">
                        <a target="_blank" href="http://you.ctrip.com/photos/guilin28/r28-62885216.html"
                           class="imglink"></a>
                        <span class="linkcover"></span>
                        <span class="linkline">
                                    <a href="http://you.ctrip.com/place/guilin28.html">桂林</a>

                                        &nbsp;by&nbsp;
                                            <a href="http://you.ctrip.com/members/18A257D4E4424781B611E6EA44FFBEF6"
                                               target="_blank">C_image</a>
                                </span>
                    </div>
                </div>
                <a href="http://you.ctrip.com/photos/guilin28/r28.html" class="slide_more"
                   target="_blank">查看更多照片&gt;</a>
            </div>
            <!--度假End-->
            <!--poitab切换-->
            <ul id="otherSuggest" class="suggest_poitab cf">
                <li class="current" data-id="#poi_0"><a class="sight" href="javascript:;" data-id="#poi_0"><i
                        class="sight"></i>必游</a></li>
                <li class="" data-id="#poi_2">
                    <a class="restaurant" href="javascript:;" data-id="#poi_2">
                        <i class="restaurant"></i>必吃
                    </a>
                </li>
                <li class="" data-id="#poi_3"><a class="shopping" href="javascript:;" data-id="#poi_3"><i
                        class="shopping"></i>必逛</a></li>

                <li style="display:none">
                    <a class="journey" href="javascript:;" data-id="#poi_5">
                        <i class="journey"></i>周边短途
                    </a>
                </li>

            </ul>
            <div class="card_list">
                <div id="poi_0" style="display: block;">
                    <ul>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/CghzfVWwtayAcRE2ABaIuxjYffE235_C_270_170.jpg"
                                 data-original="https://dimg01.c-ctrip.com/images/fd/tg/g1/M07/7A/98/CghzfVWwtayAcRE2ABaIuxjYffE235_C_270_170.jpg"
                                 style="display: block;">
                        </span>
                            <dl>
                                <dt>
                                    <s>第1名</s>
                                    <i class="sight"></i>
                                    <span class="ellipsis">漓江</span>
                                </dt>
                                <dd>
                                <span class="starlist"><span style="width: 90%;">
                                                       </span></span><span
                                        class="score"><strong>4.6</strong>分 </span><span
                                        class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">小学语文课本有篇“桂林山水甲天下”指的就是游漓江。漓...</dd>

                            </dl>
                            <a href="http://you.ctrip.com/sight/guilin28/2888.html" class="all_link" target="_blank"
                               title="漓江 分数：4.6 点评数：999+"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/100f0600000015zg903FB_C_270_170.jpg"
                                 data-original="https://dimg06.c-ctrip.com/images/100f0600000015zg903FB_C_270_170.jpg"
                                 style="display: block;">
                        </span>
                            <dl>
                                <dt>
                                    <s>第2名</s>
                                    <i class="sight"></i>
                                    <span class="ellipsis">西街</span>
                                </dt>
                                <dd>
                                <span class="starlist"><span style="width: 80%;">
                                                       </span></span><span
                                        class="score"><strong>4.2</strong>分 </span><span
                                        class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">西街是一条有着1400多年历史的老街，沿街的建筑至今保留...</dd>

                            </dl>
                            <a href="http://you.ctrip.com/sight/guilin28/22079.html" class="all_link" target="_blank"
                               title="西街 分数：4.2 点评数：999+"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/CggYHVZztZKAAkONAB7KvIAjXR0912_C_270_170.jpg"
                                 data-original="https://dimg06.c-ctrip.com/images/fd/tg/g4/M08/CC/30/CggYHVZztZKAAkONAB7KvIAjXR0912_C_270_170.jpg"
                                 style="display: block;">
                                <span class="ticket">携程价 <span>¥ <b>60</b> </span></span>
                        </span>
                            <dl>
                                <dt>
                                    <s>第3名</s>
                                    <i class="sight"></i>
                                    <span class="ellipsis">两江四湖</span>
                                </dt>
                                <dd>
                                <span class="starlist"><span style="width: 90%;">
                                                       </span></span><span
                                        class="score"><strong>4.5</strong>分 </span><span
                                        class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">两江四湖包括了桂林市中心区的漓江、桃花江以及杉湖、榕...</dd>

                            </dl>
                            <a href="http://you.ctrip.com/sight/guilin28/5925.html" class="all_link" target="_blank"
                               title="两江四湖 分数：4.5 点评数：999+"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/CghzfVWsoq2AWjQvABZtguNMQn0826_C_270_170.jpg"
                                 data-original="https://dimg03.c-ctrip.com/images/fd/tg/g1/M09/16/9D/CghzfVWsoq2AWjQvABZtguNMQn0826_C_270_170.jpg"
                                 style="display: block;">
                        </span>
                            <dl>
                                <dt>
                                    <s>第4名</s>
                                    <i class="sight"></i>
                                    <span class="ellipsis">遇龙河</span>
                                </dt>
                                <dd>
                                <span class="starlist"><span style="width: 90%;">
                                                       </span></span><span
                                        class="score"><strong>4.5</strong>分 </span><span
                                        class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">遇龙河是漓江在阳朔境内的一条支流，河水清澈如镜，随手...</dd>

                            </dl>
                            <a href="http://you.ctrip.com/sight/guilin28/22081.html" class="all_link" target="_blank"
                               title="遇龙河 分数：4.5 点评数：999+"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/100u070000002rpm8CC4E_C_270_170.jpg"
                                 data-original="https://dimg04.c-ctrip.com/images/100u070000002rpm8CC4E_C_270_170.jpg"
                                 style="display: block;">
                                <span class="ticket">携程价 <span>¥ <b>52</b> </span></span>
                        </span>
                            <s class="ico_list"></s>
                            <dl>
                                <dt>
                                    <s>第5名</s>
                                    <i class="sight"></i>
                                    <span class="ellipsis">象山景区</span>
                                </dt>
                                <dd>
                                <span class="starlist"><span style="width: 90%;">
                                                       </span></span><span
                                        class="score"><strong>4.3</strong>分 </span><span
                                        class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">象山景区位于桂林市中心，景区内的象鼻山山形酷似一头伸...</dd>

                                <dd class="xclistdd"><a target="_blank"
                                                        href="http://top.ctrip.com/2017/sight/zuimeiziran.html"
                                                        title="2017最美自然景区">2017最美自然景区</a></dd>
                            </dl>
                            <a href="http://you.ctrip.com/sight/guilin28/107505.html" class="all_link" target="_blank"
                               title="象山景区 分数：4.3 点评数：999+"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/d97f27e0107044e1a3e992fbb763e027_C_270_170.jpg"
                                 data-original="https://dimg01.c-ctrip.com/images/tg/963/634/210/d97f27e0107044e1a3e992fbb763e027_C_270_170.jpg"
                                 style="display: block;">
                                <span class="ticket">携程价 <span>¥ <b>60</b> </span></span>
                        </span>
                            <dl>
                                <dt>
                                    <s>第6名</s>
                                    <i class="sight"></i>
                                    <span class="ellipsis">银子岩</span>
                                </dt>
                                <dd>
                                <span class="starlist"><span style="width: 90%;">
                                                       </span></span><span
                                        class="score"><strong>4.5</strong>分 </span><span
                                        class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">银子岩是典型的喀斯特地貌，整个溶洞贯穿十二座山峰，汇...</dd>

                            </dl>
                            <a href="http://you.ctrip.com/sight/guilin28/18147.html" class="all_link" target="_blank"
                               title="银子岩 分数：4.5 点评数：999+"></a></li>
                    </ul>
                    <p class="nolinemore">
                        <a href="http://you.ctrip.com/sight/guilin28.html" target="_blank">更多景点<i
                                class="f14_more_arror"></i></a></p>
                </div>


                <div class="undis" id="poi_2" style="display: none;">
                    <ul>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/10060900000041p881C7B_R_220_140.jpg"
                                 data-original="https://dimg06.c-ctrip.com/images/10060900000041p881C7B_R_220_140.jpg">
                        </span>
                            <dl class="foods_spread">
                                <dt>
                                    <i class="restaurant"></i>
                                    <span class="ellipsis">椿记烧鹅(中山店)</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.7</strong>分 </span>
                                    <span class="comment_text">(999+条点评)</span>
                                </dd>
                                <dd class="textdetail">椿记是桂林非常有名的餐馆，这里的菜揉合了湘粤菜系及桂...</dd>
                            </dl>
                            <a href="http://you.ctrip.com/food/guilin28/126233.html" class="all_link" target="_blank"
                               title="椿记烧鹅(中山店) 分数：4.7 点评数：999+"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/100w0v000000jxxuaB59D_R_220_140.jpg"
                                 data-original="https://dimg06.c-ctrip.com/images/100w0v000000jxxuaB59D_R_220_140.jpg">
                        </span>
                            <dl class="foods_spread">
                                <dt>
                                    <i class="restaurant"></i>
                                    <span class="ellipsis">阿甘酒家(中山中路店)</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.3</strong>分 </span>
                                    <span class="comment_text">(506条点评)</span>
                                </dd>
                                <dd class="textdetail">桂林很有名气的当地菜馆，在市内有许多连锁店，饭菜量很...</dd>
                            </dl>
                            <a href="http://you.ctrip.com/food/guilin28/126103.html" class="all_link" target="_blank"
                               title="阿甘酒家(中山中路店) 分数：4.3 点评数：506"></a></li>
                        <li><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/10010y000000mh0m12DBE_R_220_140.jpg"
                                 data-original="https://dimg04.c-ctrip.com/images/10010y000000mh0m12DBE_R_220_140.jpg">
                        </span>
                            <dl class="foods_spread">
                                <dt>
                                    <i class="restaurant"></i>
                                    <span class="ellipsis">MANGO芒果帮(7号店)</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.7</strong>分 </span>
                                    <span class="comment_text">(51条点评)</span>
                                </dd>
                                <dd class="textdetail">位于阳朔的饮品连锁店，所有的饮料都有芒果成分，店内环...</dd>
                            </dl>
                            <a href="http://you.ctrip.com/food/guilin28/5578100.html" class="all_link" target="_blank"
                               title="MANGO芒果帮(7号店) 分数：4.7 点评数：51"></a></li>
                        <li class=""><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/100m0n000000eabdv872B_R_220_140.jpg"
                                 data-original="https://dimg08.c-ctrip.com/images/100m0n000000eabdv872B_R_220_140.jpg">
                        </span>
                            <dl class="foods_spread">
                                <dt>
                                    <i class="restaurant"></i>
                                    <span class="ellipsis">小南国(文明店)</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.5</strong>分 </span>
                                    <span class="comment_text">(631条点评)</span>
                                </dd>
                                <dd class="textdetail">小南国是桂林颇有名气的当地菜馆，这里能吃到比较正宗的...</dd>
                            </dl>
                            <a href="http://you.ctrip.com/food/guilin28/4926084.html" class="all_link" target="_blank"
                               title="小南国(文明店) 分数：4.5 点评数：631"></a></li>
                        <li><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/10070k000000coo0b297D_R_220_140.jpg"
                                 data-original="https://dimg12.c-ctrip.com/images/10070k000000coo0b297D_R_220_140.jpg">
                        </span>
                            <dl class="foods_spread">
                                <dt>
                                    <i class="restaurant"></i>
                                    <span class="ellipsis">岚方螺蛳粉(漓江路店)</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.5</strong>分 </span>
                                    <span class="comment_text">(466条点评)</span>
                                </dd>
                                <dd class="textdetail">一家永远在排队的人气小店，这里的螺蛳粉口味地道，粉的...</dd>
                            </dl>
                            <a href="http://you.ctrip.com/food/guilin28/5577959.html" class="all_link" target="_blank"
                               title="岚方螺蛳粉(漓江路店) 分数：4.5 点评数：466"></a></li>
                        <li><span class="ttd_nopic220">
                            <img width="270" height="170" src="images/user/10010v000000k4wi1B256_R_220_140.jpg"
                                 data-original="https://dimg01.c-ctrip.com/images/10010v000000k4wi1B256_R_220_140.jpg">
                        </span>
                            <dl class="foods_spread">
                                <dt>
                                    <i class="restaurant"></i>
                                    <span class="ellipsis">黄记玉米汁(叠翠路店)</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.3</strong>分 </span>
                                    <span class="comment_text">(56条点评)</span>
                                </dd>
                                <dd class="textdetail">阳朔有名的饮品连锁店之一，这里的金牌玉米汁是用当地新...</dd>
                            </dl>
                            <a href="http://you.ctrip.com/food/guilin28/453327.html" class="all_link" target="_blank"
                               title="黄记玉米汁(叠翠路店) 分数：4.3 点评数：56"></a></li>
                    </ul>
                    <p class="nolinemore">
                        <a href="http://you.ctrip.com/restaurant/guilin28.html" target="_blank">更多美食<i
                                class="f14_more_arror"></i></a></p>
                </div>
                <div class="undis" id="poi_3" style="display: none;">
                    <ul>
                        <li class="">
                        <span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/15e05f74165d4066af963f0be6c4b39a_C_270_170.jpg"
                                 data-original="https://dimg06.c-ctrip.com/images/tg/640/105/106/15e05f74165d4066af963f0be6c4b39a_C_270_170.jpg">
                        </span>
                            <div class="abiconbox" data-id="108714">
                            </div>
                            <dl>
                                <dt>
                                    <s>第1名</s>
                                    <i class="shopping"></i>
                                    <span class="ellipsis">西城步行街</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:80%;">
                                    </span>
                                </span><span class="score"><strong>4.1</strong>分 </span><span class="comment_text">(358条点评)</span>
                                </dd>
                                <dd class="textdetail">
                                    西城步行街有仿古的街面建筑、休闲的花岗岩石路，风格独...
                                </dd>
                            </dl>
                            <a href="http://you.ctrip.com/shopping/guilin28/108714.html" class="all_link"
                               target="_blank" title="西城步行街 分数：4.1 点评数：358"></a>
                        </li>
                        <li class="">
                        <span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/f49e52ab90dc41519573e715c93ab671_C_270_170.jpg"
                                 data-original="https://dimg04.c-ctrip.com/images/tg/706/236/250/f49e52ab90dc41519573e715c93ab671_C_270_170.jpg">
                        </span>
                            <div class="abiconbox" data-id="108721">
                            </div>
                            <dl>
                                <dt>
                                    <s>第2名</s>
                                    <i class="shopping"></i>
                                    <span class="ellipsis">正阳步行街</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:80%;">
                                    </span>
                                </span><span class="score"><strong>4.2</strong>分 </span><span class="comment_text">(170条点评)</span>
                                </dd>
                                <dd class="textdetail">
                                    与中山中路平行，距离不过500米，往东越过中心广场即是...
                                </dd>
                            </dl>
                            <a href="http://you.ctrip.com/shopping/guilin28/108721.html" class="all_link"
                               target="_blank" title="正阳步行街 分数：4.2 点评数：170"></a>
                        </li>
                        <li>
                        <span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/de36b75ae9624992bac44ff3cc1285ff_C_270_170.jpg"
                                 data-original="https://dimg08.c-ctrip.com/images/tg/301/632/212/de36b75ae9624992bac44ff3cc1285ff_C_270_170.jpg">
                        </span>
                            <div class="abiconbox" data-id="108688">
                            </div>
                            <dl>
                                <dt>
                                    <s>第3名</s>
                                    <i class="shopping"></i>
                                    <span class="ellipsis">联达商业购物广场</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.3</strong>分 </span><span class="comment_text">(72条点评)</span>
                                </dd>
                                <dd class="textdetail">
                                    桂林联达商业广场座落于桂林市象山区环城西一路，紧临桂...
                                </dd>
                            </dl>
                            <a href="http://you.ctrip.com/shopping/guilin28/108688.html" class="all_link"
                               target="_blank" title="联达商业购物广场 分数：4.3 点评数：72"></a>
                        </li>
                        <li class="">
                        <span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/dad7b08c0a6b469293347c5cd580263e_C_270_170.jpg"
                                 data-original="https://dimg07.c-ctrip.com/images/tg/085/838/604/dad7b08c0a6b469293347c5cd580263e_C_270_170.jpg">
                        </span>
                            <div class="abiconbox" data-id="108710">
                            </div>
                            <dl>
                                <dt>
                                    <s>第4名</s>
                                    <i class="shopping"></i>
                                    <span class="ellipsis">微笑堂商厦</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:80%;">
                                    </span>
                                </span><span class="score"><strong>4.2</strong>分 </span><span class="comment_text">(78条点评)</span>
                                </dd>
                                <dd class="textdetail">
                                    桂林的老牌商场，位于市中心，购物环境舒适优雅，服饰鞋...
                                </dd>
                            </dl>
                            <a href="http://you.ctrip.com/shopping/guilin28/108710.html" class="all_link"
                               target="_blank" title="微笑堂商厦 分数：4.2 点评数：78"></a>
                        </li>
                        <li class="">
                        <span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/CggYsFc_vMeAXUNJAAHtXa1kbek331_C_270_170.jpg"
                                 data-original="https://dimg07.c-ctrip.com/images/fd/tg/g5/M09/03/3C/CggYsFc_vMeAXUNJAAHtXa1kbek331_C_270_170.jpg">
                        </span>
                            <div class="abiconbox" data-id="1450526">
                            </div>
                            <dl>
                                <dt>
                                    <s>第5名</s>
                                    <i class="shopping"></i>
                                    <span class="ellipsis">桂林万达广场</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:90%;">
                                    </span>
                                </span><span class="score"><strong>4.5</strong>分 </span><span class="comment_text">(51条点评)</span>
                                </dd>
                                <dd class="textdetail">
                                    桂林万达广场于2015年9月12日开业，是全国第124座万达广...
                                </dd>
                            </dl>
                            <a href="http://you.ctrip.com/shopping/guilin28/1450526.html" class="all_link"
                               target="_blank" title="桂林万达广场 分数：4.5 点评数：51"></a>
                        </li>
                        <li>
                        <span class="ttd_nopic220">
                            <img width="270" height="170"
                                 src="images/user/a6da1a79639b455da4244e0b1556fe1a_C_270_170.jpg"
                                 data-original="https://dimg06.c-ctrip.com/images/tg/998/068/621/a6da1a79639b455da4244e0b1556fe1a_C_270_170.jpg">
                        </span>
                            <div class="abiconbox" data-id="108723">
                            </div>
                            <dl>
                                <dt>
                                    <s>第6名</s>
                                    <i class="shopping"></i>
                                    <span class="ellipsis">中心广场</span>
                                </dt>
                                <dd>
                                <span class="starlist">
                                    <span style="width:80%;">
                                    </span>
                                </span><span class="score"><strong>4.2</strong>分 </span><span class="comment_text">(43条点评)</span>
                                </dd>
                                <dd class="textdetail">
                                    位于桂林市中心，这里卖很多东西，价格相较于其他地方较...
                                </dd>
                            </dl>
                            <a href="http://you.ctrip.com/shopping/guilin28/108723.html" class="all_link"
                               target="_blank" title="中心广场 分数：4.2 点评数：43"></a>
                        </li>
                    </ul>
                    <p class="nolinemore">
                        <a href="http://you.ctrip.com/shopping/guilin28.html" target="_blank">更多购物点<i
                                class="f14_more_arror"></i></a>
                    </p>
                </div>


                <div class="undis" id="poi_5" style="display: none;">
                    <div class="gs_list_load"><p><i class="listface"></i>请期待更新！欢迎投稿给我们 <a target="_blank"
                                                                                          href="mailto:support@ctrip.com">support@ctrip.com</a>。
                    </p></div>
                </div>
            </div>
            <!--主题内容 游玩-->
            <div class="wide_eventspic" id="AdMiddleBotton" style="display: none;"></div>
            <div class="normalbox">
                <div class="normaltitle cf">
                    <h1>桂林游记</h1><span class="t_archives"><i></i><a
                        href="http://you.ctrip.com/travels/youyouctripstar10000/1756062.html" target="_blank">什么是优质游记？申请必入！</a></span>
                    <span class="rbox"><a class="b_orange_m" href="http://you.ctrip.com/add-travel/Guide.html"
                                          target="_blank">
                <span><i class="write_journal"></i>写游记</span> </a></span>
                </div>
                <ul class="journaltab cf">
                    <li class=""><a rel="nofollow" href="javascript:void(0)">热门</a>
                        <span class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span>|
                    </li>
                    <li class="current"><a rel="nofollow" href="javascript:void(0)">最新</a>
                        <span class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span>
                    </li>
                </ul>
                <div class="journalslist cf" style="display: none;">


                    <a class="journal-item cf" target="_blank"
                       href="http://you.ctrip.com/travels/guilin28/2060057.html">
                        <div class="iteminner">
                             <span class="item-photo item-nopic">
                                     <span class="pic-tagico-3"></span>
                                 <img style=" display:block;" width="210" height="140"
                                      src="images/user/e57a7e7912d84cc1a084089b995a39a6_C_240_140.jpg"
                                      writing="19419391" alt="">
                             </span>
                            <dl>
                                <dt class="ellipsis">12日深度游桂林——龙脊，资源，桂林，阳朔（信息量真的太大）</dt>
                                <dd class="item-user">9181艾尔娃发表于&nbsp;2014-09-27
                                    <span class="lastreply">
最新回复&nbsp;2018-07-23                                     </span>
                                </dd>
                                <dd class="item-short">每次旅行回来总是会迫不及待地写游记。于我而言，写游记主要是一种延续。一来延续旅行的快乐......</dd>
                                <dd class="item-prac">
                                     <span class="tips_a">
                                        12天
                                        2014-09-09 00:00:00
                                        ，￥4700
                                        ，一个人
                                     </span>
                                    <span class="tips_b">
</span>
                                </dd>

                            </dl>
                            <ul class="item-infor">
                                <li><i title="浏览" class="numview">34.5万</i></li>
                                <li><i title="喜欢" class="want">1065</i></li>
                                <li><i title="回复" class="numreply">197</i></li>
                            </ul>
                        </div>
                    </a>
                    <div class="ttd_pager" data-type="3">
                        <p>1-1052 / 10512篇游记</p>
                        <div class="pager_v1"><a class="prevpage disabled"><i></i>上一页</a><a class="current"
                                                                                            href="http://you.ctrip.com/travels/guilin28/s3-p1.html">1</a><a
                                href="http://you.ctrip.com/travels/guilin28/s3-p2.html">2</a><a
                                href="http://you.ctrip.com/travels/guilin28/s3-p3.html">3</a><a
                                href="http://you.ctrip.com/travels/guilin28/s3-p4.html">4</a><a
                                href="http://you.ctrip.com/travels/guilin28/s3-p5.html">5</a><a class="nextpage"
                                                                                                href="http://you.ctrip.com/travels/guilin28/s3-p2.html">下一页<i></i></a><span>到 <input
                                lt="0" type="text" value=""> 页 / <em class="numpage">1052</em>页</span><a class="gopage"
                                                                                                         href="javascript:;">确定</a>
                        </div>
                    </div>
                </div>
                <div class="journalslist undis" style="display: block;">


                    <a class="journal-item cf" target="_blank"
                       href="http://you.ctrip.com/travels/guangxi100052/3756643.html">
                        <div class="iteminner">
                             <span class="item-photo item-nopic">
                                 <img style=" display:block;" width="210" height="140"
                                      src="images/user/10090z000000mlwju20A1_C_240_140.jpg" writing="299452730" alt="">
                             </span>
                            <dl>
                                <dt class="ellipsis">游记那些事儿~~~活出青春态度</dt>
                                <dd class="item-user">慢悠悠时光发表于&nbsp;2018-12-03
                                    <span class="lastreply">
最新回复&nbsp;2018-12-03                                     </span>
                                </dd>
                                <dd class="item-short">有人曾说过，旅行不是为了抵达目的地，而是为了享受旅途中的种种乐趣。在时间允许情况下，......</dd>
                                <dd class="item-prac">
                                     <span class="tips_a">
                                        5天
                                        2017-11-01 00:00:00
                                        ，￥2500
                                        ，和朋友
                                     </span>
                                    <span class="tips_b">
</span>
                                </dd>

                            </dl>
                            <ul class="item-infor">
                                <li><i title="浏览" class="numview">4087</i></li>
                                <li><i title="喜欢" class="want">23</i></li>
                                <li><i title="回复" class="numreply">10</i></li>
                            </ul>
                        </div>
                    </a>
                    <div class="ttd_pager" data-type="2">
                        <p>1-1052 / 10512篇游记</p>
                        <div class="pager_v1"><a class="prevpage disabled"><i></i>上一页</a><a class="current"
                                                                                            href="http://you.ctrip.com/travels/guilin28/s2-p1.html">1</a><a
                                href="http://you.ctrip.com/travels/guilin28/s2-p2.html">2</a><a
                                href="http://you.ctrip.com/travels/guilin28/s2-p3.html">3</a><a
                                href="http://you.ctrip.com/travels/guilin28/s2-p4.html">4</a><a
                                href="http://you.ctrip.com/travels/guilin28/s2-p5.html">5</a><a class="nextpage"
                                                                                                href="http://you.ctrip.com/travels/guilin28/s2-p2.html">下一页<i></i></a><span>到 <input
                                lt="0" type="text" value=""> 页 / <em class="numpage">1052</em>页</span><a class="gopage"
                                                                                                         href="javascript:;">确定</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--美食弹出层-->
    <div class="gsn-layer food_popbox" id="foodPopbox" style="display: none;"><a href="javascript:$.popupbox.close();"
                                                                                 class="close"></a>
        <!--轮播效果-统一为线上首页渐隐展现形式-->
        <div class="carousel" id="foodCarousel">
            <ol class="carousel-indicators" style="margin-left: 0px; display: block;">
            </ol>
            <div class="carousel-inner">
            </div>
            <a data-slide="prev" href="http://you.ctrip.com/place/guilin28.html#foodCarousel"
               class="carousel-control left">‹</a> <a data-slide="next"
                                                      href="http://you.ctrip.com/place/guilin28.html#foodCarousel"
                                                      class="carousel-control right">›</a></div>
        <!--更新结构-->
        <h3 class="boxtitle">
            <span class="f_left">
                <!--<strong>蔬菜饼</strong>东南亚料理-->
            </span>
            <span class="f_right">
                <a rel="nofollow" href="javascript:;" class="icon_slike">
                    <i></i>
                    <span></span>
                </a>
            </span>
        </h3>
        <ul class="toplinedl">
            <li>
                <!--香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼香港迪士尼乐园（Hong Kong Disneyland）是全球第五个迪士尼乐园模式兴建、迪士尼全球的第十一个主题乐园，及首个根据加州迪士尼-->
            </li>
            <li class="topline">
                <strong>相关目的地：</strong>
            </li>
            <li class="ellipsis">
                <!--<a href="#">香港迪士尼</a>、<a href="#">香港迪士尼</a>、<a href="#">新加坡</a>-->
            </li>
        </ul>
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

    var CarouselSlide = function (b, a) {
        var c = $(b);
        this.$element = c;
        this.options = a;
        var d = this, e = c.find("[data-indicators]"), g = a.eventType;
        e.find("[data-slip-to]").bind(g, function () {
            d.slide($(this).index())
        });
        this.options.interval && (d.cycle(), e.add(c.find("[data-inner]")).on("mouseenter", $.proxy(this.pause, this)).on("mouseleave", $.proxy(this.cycle, this)))
    };

    CarouselSlide.prototype = {
        cycle: function (b) {
            function a() {
                c.slide(e)
            }

            b || (this.paused = !1);
            this.cycleTimer && clearInterval(this.cycleTimer);
            var c = this;
            b = this.$element.find("[data-indicators]:visible").find("[data-slip-to]");
            var d = b.length, e = b.siblings(".current").index(), e = e === d - 1 ? 0 : ++e;
            this.options.interval && !this.paused && (this.cycleTimer = setInterval(a, this.options.interval));
            return this
        }, pause: function (b) {
            b || (this.paused = !0);
            this.cycle(!0);
            clearInterval(this.cycleTimer);
            this.cycleTimer = null;
            return this
        },
        slide: function (b) {
            var a = this.$element.find("[data-indicators]:visible"), c = this.$element.find("[data-inner]"),
                d = a.find("[data-slip-to]").eq(b), e = this.cycleTimer;
            if (!d.hasClass("current")) return e && this.pause(), c.each(function () {
                var c = $(this), e = c.find("[data-item]").eq(b), h = c.find(".current");
                0 !== e.length && 0 !== d.length && (a.find(".current").removeClass("current"), d.addClass("current"), h.stop(!0, !0), e.stop(!0, !0), h.fadeOut({
                    duration: 400,
                    easing: "linear",
                    complete: function () {
                        h.removeClass("current")
                    }
                }),
                    e.fadeIn({
                        duration: 400, easing: "linear", complete: function () {
                            c.find(".current").css({display: "none"});
                            c.find(".current").removeClass("current");
                            e.addClass("current")
                        }
                    }))
            }), e && this.cycle(), this
        }
    };
    $.fn.carouselSlide = function (b) {
        $.fn.carouselSlide.defaults = {eventType: "mouseover", interval: 3E3};
        return this.each(function () {
            b = $.extend({}, $.fn.carouselSlide.defaults, b);
            new CarouselSlide(this, b)
        })
    };

    function e() {
        if ($(".suggest_poitab li[data-id='#poi_1']").hasClass("current")) {
            var j = [];
            var g = 0;
            for (; g < mapCoords.length; g++) {
                j.push(new BMap.Point(mapCoords[g].Lng, mapCoords[g].Lat))
            }
            var k = staticMap.getViewport(j);
            var h = k.zoom;
            var f = k.center;
            staticMap.centerAndZoom(f, h);
            staticMap.setZoom()
        }
    }

    $(function () {

        /*
            轮播特效
        */
        $(".slide_show").carouselSlide();

        /*
            必吃，必游，必逛图片特效
        */
        $(".card_list").on("mouseenter", ".all_link", function () {
            $(this).parent().addClass("current")
        }).on("mouseleave", ".all_link", function () {
            $(this).parent().removeClass("current")
        });

        /*
            酒店榜单推荐特效
        */
        $(".piclist").hover(function () {
            $(this).addClass("sinhoverbg")
        }, function () {
            $(this).removeClass("sinhoverbg")
        });

        $(".suggest_poitab li").mouseenter(function () {
            $(this).siblings(".current").removeClass("current");
            $(this).addClass("current");
            $(".card_list").children().hide();
            var f = $(this).attr("data-id");
            $(f).show();
            setTimeout(e, 300)
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