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
    <title>${cityVo.cityName}${spotVo.spotName}攻略,${cityVo.cityName}${spotVo.spotName}门票/游玩攻略/地址/图片/门票价格</title>
    <meta name="keywords" content="桂林漓江,桂林漓江门票,漓江攻略,漓江地址,漓江图片,漓江门票价格">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/fed.v2.0.css">
    <link charset="utf-8" type="text/css" rel="stylesheet" href="css/user/sight_detail.v2.0.css">
    <link href="css/user/login_popup_new.css" rel="stylesheet" type="text/css">
    <link href="css/user/bdsstyle.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="css/user/pc_flaot.css">
</head>
<body style="position: relative;">

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
    <!--详情页样式-->
    <div class="dest_toptitle detail_tt">
        <div class="cf">
            <div class="f_left">
                <h1><a href="http://you.ctrip.com/sight/guilin28/2888.html">${spotVo.spotName}</a></h1>
                <p>
                    &nbsp;
                </p>
            </div>
            <div class="f_right">
                <ul>
                    <li class="des_icon_been" id="wentClick">
                        <a href="javascript:void(0)" data-cat="2888" dataresource-cat="2888" data_type="Sight"
                           class="a_popup_login" rel="nofollow" id="wentClickID"></a>
                        <p><span id="spanwentId" class="textcolor">去过</span><span><em
                                id="emWentValueID">15199</em></span></p>
                    </li>
                    <li class="des_icon_want" id="wantClick">
                        <a href="javascript:void(0)" rel="nofollow" data-cat="2888" dataresource-cat="2888"
                           data_type="Sight" class="a_popup_login" id="wantClickID"></a>
                        <p><span id="spanwantId" class="textcolor">想去</span><span><em
                                id="emWantValueID">15501</em></span></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="ttd2_background">
    <div class="content cf dest_details">
        <div class="des_wide f_left">
            <div class="detailtop cf normalbox">
                <!--轮播效果-统一为线上首页渐隐展现形式-->
                <div class="carousel " id="detailCarousel">
                    <div class="carousel-inner">
                        <div class="item" style="display: block;">
                            <img width="350" height="230"
                                 src="${spotVo.headPicUrl}">
                        </div>
                    </div>
                </div>
                <!-- todo 点评信息 -->
                <ul class="detailtop_r_info">
                    <li><span class="score"><b>${spotVo.score}</b>分</span></li>
                    <li>
                        <span class="comment_ring_16"><span style="width: ${spotVo.scoreCss}%"></span></span>
                        <span class="pl_num">
                        <dfn id="hrefyyDp"><span class="f_orange">${spotVo.totalComment}</span>条点评</dfn>
                    <span>|</span><span class="c_tipswrap">
                    <a href="http://you.ctrip.com/dianping/edit/75898.html"
                       class="b_orange_m"><span><i></i>写点评</span></a>
                    </span>
                </span>
                    </li>
                    <li class="infotext">你也游览过这个景点吗？<br>快来留下你精彩的点评吧～不仅可以帮助到万千游友，首条点评额外奖励50积分<p></p></li>
                </ul>
            </div>

            <div class="normalbox boxsight_v1">
                <div class="detailcon bright_spot">
                    <span class="subscript"></span>
                    <ul>
                        <li><i>•</i>${spotVo.brightPoint}</li>
                    </ul>
                </div>
                <!--概览-->
                <div class="detailcon detailbox_dashed">
                    <h2>
                        <a id="jieshao" target="_blank"></a>
                    </h2>
                    <div class="toggle_s" style="display: block;">
                        <div itemprop="description" class="text_style">
                            ${spotVo.introduce}
                        </div>
                    </div>
                </div>
                <!--START 新增实用贴士-->
                <div class="detailcon detailbox_dashed">
                    <h2><a id="tieshi" target="_blank"></a></h2>
                    <div class="toggle_s" style="display: block;">
                        <div itemprop="description" class="text_style">
                            ${spotVo.specialHint}
                        </div>
                    </div>
                </div>
                <!--END 新增实用贴士-->
            </div>

            <div class="normalbox boxcomment_v1" id="sightcommentbox1">
                <div class="comment_wrap">
                    <div class="comment_detail cf">
                        <div id="weiboComment" class="c_detail_title cf">
                            <ul>
                                <li href="#weiboCom1" class="active"><h2><a
                                        href="http://you.ctrip.com/sight/guilin28/2888-dianping.html">游友点评</a><span>(<span
                                        class="f_orange">10779</span>条点评)</span></h2><span
                                        class="f_line weibocommenthidden" style="display:none;"></span></li>
                                <li href="#weiboCom2" style="display:none;" class="weibocommenthidden"><h2><a
                                        href="javascript:;">微博点评</a><span>(<span id="weibocommentcounttext"
                                                                                 class="f_orange">0</span>条点评)</span>
                                </h2></li>
                            </ul>

                            <span id="yyDianping" class="c_btnwrap"><a class="b_orange_m f_right"
                                                                       href="http://you.ctrip.com/dianping/edit/75898.html"><span><i></i>写点评</span></a><i
                                    class="icon_c_tips">立赚50-200积分<em class="c_arrow"></em></i></span>
                        </div>
                    </div>
                    <div class="weibocombox">
                        <div class="weiboitem active" id="weiboCom1" style="display: block;">
                            <div class="comment_count cf">
                                <dl class="comment_show">
                                    <dt><span class="comment_ring_25"><span style="width:90%;">
                                                          </span></span><span class="score">4.6<span>/5分</span></span>
                                    </dt>
                                    <dd>
                                        <span class="l_title">景 色</span><span class="starlist"><span
                                            style="width:90%;"></span></span>
                                        <span class="score">4.7</span></dd>
                                    <dd>
                                        <span class="l_title">趣 味</span><span class="starlist"><span
                                            style="width:90%;"></span></span>
                                        <span class="score">4.4</span></dd>
                                    <dd>
                                        <span class="l_title">性价比</span><span class="starlist"><span
                                            style="width:90%;"></span></span>
                                        <span class="score">4.3</span></dd>
                                </dl>
                                <ul class="cate_count">
                                    <li data-id="3"><a
                                            href="http://you.ctrip.com/sight/guilin28/2888-dianpingCategory3.html"><span
                                            class="ct_count">149条</span> <span class="bgnormal">情侣出游</span><s></s></a>
                                    </li>
                                    <li data-id="4"><a
                                            href="http://you.ctrip.com/sight/guilin28/2888-dianpingCategory4.html"><span
                                            class="ct_count">475条</span> <span class="bgnormal">家庭亲子</span><s></s> </a>
                                    </li>
                                    <li data-id="2"><a
                                            href="http://you.ctrip.com/sight/guilin28/2888-dianpingCategory2.html"><span
                                            class="ct_count">279条</span> <span class="bgnormal">朋友出游</span><s></s> </a>
                                    </li>
                                    <li data-id="1"><a
                                            href="http://you.ctrip.com/sight/guilin28/2888-dianpingCategory1.html"><span
                                            class="ct_count">81条</span> <span class="bgnormal">商务旅行</span><s></s> </a>
                                    </li>
                                    <li data-id="5"><a
                                            href="http://you.ctrip.com/sight/guilin28/2888-dianpingCategory5.html"><span
                                            class="ct_count">83条</span> <span class="bgnormal">单独旅行</span><s></s> </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="detailtab cf">
                                <ul class="tablist">
                                    <li class="current"><a href="javascript:;"
                                                           data-id="0">全部<span>(10779)</span></a><span
                                            class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span></li>
                                    <li><a href="javascript:;" data-id="5">很好<span>(7501)</span></a><span
                                            class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span></li>
                                    <li><a href="javascript:;" data-id="4">好<span>(2383)</span></a><span
                                            class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span></li>
                                    <li><a href="javascript:;" data-id="3">一般<span>(587)</span></a><span
                                            class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span></li>
                                    <li><a href="javascript:;" data-id="2">差<span>(119)</span></a><span
                                            class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span></li>
                                    <li><a href="javascript:;" data-id="1">很差<span>(189)</span></a><span
                                            class="poptip-arrow poptip-arrow-bottom"><em>◆</em></span></li>
                                </ul>
                                <div id="selectSort" class="gsn-select">
                                    <div class="select-txt">智能排序</div>
                                    <ul style="display: none;" class="selectlist undis">
                                        <li><a href="javascript:orderBy(3);">智能排序</a></li>
                                        <li><a href="javascript:orderBy(2);">有用数排序</a></li>
                                        <li><a href="javascript:orderBy(1);">按时间排序</a></li>
                                    </ul>
                                    <span class="arrow"></span>
                                </div>
                            </div>
                            <div id="sightcommentbox" class="comment_ctrip">
                                <div itemtype="http://schema.org/Review" itemscope="" itemprop="review"
                                     class="comment_single">
                                    <!--开始标注一条评论-->
                                    <div class="userimg">
                                        <a href="http://you.ctrip.com/members/10681F78B3A347DC81BADD65C8273075"
                                           target="_blank">
                                            <img src="images/user/a865fe5f5465407d8befd5dc487a8554_C_180_180.jpg"
                                                 width="60" height="60"></a>
                                        <span class="ellipsis"><a itemprop="author"
                                                                  href="http://you.ctrip.com/members/10681F78B3A347DC81BADD65C8273075"
                                                                  title="M50****634"
                                                                  target="_blank">M50****634</a></span>
                                    </div>
                                    <ul>
                                        <li class="title cf">
                                <span class="f_left"><span itemtype="http://schema.org/Rating" itemscope=""
                                                           itemprop="reviewRating" class="starlist">
                                                         <!--标注单条评论评分-->
                                                         <meta content="4.0" itemprop="ratingValue">
                                    <!--调用星级个数,新增meta-->
                                                         <span style="width:100%;">
                                                             <!--20%一星-->
                                                         </span></span>
                                            <span class="sblockline">
                                                    景色：4 
                                                    趣味：5 
                                                    性价比：5 
                                                &nbsp;
                                            </span>
                                </span>
                                            <span class="youcate">
                                </span>
                                        </li>
                                        <li itemprop="description" class="main_con"><span class="heightbox">都说“桂林山水甲天下，阳朔堪称甲桂林”，名副其实啊。来阳朔带好防晒防叮咬的用品。这次去桂林是公司组织一起去的（什么攻略都没做，今天提的方案第三天就决定去了，真是说旅游就旅游的节奏，我喜欢）。我们是选择的自游行，两天一夜，主要玩的景点是在阳朔，一下高铁立马奔向了目的地，找了当地的青年旅舍，当地的阿姨好热情哦！想去游玩可以租单车，一辆车大概10-30元吧。划竹筏不好玩，不是人工划的，一人100元，死贵滴。中途筏船会靠岸休息会，拍拍照片，如果去到那里的朋友骑马有当地的摄影师帮你拍照片一定要去选哦，当时我们就是嫌贵了跟照片无缘了一直后悔呢。筏船结束后一定要去吃正宗的桂林米粉。</span>
                                            <p class="commenttoggle">
                                                <a href="javascript:;">展开更多</a></p>
                                        </li>
                                        <li class="comment_piclist cf">
                                            <a href="https://youimg1.c-ctrip.com/target/100e0g000000859vrBA1C.jpg"
                                               data-commentimg="https://dimg08.c-ctrip.com/images/100e0g000000859vrBA1C_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100e0g000000859vrBA1C_C_90_90.jpg"
                                                     data-thumburl="https://dimg08.c-ctrip.com/images/100e0g000000859vrBA1C_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10070g00000085au0F745.jpg"
                                               data-commentimg="https://dimg01.c-ctrip.com/images/10070g00000085au0F745_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10070g00000085au0F745_C_90_90.jpg"
                                                     data-thumburl="https://dimg01.c-ctrip.com/images/10070g00000085au0F745_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100r0g00000085af14A9F.jpg"
                                               data-commentimg="https://dimg03.c-ctrip.com/images/100r0g00000085af14A9F_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100r0g00000085af14A9F_C_90_90.jpg"
                                                     data-thumburl="https://dimg03.c-ctrip.com/images/100r0g00000085af14A9F_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100f0g000000858k512C4.jpg"
                                               data-commentimg="https://dimg04.c-ctrip.com/images/100f0g000000858k512C4_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100f0g000000858k512C4_C_90_90.jpg"
                                                     data-thumburl="https://dimg04.c-ctrip.com/images/100f0g000000858k512C4_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10080g000000858n447C5.jpg"
                                               data-commentimg="https://dimg02.c-ctrip.com/images/10080g000000858n447C5_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10080g000000858n447C5_C_90_90.jpg"
                                                     data-thumburl="https://dimg02.c-ctrip.com/images/10080g000000858n447C5_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100s0g00000085ahj0D04.jpg"
                                               data-commentimg="https://dimg02.c-ctrip.com/images/100s0g00000085ahj0D04_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100s0g00000085ahj0D04_C_90_90.jpg"
                                                     data-thumburl="https://dimg02.c-ctrip.com/images/100s0g00000085ahj0D04_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100g0g000000858hd89B6.jpg"
                                               data-commentimg="https://dimg08.c-ctrip.com/images/100g0g000000858hd89B6_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100g0g000000858hd89B6_C_90_90.jpg"
                                                     data-thumburl="https://dimg08.c-ctrip.com/images/100g0g000000858hd89B6_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10090g00000085pd1E33D.jpg"
                                               data-commentimg="https://dimg01.c-ctrip.com/images/10090g00000085pd1E33D_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10090g00000085pd1E33D_C_90_90.jpg"
                                                     data-thumburl="https://dimg01.c-ctrip.com/images/10090g00000085pd1E33D_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100t0g00000085a8t6332.jpg"
                                               data-commentimg="https://dimg03.c-ctrip.com/images/100t0g00000085a8t6332_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100t0g00000085a8t6332_C_90_90.jpg"
                                                     data-thumburl="https://dimg03.c-ctrip.com/images/100t0g00000085a8t6332_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100h0g00000085pdu391F.jpg"
                                               data-commentimg="https://dimg02.c-ctrip.com/images/100h0g00000085pdu391F_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100h0g00000085pdu391F_C_90_90.jpg"
                                                     data-thumburl="https://dimg02.c-ctrip.com/images/100h0g00000085pdu391F_C_90_90.jpg"></a>
                                        </li>
                                        <li class="from_link">
                                <span class="f_left">
<a title="通过携程旅行手机客户端发表" href="http://you.ctrip.com/app"><i class="icon_app"></i></a>                                    <span
                                        class="time_line"><em itemprop="datePublished">2017-05-20</em></span>
                                </span>
                                            <span class="f_right">
                                    <a style="display: none;" target="_blank"
                                       href="http://you.ctrip.com/sight/guilin28/2888-dianping107366813.html"
                                       data-id="107366813" class="gsn_btn_detail">详情</a>
                                    <a class="gsn_btn_report  a_popup_login " href="javascript:;" data-id="87169920"
                                       data-date="2017-05-20" data-type="3" style="display: none;">举报</a>
                                    <span class="useful"><a id="usefultodo" data-clicked="false" data-id="107366813"
                                                            class=" a_popup_login "
                                                            href="javascript:;">有用</a> （<em>233</em>）</span>
                                </span>
                                        </li>

                                    </ul>
                                </div>

                                <div itemtype="http://schema.org/Review" itemscope="" itemprop="review"
                                     class="comment_single">
                                    <!--开始标注一条评论-->
                                    <div class="userimg">
                                        <a href="http://you.ctrip.com/members/722B1E01C9A441B4B860F5352354DF48"
                                           target="_blank">
                                            <img src="images/user/4b29803af6c44da7a2193587e40aa2f1_C_180_180.jpg"
                                                 width="60" height="60"></a>
                                        <span class="ellipsis"><a itemprop="author"
                                                                  href="http://you.ctrip.com/members/722B1E01C9A441B4B860F5352354DF48"
                                                                  title="201****066"
                                                                  target="_blank">201****066</a></span>
                                    </div>
                                    <ul>
                                        <li class="title cf">
                                <span class="f_left"><span itemtype="http://schema.org/Rating" itemscope=""
                                                           itemprop="reviewRating" class="starlist">
                                                         <!--标注单条评论评分-->
                                                         <meta content="4.0" itemprop="ratingValue">
                                    <!--调用星级个数,新增meta-->
                                                         <span style="width:100%;">
                                                             <!--20%一星-->
                                                         </span></span>
                                            <span class="sblockline">
                                                    景色：5 
                                                    趣味：5 
                                                    性价比：5 
                                                &nbsp;
                                            </span>
                                </span>
                                            <span class="youcate">
                                </span>
                                        </li>
                                        <li itemprop="description" class="main_con"><span class="heightbox">来桂林一定要坐豪华船游漓江，要不桂林就白来了，在船上漓江的美景一览无遗，太美了，拿起手机随便拍，中国水墨画的感觉，我无意间拍到了一张佛光普照片，真是太幸运了。关键是山头还有一个发光的圆点，别的照片都没有。我们坐的3星船，已经很舒服了，提醒大家如果直接去景点买票价格是270，一层还是二层的位置是随机出的，根本二层就不用加价，船上的餐比飞机上好吃，能吃饱，茶水是免费的，也有单点的菜，个人觉得没必要，不要把时间浪费在吃饭上，因为景色太美不能浪费。但是旅行社330的票是包括来回的车费，所以省心省力省钱，定携程的票去的，全程服务很满意，建议大家到了阳朔住2天，那的景色和桂林还是有区别的，如果当天回桂林就太疲劳了，晚上的路也不好走，到处修路，大车也多。阳朔的大师傅啤酒鱼到处都是，问了一下都是一个老板的，2-3人套餐98元，量太大了，觉得4人以上吃都没问题，味道也不错。值得吃。</span>
                                            <p class="commenttoggle">
                                                <a href="javascript:;">展开更多</a></p>
                                        </li>
                                        <li class="comment_piclist cf">
                                            <a href="https://youimg1.c-ctrip.com/target/100t0b00000059e1v36FE.jpg"
                                               data-commentimg="https://dimg07.c-ctrip.com/images/100t0b00000059e1v36FE_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100t0b00000059e1v36FE_C_90_90.jpg"
                                                     data-thumburl="https://dimg07.c-ctrip.com/images/100t0b00000059e1v36FE_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10080b00000059dk65852.jpg"
                                               data-commentimg="https://dimg07.c-ctrip.com/images/10080b00000059dk65852_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10080b00000059dk65852_C_90_90.jpg"
                                                     data-thumburl="https://dimg07.c-ctrip.com/images/10080b00000059dk65852_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100n0b00000059dk88168.jpg"
                                               data-commentimg="https://dimg08.c-ctrip.com/images/100n0b00000059dk88168_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100n0b00000059dk88168_C_90_90.jpg"
                                                     data-thumburl="https://dimg08.c-ctrip.com/images/100n0b00000059dk88168_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100u0b00000059dog32C3.jpg"
                                               data-commentimg="https://dimg07.c-ctrip.com/images/100u0b00000059dog32C3_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100u0b00000059dog32C3_C_90_90.jpg"
                                                     data-thumburl="https://dimg07.c-ctrip.com/images/100u0b00000059dog32C3_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10090b00000059d8g9148.jpg"
                                               data-commentimg="https://dimg08.c-ctrip.com/images/10090b00000059d8g9148_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10090b00000059d8g9148_C_90_90.jpg"
                                                     data-thumburl="https://dimg08.c-ctrip.com/images/10090b00000059d8g9148_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100o0b00000059dkxEAF7.jpg"
                                               data-commentimg="https://dimg07.c-ctrip.com/images/100o0b00000059dkxEAF7_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100o0b00000059dkxEAF7_C_90_90.jpg"
                                                     data-thumburl="https://dimg07.c-ctrip.com/images/100o0b00000059dkxEAF7_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100w0b00000059duxE6F0.jpg"
                                               data-commentimg="https://dimg02.c-ctrip.com/images/100w0b00000059duxE6F0_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100w0b00000059duxE6F0_C_90_90.jpg"
                                                     data-thumburl="https://dimg02.c-ctrip.com/images/100w0b00000059duxE6F0_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100a0b00000059e9lA8ED.jpg"
                                               data-commentimg="https://dimg07.c-ctrip.com/images/100a0b00000059e9lA8ED_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100a0b00000059e9lA8ED_C_90_90.jpg"
                                                     data-thumburl="https://dimg07.c-ctrip.com/images/100a0b00000059e9lA8ED_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100p0b00000059dltCC2B.jpg"
                                               data-commentimg="https://dimg03.c-ctrip.com/images/100p0b00000059dltCC2B_C_10000_560.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100p0b00000059dltCC2B_C_90_90.jpg"
                                                     data-thumburl="https://dimg03.c-ctrip.com/images/100p0b00000059dltCC2B_C_90_90.jpg"></a>
                                        </li>
                                        <li class="from_link">
                                <span class="f_left">
<a title="通过携程旅行手机客户端发表" href="http://you.ctrip.com/app"><i class="icon_app"></i></a>                                    <span
                                        class="time_line"><em itemprop="datePublished">2016-12-05</em></span>
                                </span>
                                            <span class="f_right">
                                    <a style="display: none;" target="_blank"
                                       href="http://you.ctrip.com/sight/guilin28/2888-dianping92652815.html"
                                       data-id="92652815" class="gsn_btn_detail">详情</a>
                                    <a class="gsn_btn_report  a_popup_login " href="javascript:;" data-id="15638272"
                                       data-date="2016-12-05" data-type="3" style="display: none;">举报</a>
                                    <span class="useful"><a id="usefultodo" data-clicked="false" data-id="92652815"
                                                            class=" a_popup_login "
                                                            href="javascript:;">有用</a> （<em>113</em>）</span>
                                </span>
                                        </li>

                                    </ul>
                                </div>
                                <div itemtype="http://schema.org/Review" itemscope="" itemprop="review"
                                     class="comment_single">
                                    <!--开始标注一条评论-->
                                    <div class="userimg">
                                        <a href="http://you.ctrip.com/members/1002DDDA46CF42E3922E084DA59B9478"
                                           target="_blank">
                                            <img src="images/user/d3e07aeb8a1f4ad08aa847e6e9538e9d_C_180_180.jpg"
                                                 width="60" height="60"></a>
                                        <span class="ellipsis"><a itemprop="author"
                                                                  href="http://you.ctrip.com/members/1002DDDA46CF42E3922E084DA59B9478"
                                                                  title="AraSong" target="_blank">AraSong</a></span>
                                    </div>
                                    <ul>
                                        <li class="title cf">
                                <span class="f_left"><span itemtype="http://schema.org/Rating" itemscope=""
                                                           itemprop="reviewRating" class="starlist">
                                                         <!--标注单条评论评分-->
                                                         <meta content="4.0" itemprop="ratingValue">
                                    <!--调用星级个数,新增meta-->
                                                         <span style="width:100%;">
                                                             <!--20%一星-->
                                                         </span></span>
                                            <span class="sblockline">
                                                    景色：5 
                                                    趣味：5 
                                                    性价比：5 
                                                &nbsp;
                                            </span>
                                </span>
                                            <span class="youcate">
                                </span>
                                        </li>
                                        <li itemprop="description" class="main_con"><span class="heightbox">虽然漓江的漂流已经不是筏工撑筏，电动的马达声音会有些嘈杂，但漂在水面上近距离观赏漓江画卷仍然让人流连……我的行程安排的比较悠闲，选择住在了恬静的兴坪，所以我的漓江线路是从兴坪码头上竹筏的，一个人出游，包了整支筏子，因为筏子都是4人筏，所以要补3个空位费，可是还是很值得的，一个人可以安静的独享一只筏子，筏工还是很好的，你愿意问筏工会给你介绍漂流所见的每个可爱的山峰，它们都有自己的名字和故事，仔细端详似有其中意味。途中经过九马画山时可以下筏拍摄鱼鹰，戴上斗笠，俨然自己变身渔夫，筏工也不会太催促你，或许是我选择的时间是黄昏的最后一班筏，出于两个目的，一是人少哇，可以独自享受整个漓江江面，还是很赞的；再者可以同时欣赏到白天和黄昏两个光线下的漓江，筏子都是往返的，这样出发时是水雾漓江，返回时则是静谧黄昏下的漓江，美美的感受……</span>
                                            <p class="commenttoggle">
                                                <a href="javascript:;">展开更多</a></p>
                                        </li>
                                        <li class="comment_piclist cf">
                                            <a href="https://youimg1.c-ctrip.com/target/100f0a0000004d76m2545.jpg"
                                               data-commentimg="https://dimg08.c-ctrip.com/images/100f0a0000004d76m2545_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100f0a0000004d76m2545_C_90_90.jpg"
                                                     data-thumburl="https://dimg08.c-ctrip.com/images/100f0a0000004d76m2545_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100f0a0000004d76n14E8.jpg"
                                               data-commentimg="https://dimg04.c-ctrip.com/images/100f0a0000004d76n14E8_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100f0a0000004d76n14E8_C_90_90.jpg"
                                                     data-thumburl="https://dimg04.c-ctrip.com/images/100f0a0000004d76n14E8_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100a0a0000004d7h0D932.jpg"
                                               data-commentimg="https://dimg05.c-ctrip.com/images/100a0a0000004d7h0D932_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100a0a0000004d7h0D932_C_90_90.jpg"
                                                     data-thumburl="https://dimg05.c-ctrip.com/images/100a0a0000004d7h0D932_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100c0a0000004d75m56FF.jpg"
                                               data-commentimg="https://dimg01.c-ctrip.com/images/100c0a0000004d75m56FF_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100c0a0000004d75m56FF_C_90_90.jpg"
                                                     data-thumburl="https://dimg01.c-ctrip.com/images/100c0a0000004d75m56FF_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100d0a0000004d74bA4B1.jpg"
                                               data-commentimg="https://dimg03.c-ctrip.com/images/100d0a0000004d74bA4B1_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100d0a0000004d74bA4B1_C_90_90.jpg"
                                                     data-thumburl="https://dimg03.c-ctrip.com/images/100d0a0000004d74bA4B1_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100g0a0000004d71b42F1.jpg"
                                               data-commentimg="https://dimg03.c-ctrip.com/images/100g0a0000004d71b42F1_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100g0a0000004d71b42F1_C_90_90.jpg"
                                                     data-thumburl="https://dimg03.c-ctrip.com/images/100g0a0000004d71b42F1_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10070a0000004d7bt21A1.jpg"
                                               data-commentimg="https://dimg05.c-ctrip.com/images/10070a0000004d7bt21A1_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10070a0000004d7bt21A1_C_90_90.jpg"
                                                     data-thumburl="https://dimg05.c-ctrip.com/images/10070a0000004d7bt21A1_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/100g0a0000004d71c5312.jpg"
                                               data-commentimg="https://dimg03.c-ctrip.com/images/100g0a0000004d71c5312_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/100g0a0000004d71c5312_C_90_90.jpg"
                                                     data-thumburl="https://dimg03.c-ctrip.com/images/100g0a0000004d71c5312_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10080a0000004d77k980E.jpg"
                                               data-commentimg="https://dimg04.c-ctrip.com/images/10080a0000004d77k980E_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10080a0000004d77k980E_C_90_90.jpg"
                                                     data-thumburl="https://dimg04.c-ctrip.com/images/10080a0000004d77k980E_C_90_90.jpg"></a>
                                            <a href="https://youimg1.c-ctrip.com/target/10090a0000004d74t842A.jpg"
                                               data-commentimg="https://dimg05.c-ctrip.com/images/10090a0000004d74t842A_C_560_10000.jpg"
                                               target="_blank">
                                                <img class="ttd_nopic84"
                                                     src="images/user/10090a0000004d74t842A_C_90_90.jpg"
                                                     data-thumburl="https://dimg05.c-ctrip.com/images/10090a0000004d74t842A_C_90_90.jpg"></a>
                                        </li>
                                        <li class="from_link">
                                <span class="f_left">
<a title="通过携程旅行手机客户端发表" href="http://you.ctrip.com/app"><i class="icon_app"></i></a>                                    <span
                                        class="time_line"><em itemprop="datePublished">2016-11-02</em></span>
                                </span>
                                            <span class="f_right">
                                    <a style="display: none;" target="_blank"
                                       href="http://you.ctrip.com/sight/guilin28/2888-dianping90989329.html"
                                       data-id="90989329" class="gsn_btn_detail">详情</a>
                                    <a class="gsn_btn_report  a_popup_login " href="javascript:;" data-id="17416387"
                                       data-date="2016-11-02" data-type="3" style="display: none;">举报</a>
                                    <span class="useful"><a id="usefultodo" data-clicked="false" data-id="90989329"
                                                            class=" a_popup_login "
                                                            href="javascript:;">有用</a> （<em>277</em>）</span>
                                </span>
                                        </li>

                                    </ul>
                                </div>
                                <div class="ttd_pager cf"><p>1-10 / 10782条点评</p>
                                    <div class="pager_v1"><a class="prevpage disabled">上一页</a><a class="current">1</a><a
                                            href="javascript:GoCommentPage(2)">2</a><a
                                            href="javascript:GoCommentPage(3)">3</a><a
                                            href="javascript:GoCommentPage(4)">4</a><a
                                            href="javascript:GoCommentPage(5)">5</a><a class="nextpage"
                                                                                       href="javascript:GoCommentPage(2)">下一页</a><span>到 <input
                                            id="gopagetext" value="" type="text"> 页 / <b
                                            class="numpage">1079</b>页</span><a class="gopage" href="javascript:;">确定</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="weiboitem" id="weiboCom2" style="display: none;">
                        </div>
                    </div>
                    <div class="comment_entrance" id="dianPing">
            <span class="c_btnwrap">
                <a href="javascript:;" data-id="75898" data-src="/dianping/edit/75898.html"
                   class="b_orange_m f_right write_recomment"><span><i></i>写点评</span></a>
                <i class="icon_c_tips">立赚50-200积分<em class="c_arrow"></em></i>
            </span>
                        你曾经游览过这里吗？快来分享你的旅行体验吧~~
                    </div>
                </div>
                <div class="gsn-layer comment_rulebox" id="commentRule" style="display:none;">
                    <a class="close" href="javascript:$.popupbox.close()"></a>
                    <dl>
                        <dt>无法发表点评</dt>
                        <dd></dd>
                        <dd><a href="http://you.ctrip.com/group/topic/f1200013-652798.html">查看点评规则</a></dd>
                    </dl>
                    <p>
                        <a class="btn_other" href="http://you.ctrip.com/dianping">继续点评其他地点</a>
                        <a href="javascript:pagecomment();" data-url="" class="btn_findcomment">查看之前的点评</a>
                    </p>
                </div>
            </div>
            <div id="ad_left1" style="display:none;" class="bd_event_detailw"></div>
        </div>

        <div class="des_narrow f_right">
            <!--景点信息-->
            <div class="s_sight_infor">
                <div class="narrow_title cf">
                    <h3>景点信息</h3>
                    <div class="sight_weather">
                <span id="SightWea">
                        <i class="ws_icon ws_icon7"></i>
                </span>
                        <div class="hoverweather sightweather" style="display: none;">
                            <ul>
                                <li><a href="http://you.ctrip.com/weather/Guilin28/2888.html" target="_blank"><span
                                        class="daytext">今天</span>
                                    <div class="weather gs_tianqi_mini"><i class="ws_icon ws_icon7"></i>4℃/8℃</div>
                                </a></li>
                                <li><a href="http://you.ctrip.com/weather/Guilin28/2888.html" target="_blank"><span
                                        class="daytext">明天</span>
                                    <div class="weather gs_tianqi_mini"><i class="ws_icon ws_icon7"></i>5℃/10℃</div>
                                </a>
                                </li>
                                <li><a href="http://you.ctrip.com/weather/Guilin28/2888.html" target="_blank"><span
                                        class="daytext">后天</span>
                                    <div class="weather gs_tianqi_mini"><i class="ws_icon ws_icon7"></i>5℃/10℃</div>
                                </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="s_sight_check_infor">
                    <div class="s_sight_map">
                        <a target="_blank" href="http://you.ctrip.com/sight/guilin28/2888-map.html">
                            <img src="images/user/100r0j000000a3frmD2CB.png" height="140" width="260">
                        </a>
                    </div>
                    <div class="s_sight_check_mask"></div>
                    <div class="s_sight_check">
                        <a target="_blank" href="http://you.ctrip.com/sight/guilin28/2888-map.html">大图</a><span
                            style="">|</span><a id="sightstreeturl" style="" target="_blank"
                                                href="http://you.ctrip.com/sight/guilin28/2888-vista.html">街景</a>
                    </div>
                </div>
                <p class="s_sight_addr">地址：桂林市灵川县</p>
                <ul class="s_sight_in_list">

                    <li>
                        <span class="s_sight_classic">等&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：</span>
                        <span class="s_sight_con">
                    AAAAA
                </span>
                    </li>
                    <li>
                        <span class="s_sight_classic">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</span>
                        <span class="s_sight_con">
                    0773-2825502,0773-2826484
                </span>
                    </li>
                    <li>
                        <span class="s_sight_classic">官方网站：</span>
                        <span class="s_sight_con">
                    <a rel="nofollow" class="breakurl" href="http://www.liriver.com.cn/" target="_blank">http://www.liriver.com.cn/</a>
                </span>
                    </li>

                </ul>
                <dl class="s_sight_in_list">
                    <dt>开放时间：</dt>
                    <dd>9:00-11:00；时间仅供参考，具体开船时间以漓江游船票上的开船时间为准；游船时间：约3.5-4.5小时（因当天漓江水位水量等原因，会造成游船时间缩短或延长，属正常现象）。
                        漓江三星游船：全年 09:00-11:00；时间仅供参考，游船开船时间以船票上的开船时间为准。游船时间：约3.5-4.5小时（因当天漓江水位水量等原因，会造成游船时间缩短或延长，属正常现象）。
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</div>

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
</body>
<script src="js/user/jquery-3.3.1.js"></script>
<script>
    $("p.toggle_btn").click(function () {
        if ($(this).prev("div").css("display") == "block") {
            $(this).prev("div").css("display", "none");
            $(this).prev("div").prev("div").css("display", "block");
        } else {
            $(this).prev("div").css("display", "block");
            $(this).prev("div").prev("div").css("display", "none");
        }
    });
</script>
</html>