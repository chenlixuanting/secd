<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>【携程酒店】酒店预订,酒店价格查询,宾馆住宿推荐,网上订酒店 </title>
    <meta name="keywords" content="酒店,酒店预订,酒店查询,酒店地址,宾馆住宿推荐,网上订酒店">
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="robots" content="all">
    <meta name="robots" content="index,follow">
    <link rel="canonical" href="http://hotels.ctrip.com/">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link type="text/css" rel="stylesheet" href="css/user/pc_flaot.css">
    <link type="text/css" rel="stylesheet" href="css/user/common.v2.0.css">
    <link href="css/user/pri_index130417.css" rel="stylesheet" type="text/css">
</head>
<body>
<div style="margin-bottom: 20px;">
    <div class="gs-header cf">
        <div class="content">
            <div class="gs-nav">
                <ul>
                    <li id="gs_nav_0"><a href="http://you.ctrip.com/"><i class="icon_home"></i></a></li>
                    <li class="active" id="gs_nav_1"><a href="http://you.ctrip.com/place/">目的地攻略</a></li>
                    <li id="gs_nav_3"><a href="http://you.ctrip.com/travels/">游记</a></li>
                    <li id="gs_nav_4"><a href="http://you.ctrip.com/asks/">问答</a></li>
                    <li id="gs_nav_5"><a href="http://vacations.ctrip.com/tour/static/page/guide/introduction.html"
                                         target="_blank">当地向导</a></li>
                    <li id="gs_nav_8"><a href="http://top.ctrip.com/">口碑榜</a></li>
                    <li id="gs_nav_6"><a href="http://you.ctrip.com/smilin">美食林</a><span class="gs_tipsml"></span></li>
                    <li id="gs_nav_7"><a href="http://you.ctrip.com/article/?from=ctrip">氢气球</a></li>
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
<form name="aspnetForm" method="post" action="http://hotels.ctrip.com/Domestic/ShowHotelList.aspx?isvalid=0"
      id="aspnetForm">
    <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
               value="/wEPDwUKMTg5MzU1MDQzM2Rk7DHA5OdNOUDMyJ1v0QBWANHOYJmmoIyC26K8yZSl2rU=">
    </div>

    <div>
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AEF82FC0">
    </div>
    <input type="hidden" id="J_ServerDate" value="2018-12-09">

    <div id="base_bd">
        <div class="index_side">

            <!-- TAB START-->
            <div class="search_box_tab"><b></b>搜索国内酒店</div>
            <!-- TAB END-->
            <div class="search_box" id="J_searchBox">
                <div class="search_form">
                    <div class="pkg_choose">
                        <label class="current"><input type="radio" id="J_HotelRadio" name="hotelChoose"
                                                      checked="checked">酒店</label>
                        <label class="hv_package"><input type="radio" name="hotelChoose" id="J_HotelScene">酒店+景点</label>
                        <label><input type="radio" name="hotelChoose" id="J_InnRadio">客栈民宿</label>
                        <label><input type="radio" id="J_HotSaleRadio" name="hotelChoose">特价酒店<span
                                class="label-en"><em>NEW</em><i class="triangle"></i></span></label>
                    </div>
                    <div id="jingForm" class="hidden">
                        <container
                                style="position: absolute; top: 0px; left: 0px; width: 0px; height: 0px; z-index: 100;"></container>
                        <table cellspacing="0" cellpadding="0" class="searchbox">
                            <tbody>
                            <tr>
                                <th>目的地</th>
                                <td><input type="text" value="中文/拼音" class="w06 input_text2" name="CityName"
                                           id="SSH_CityName" autocomplete="on" _cqnotice="中文/拼音" style=""
                                           _lastvalue="上海"> <input type="hidden" id="SSH_CityId" name="cityId"
                                                                   value="2"> <input type="hidden" id="SSH_CityPy"
                                                                                     name="cityPY" value="shanghai">
                                </td>
                            </tr>
                            <tr>
                                <th>入住日期</th>
                                <td><input type="text" placeholder="yyyy-mm-dd" name="SSH_CheckIn" id="SSH_CheckIn"
                                           autocomplete="off" _cqnotice="yyyy-mm-dd" class="input_text2"></td>
                            </tr>
                            <tr>
                                <th>游玩天数</th>
                                <td><select id="SSH_SelectNight">
                                    <option value="0">不限</option>
                                    <option value="1">2天1晚</option>
                                    <option value="2">3天2晚</option>
                                </select></td>
                            </tr>
                            <tr>
                                <th>酒店级别</th>
                                <td><select id="SSH_HotelLevel">
                                    <option value="0" selected="selected">不限</option>
                                    <option value="5">五星级/豪华</option>
                                    <option value="4">四星级/高档</option>
                                    <option value="3">三星级/舒适</option>
                                    <option value="2">二星级以下/经济</option>
                                </select></td>
                            </tr>
                            <tr>
                                <th>关键词</th>
                                <td><input autocomplete="on" type="text" id="Hotel_SSH_txtSearch" maxlength="100"
                                           _cqnotice="酒店名称、景点名称、主题..." name="" class="w03 input_text"
                                           placeholder="酒店名称、景点名称、主题..."></td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="search_btn2"><input type="button" value="搜索酒店+景点套餐" class="btn_search"
                                                        title="搜索酒店+景点套餐" id="Hotel_SSH_btnSearch"></div>
                    </div>
                    <div id="J_SwitchSearch">
                        <div id="J_searchHistoryBox" class="search_history_box" style="display:none">
                            <a href="javascript:;" rel="nofollow" class="title">搜索历史<b></b></a>
                            <div class="history_list"></div>
                        </div>
                        <table cellspacing="0" cellpadding="0" class="searchbox">
                            <colgroup>
                                <col>
                                <col class="col2">
                                <col class="col3">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>目的地</th>
                                <td colspan="3"><input autocomplete="on" class="input_text2" id="txtCity"
                                                       name="HotelCityName" _cqnotice="中文/拼音">
                                </td>
                            </tr>
                            <tr>
                                <th>入住日期</th>
                                <td colspan="3"><input id="txtCheckIn" name="checkIn" class="input_text2"
                                                       autocomplete="off" type="text" value="2018-12-09"
                                                       _cqnotice="yyyy-mm-dd"></td>
                            </tr>
                            <tr>
                                <th>退房日期</th>
                                <td colspan="3"><input id="txtCheckOut" name="checkOut" class="input_text2"
                                                       autocomplete="off" type="text" value="2018-12-10"
                                                       _cqnotice="yyyy-mm-dd"></td>
                            </tr>


                            <tr>
                                <th>房间数</th>
                                <td>
                                    <div id="J_roomCountDiv" class="n_gst n_gstRoom">
                                        <input id="J_roomCount" type="text" class="n_gst_v" readonly="" value="1间">
                                        <i id="J_roomCount_i" class="n_gst_tri"></i>
                                        <div class="n_gst_p">
                                            <ul id="J_roomCountList" class="n_gst_num">
                                                <li>1间</li>
                                                <li>2间</li>
                                                <li>3间</li>
                                                <li>4间</li>
                                                <li>5间</li>
                                                <li>6间</li>
                                                <li>7间</li>
                                                <li>8间</li>
                                                <li>9间</li>
                                                <li>10间</li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                                <th>住客数</th>
                                <td>

                                    <div id="J_RoomGuestInfoDiv" class="n_gst n_gstPeople">
                                        <input id="J_RoomGuestInfoTxt" type="text" class="n_gst_v" readonly="true"
                                               value="1成人">
                                        <i id="J_RoomGuestInfoTxt_i" class="n_gst_tri"></i>
                                        <div class="n_gst_p">
                                            <!-- 快捷选项 -->
                                            <ul class="n_gst_list">
                                                <li class="n_gst_list_opt">
                                                    成人<span class="n_gst_age">18岁及以上</span>
                                                    <span id="J_AdultCount" class="number_control"><span
                                                            class="number_reduce number_disable"><i
                                                            class="icon_numreduce"></i></span><input type="text"
                                                                                                     class="number_input"
                                                                                                     readonly=""
                                                                                                     value="1"><span
                                                            class="number_plus"><i
                                                            class="icon_numplus"></i></span></span>
                                                </li>
                                                <li class="n_gst_list_opt">
                                                    儿童<span class="n_gst_age">0-17岁</span>
                                                    <span id="J_ChildCount" class="number_control"><span
                                                            class="number_reduce number_disable"><i
                                                            class="icon_numreduce"></i></span><input type="text"
                                                                                                     class="number_input"
                                                                                                     readonly=""
                                                                                                     value="0"><span
                                                            class="number_plus"><i
                                                            class="icon_numplus"></i></span></span>
                                                </li>
                                            </ul>
                                            <!-- 儿童人数大于0时显示 -->
                                            <div class="n_gst_childs">
                                                <dl class="n_gst_childs_dl">
                                                    <dt>儿童年龄（<span class="J_today"></span>当天）</dt>
                                                    <dd><select class="J_childageVal" id="J_childageVal0"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal1"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal2"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal3"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal4"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal5"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal6"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal7"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                    <dd><select class="J_childageVal" id="J_childageVal8"
                                                                style="display: none;">
                                                        <option value="0">&lt;1岁</option>
                                                        <option value="1">1岁</option>
                                                        <option value="2">2岁</option>
                                                        <option value="3">3岁</option>
                                                        <option value="4">4岁</option>
                                                        <option value="5">5岁</option>
                                                        <option value="6">6岁</option>
                                                        <option value="7">7岁</option>
                                                        <option value="8">8岁</option>
                                                        <option value="9">9岁</option>
                                                        <option value="10">10岁</option>
                                                        <option value="11">11岁</option>
                                                        <option value="12">12岁</option>
                                                        <option value="13">13岁</option>
                                                        <option value="14">14岁</option>
                                                        <option value="15">15岁</option>
                                                        <option value="16">16岁</option>
                                                        <option value="17">17岁</option>
                                                    </select></dd>
                                                </dl>
                                                <!-- 默认不显示，按需求提示 -->
                                                <div class="n_gst_childs_tips" style="display:none;">请选择儿童年龄</div>
                                            </div>
                                            <div class="n_gst_ft">
                                                <a id="J_RoomGuestInfoBtnOK" class="n_gst_btn">确定</a>
                                                <a id="J_RoomGuestInfoBtnCancel" class="n_gst_btncancel">取消</a>
                                            </div>
                                        </div>
                                    </div>
                                    <span id="J_ui_tips_help_Pop"
                                          style="background-color:#fff; width:240px; padding:10px 8px; color:#666; border:1px solid #0066cc; display:none; z-index:9999; position:absolute; top:207px; left:330px; line-height:1.5; margin-left:5px;text-indent:0;text-align:left; white-space:normal; font-size:12px;">18周岁及以上为成人。<br>0-17周岁儿童请参照各酒店入住政策。</span>
                                </td>
                            </tr>
                            <tr>
                                <th>酒店级别</th>
                                <td colspan="3"><select id="searchHotelLevelSelect" name="hotellevel">
                                    <option value="0" selected="selected">不限</option>
                                    <option value="5">五星级/豪华</option>
                                    <option value="4">四星级/高档</option>
                                    <option value="3">三星级/舒适</option>
                                    <option value="2">二星级及以下/经济</option>
                                </select>
                                </td>
                            </tr>
                            <tr>
                                <th>关键词</th>
                                <td colspan="3">
                                    <input type="text" _cqnotice="（选填）酒店名/地标/商圈" id="txtKeyword" name="keywordNew"
                                           class="input_text" autocomplete="on" maxlength="50"
                                           placeholder="（选填）酒店名/地标/商圈">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name="RoomGuestCount" id="J_RoomGuestCount" value="1,1,0">
                        <div class="search_btn2">
                            <input type="submit" value="搜索" class="btn_search" id="btnSearch">
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="index_main">
            <div class="hot_sold_box">

                <div style="display: none;" id="pop_box_city" class="pop_box_city"><a href="http://hotels.ctrip.com/###"
                                                                                      class="c_close">×</a><a
                        href="http://hotels.ctrip.com/hotel/changsha206" data-id="206" data-py="Changsha">长沙</a><a
                        href="http://hotels.ctrip.com/hotel/chongqing4" data-id="4" data-py="Chongqing">重庆</a><a
                        href="http://hotels.ctrip.com/hotel/dalian6" data-id="6" data-py="Dalian">大连</a><a
                        href="http://hotels.ctrip.com/hotel/fuzhou258" data-id="258" data-py="Fuzhou">福州</a><a
                        href="http://hotels.ctrip.com/hotel/guiyang38" data-id="38" data-py="Guiyang">贵阳</a><a
                        href="http://hotels.ctrip.com/hotel/guilin33" data-id="33" data-py="Guilin">桂林</a><a
                        href="http://hotels.ctrip.com/hotel/huangshan23" data-id="23" data-py="Huangshan">黄山</a><a
                        href="http://hotels.ctrip.com/hotel/harbin5" data-id="5" data-py="Harbin">哈尔滨</a><a
                        href="http://hotels.ctrip.com/hotel/haikou42" data-id="42" data-py="Haikou">海口</a><a
                        href="http://hotels.ctrip.com/hotel/hefei278" data-id="278" data-py="Hefei">合肥</a><a
                        href="http://hotels.ctrip.com/hotel/hohhot103" data-id="103" data-py="Hohhot">呼和浩特</a><a
                        href="http://hotels.ctrip.com/hotel/jinan144" data-id="144" data-py="Jinan">济南</a><a
                        href="http://hotels.ctrip.com/hotel/kunming34" data-id="34" data-py="Kunming">昆明</a><a
                        href="http://hotels.ctrip.com/hotel/lijiang37" data-id="37" data-py="Lijiang">丽江</a><a
                        href="http://hotels.ctrip.com/hotel/nanchang376" data-id="376" data-py="Nanchang">南昌</a><a
                        href="http://hotels.ctrip.com/hotel/nanjing12" data-id="12" data-py="Nanjing">南京</a><a
                        href="http://hotels.ctrip.com/hotel/nanning380" data-id="380" data-py="Nanning">南宁</a><a
                        href="http://hotels.ctrip.com/hotel/ningbo375" data-id="375" data-py="Ningbo">宁波</a><a
                        href="http://hotels.ctrip.com/hotel/qingdao7" data-id="7" data-py="Qingdao">青岛</a><a
                        href="http://hotels.ctrip.com/hotel/sanya43" data-id="43" data-py="Sanya">三亚</a><a
                        href="http://hotels.ctrip.com/hotel/xiamen25" data-id="25" data-py="Xiamen">厦门</a><a
                        href="http://hotels.ctrip.com/hotel/shenyang451" data-id="451" data-py="Shenyang">沈阳</a><a
                        href="http://hotels.ctrip.com/hotel/shijiazhuang428" data-id="428"
                        data-py="Shijiazhuang">石家庄</a><a href="http://hotels.ctrip.com/hotel/suzhou14" data-id="14"
                                                         data-py="Suzhou">苏州</a><a
                        href="http://hotels.ctrip.com/hotel/taipei617" data-id="617" data-py="Taipei">台北</a><a
                        href="http://hotels.ctrip.com/hotel/taiyuan105" data-id="105" data-py="Taiyuan">太原</a><a
                        href="http://hotels.ctrip.com/hotel/tianjin3" data-id="3" data-py="Tianjin">天津</a><a
                        href="http://hotels.ctrip.com/hotel/urumqi39" data-id="39" data-py="Urumqi">乌鲁木齐</a><a
                        href="http://hotels.ctrip.com/hotel/wuxi13" data-id="13" data-py="Wuxi">无锡</a><a
                        href="http://hotels.ctrip.com/hotel/wuhan477" data-id="477" data-py="Wuhan">武汉</a><a
                        href="http://hotels.ctrip.com/hotel/xi&#39;an10" data-id="10" data-py="Xi&#39;an">西安</a><a
                        href="http://hotels.ctrip.com/hotel/hong%20kong58" data-id="58" data-py="Hong Kong">香港</a><a
                        href="http://hotels.ctrip.com/hotel/yangshuo871" data-id="871" data-py="Yangshuo">阳朔</a><a
                        href="http://hotels.ctrip.com/hotel/zhengzhou559" data-id="559" data-py="Zhengzhou">郑州</a><a
                        href="http://hotels.ctrip.com/hotel/shangri-la660" data-id="660" data-py="Shangri-La">香格里拉</a><a
                        href="http://hotels.ctrip.com/hotel/wutai21210" data-id="21210" data-py="Wutai">五台</a><a
                        href="http://hotels.ctrip.com/hotel/foshan251" data-id="251" data-py="Foshan">佛山</a><a
                        href="http://hotels.ctrip.com/hotel/longyan348" data-id="348" data-py="Longyan">龙岩</a><a
                        href="http://hotels.ctrip.com/hotel/rizhao1106" data-id="1106" data-py="Rizhao">日照</a><a
                        href="http://hotels.ctrip.com/hotel/lhasa41" data-id="41" data-py="Lhasa">拉萨</a><a
                        href="http://hotels.ctrip.com/hotel/qidong697" data-id="697" data-py="Qidong">启东</a><a
                        href="http://hotels.ctrip.com/hotel/mianyang370" data-id="370" data-py="Mianyang">绵阳</a><a
                        href="http://hotels.ctrip.com/hotel/tangshan468" data-id="468" data-py="Tangshan">唐山</a><a
                        href="http://hotels.ctrip.com/hotel/changzhou213" data-id="213" data-py="Changzhou">常州</a></div>
                <h2 class="hot_sold_title">热门酒店<span class="bg_hot"></span></h2>
                <ul id="hotsold_city_list" class="hotsold_city_list">
                    <li class="current"><i></i><a href="http://hotels.ctrip.com/hotel/shanghai2" data-id="2"
                                                  data-py="Shanghai">上海</a></li>
                    <li><i></i><a href="http://hotels.ctrip.com/hotel/beijing1" data-id="1" data-py="Beijing">北京</a>
                    </li>
                    <li><i></i><a href="http://hotels.ctrip.com/hotel/guangzhou32" data-id="32"
                                  data-py="Guangzhou">广州</a></li>
                    <li><i></i><a href="http://hotels.ctrip.com/hotel/chengdu28" data-id="28" data-py="Chengdu">成都</a>
                    </li>
                    <li><i></i><a href="http://hotels.ctrip.com/hotel/shenzhen30" data-id="30" data-py="Shenzhen">深圳</a>
                    </li>
                    <li><i></i><a href="http://hotels.ctrip.com/hotel/hangzhou17" data-id="17" data-py="Hangzhou">杭州</a>
                    </li>
                    <li><i></i><a href="http://hotels.ctrip.com/hotel/changchun158" data-id="158"
                                  data-py="Changchun">长春</a></li>
                    <li><a class="more" id="city_chosen" href="javascript:;" rel="nofollow">更多<b></b></a></li>
                </ul>
                <script type="text/javascript">
                    var cityData = {
                        '1': true,
                        '2': true,
                        '32': true,
                        '28': true,
                        '30': true,
                        '17': true,
                        '158': true,
                        '206': true,
                        '4': true,
                        '6': true,
                        '258': true,
                        '38': true,
                        '33': true,
                        '23': true,
                        '5': true,
                        '42': true,
                        '278': true,
                        '103': true,
                        '144': true,
                        '34': true,
                        '37': true,
                        '376': true,
                        '12': true,
                        '380': true,
                        '375': true,
                        '7': true,
                        '43': true,
                        '25': true,
                        '451': true,
                        '428': true,
                        '14': true,
                        '617': true,
                        '105': true,
                        '3': true,
                        '39': true,
                        '13': true,
                        '477': true,
                        '10': true,
                        '58': true,
                        '871': true,
                        '559': true,
                        '660': true,
                        '21210': true,
                        '251': true,
                        '348': true,
                        '1106': true,
                        '41': true,
                        '697': true,
                        '370': true,
                        '468': true,
                        '213': true
                    };
                    var cityindex = {
                        '1': '1',
                        '2': '2',
                        '32': '3',
                        '28': '4',
                        '30': '5',
                        '17': '6',
                        '158': '7',
                        '206': '8',
                        '4': '9',
                        '6': '10',
                        '258': '11',
                        '38': '12',
                        '33': '13',
                        '23': '14',
                        '5': '15',
                        '42': '16',
                        '278': '17',
                        '103': '18',
                        '144': '19',
                        '34': '20',
                        '37': '21',
                        '376': '22',
                        '12': '23',
                        '380': '24',
                        '375': '25',
                        '7': '26',
                        '43': '27',
                        '25': '28',
                        '451': '29',
                        '428': '30',
                        '14': '31',
                        '617': '32',
                        '105': '33',
                        '3': '34',
                        '39': '35',
                        '13': '36',
                        '477': '37',
                        '10': '38',
                        '58': '39',
                        '871': '40',
                        '559': '41',
                        '660': '42',
                        '21210': '43',
                        '251': '44',
                        '348': '45',
                        '1106': '46',
                        '41': '47',
                        '697': '48',
                        '370': '49',
                        '468': '50',
                        '213': '51'
                    };
                </script>
                <div class="no_hot_sold" id="nohotcity" style="display:none;"><span></span>该城市暂无热门酒店数据</div>
                <div id="hot_list" class="hot_list">
                    <input type="hidden" name="hasListForInitHotHotel">

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="441351|389" href="http://hotels.ctrip.com/hotel/441351.html" title="上海三湘大厦"
                               data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_1">

                                <img id="ctl00_hotsalehotelList_ctl00_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/200q0w000000k8x9oAECB_R_130_130.jpg" alt="上海三湘大厦"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl00_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/200q0w000000k8x9oAECB_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_goldmedal" title="携程紧密合作酒店，为携程会员提供专享优惠房价。" data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="441351|389" data-dopost="T"
                                   title="上海三湘大厦" target="_blank" href="http://hotels.ctrip.com/hotel/441351.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_1">上海三湘大厦</a>
                            </h3>
                            <span class="hotel_stars03" title="国家旅游局评定为三星级"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone4#ctm_ref=hod_hp_hot_dl_z_2_1">虹桥地区</a>

                                <a data-dopost="T" class="search_hotel_location" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/location114#ctm_ref=hod_hp_hot_dl_l_2_1">长宁区</a>
                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="441351|389" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/441351.html#ctm_ref=hod_hp_hot_dl_c_2_1"
                                    class="hotel_comment J_trace_hotHotel">4.3分<b style="color:#CCC;">|</b> 来自607人点评</a>
                            </div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">干净卫生，早餐丰富</span><span class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="J_trace_hotHotel" data-hotel="441351|389"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/441351.html#book#ctm_ref=hod_hp_hot_dl_p_2_1"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>389</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="425164|228" href="http://hotels.ctrip.com/hotel/425164.html" title="上海南泉大酒店"
                               data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_2">

                                <img id="ctl00_hotsalehotelList_ctl01_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/941abc93388f496cb660691cf8b48bde_R_130_130.jpg" alt="上海南泉大酒店"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl01_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/941abc93388f496cb660691cf8b48bde_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_strategymedal" title="携程战略合作酒店，拥有优质服务、优良品质及优惠房价，供携程会员专享预订"
                                  data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="425164|228" data-dopost="T"
                                   title="上海南泉大酒店" target="_blank" href="http://hotels.ctrip.com/hotel/425164.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_2">上海南泉大酒店</a>
                            </h3>
                            <span class="hotel_stars03" title="国家旅游局评定为三星级"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone22#ctm_ref=hod_hp_hot_dl_z_2_2">浦东陆家嘴金融贸易区</a>

                                <a data-dopost="T" class="search_hotel_location" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/location119#ctm_ref=hod_hp_hot_dl_l_2_2">浦东新区</a>
                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="425164|228" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/425164.html#ctm_ref=hod_hp_hot_dl_c_2_2"
                                    class="hotel_comment J_trace_hotHotel">4.2分<b style="color:#CCC;">|</b>
                                来自3341人点评</a></div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">给同事也订了这里，实惠</span><span class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="" id="" data-hotel="425164|228"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/425164.html#book#ctm_ref=hod_hp_hot_dl_p_2_2"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>228</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="6081776|305" href="http://hotels.ctrip.com/hotel/6081776.html"
                               title="萨维尔金爵·鹿安酒店(上海国际旅游度假区浦东机场店)" data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_3">
                                <span class="c_ico_ad"><i></i>广告</span>
                                <img id="ctl00_hotsalehotelList_ctl02_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/20020e0000006ynxc500F_R_130_130.jpg"
                                     alt="萨维尔金爵·鹿安酒店(上海国际旅游度假区浦东机场店)"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl02_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/20020e0000006ynxc500F_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_strategymedal" title="携程战略合作酒店，拥有优质服务、优良品质及优惠房价，供携程会员专享预订"
                                  data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="6081776|305" data-dopost="T"
                                   title="萨维尔金爵·鹿安酒店(上海国际旅游度假区浦东机场店)" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/6081776.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_3">萨维尔金爵·鹿安酒店(上海国际旅游度假区浦东机场店)</a>
                            </h3>
                            <span class="hotel_diamond04" title="高档型"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone13775#ctm_ref=hod_hp_hot_dl_z_2_3">迪士尼度假区</a>
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone466#ctm_ref=hod_hp_hot_dl_z_2_3">浦东机场核心区</a>

                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="6081776|305" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/6081776.html#ctm_ref=hod_hp_hot_dl_c_2_3"
                                    class="hotel_comment J_trace_hotHotel">4.7分<b style="color:#CCC;">|</b>
                                来自7614人点评</a></div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">酒店有迪士尼免费班车接送，从酒店到迪士尼大概15分钟，接车的美女很贴心，还给准备了零食怕我们饿了。😋😋班车回到酒店大厅里一个硕大的皮卡丘在等着。好可爱。如果有机会还会来这家酒店入住。</span><span
                                    class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="J_trace_hotHotel" data-hotel="6081776|305"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/6081776.html#book#ctm_ref=hod_hp_hot_dl_p_2_3"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>611</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="1994123|129" href="http://hotels.ctrip.com/hotel/1994123.html"
                               title="浦江精选酒店(上海虹桥枢纽会展中心店)" data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_4">
                                <span class="c_ico_ad"><i></i>广告</span>
                                <img id="ctl00_hotsalehotelList_ctl03_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/2008070000002aehu791A_R_130_130.jpg" alt="浦江精选酒店(上海虹桥枢纽会展中心店)"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl03_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/2008070000002aehu791A_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_strategymedal" title="携程战略合作酒店，拥有优质服务、优良品质及优惠房价，供携程会员专享预订"
                                  data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="1994123|129" data-dopost="T"
                                   title="浦江精选酒店(上海虹桥枢纽会展中心店)" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/1994123.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_4">浦江精选酒店(上海虹桥枢纽会展中心店)</a>
                            </h3>
                            <span class="hotel_diamond03" title="舒适型"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone687#ctm_ref=hod_hp_hot_dl_z_2_4">虹桥机场、国家会展中心</a>

                                <a data-dopost="T" class="search_hotel_location" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/location122#ctm_ref=hod_hp_hot_dl_l_2_4">闵行区</a>
                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="1994123|129" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/1994123.html#ctm_ref=hod_hp_hot_dl_c_2_4"
                                    class="hotel_comment J_trace_hotHotel">4.6分<b style="color:#CCC;">|</b>
                                来自11522人点评</a></div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">房间卫生好，服务好，有接送机场的车</span><span
                                    class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="" data-hotel="1994123|129"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/1994123.html#book#ctm_ref=hod_hp_hot_dl_p_2_4"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>129</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="13819538|266" href="http://hotels.ctrip.com/hotel/13819538.html"
                               title="上海蝶来寸村里酒店" data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_5">
                                <span class="c_ico_ad"><i></i>广告</span>
                                <img id="ctl00_hotsalehotelList_ctl04_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/20060w000000kihfs0953_R_130_130.jpg" alt="上海蝶来寸村里酒店"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl04_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/20060w000000kihfs0953_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_goldmedal" title="携程紧密合作酒店，为携程会员提供专享优惠房价。" data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="13819538|266" data-dopost="T"
                                   title="上海蝶来寸村里酒店" target="_blank" href="http://hotels.ctrip.com/hotel/13819538.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_5">上海蝶来寸村里酒店</a>
                            </h3>
                            <span class="hotel_diamond04" title="高档型"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone466#ctm_ref=hod_hp_hot_dl_z_2_5">浦东机场核心区</a>

                                <a data-dopost="T" class="search_hotel_location" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/location119#ctm_ref=hod_hp_hot_dl_l_2_5">浦东新区</a>
                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="13819538|266" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/13819538.html#ctm_ref=hod_hp_hot_dl_c_2_5"
                                    class="hotel_comment J_trace_hotHotel">4.6分<b style="color:#CCC;">|</b> 来自521人点评</a>
                            </div>
                            <div class="brief_comment"><span class="left_quote"></span><span class="">暂无点评</span><span
                                    class="right_quote"></span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="J_trace_hotHotel" data-hotel="13819538|266"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/13819538.html#book#ctm_ref=hod_hp_hot_dl_p_2_5"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>266</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="479628|589" href="http://hotels.ctrip.com/hotel/479628.html"
                               title="美豪丽致酒店(上海徐家汇衡山路旗舰店)" data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_6">
                                <span class="c_ico_ad"><i></i>广告</span>
                                <img id="ctl00_hotsalehotelList_ctl05_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/200g0y000000luf87917B_R_130_130.jpg" alt="美豪丽致酒店(上海徐家汇衡山路旗舰店)"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl05_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/200g0y000000luf87917B_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_strategymedal" title="携程战略合作酒店，拥有优质服务、优良品质及优惠房价，供携程会员专享预订"
                                  data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="479628|589" data-dopost="T"
                                   title="美豪丽致酒店(上海徐家汇衡山路旗舰店)" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/479628.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_6">美豪丽致酒店(上海徐家汇衡山路旗舰店)</a>
                            </h3>
                            <span class="hotel_diamond04" title="高档型"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone989#ctm_ref=hod_hp_hot_dl_z_2_6">衡山路地区</a>

                                <a data-dopost="T" class="search_hotel_location" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/location113#ctm_ref=hod_hp_hot_dl_l_2_6">徐汇区</a>
                                <span class="base_txtsilver" style="display:none;">
        					</span>
                            </div>
                            <div><a data-hotel="479628|589" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/479628.html#ctm_ref=hod_hp_hot_dl_c_2_6"
                                    class="hotel_comment J_trace_hotHotel">4.7分<b style="color:#CCC;">|</b> 来自111人点评</a>
                            </div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">服务一般般</span><span class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="J_trace_hotHotel" data-hotel="479628|589"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/479628.html#book#ctm_ref=hod_hp_hot_dl_p_2_6"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>589</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="378777|406" href="http://hotels.ctrip.com/hotel/378777.html"
                               title="上海航空酒店(上海浦东机场店)" data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_7">

                                <img id="ctl00_hotsalehotelList_ctl06_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/0BCF85B2-9802-42A6-AC1E-7D9CEC530374_R_130_130.jpg"
                                     alt="上海航空酒店(上海浦东机场店)" style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl06_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/0BCF85B2-9802-42A6-AC1E-7D9CEC530374_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_goldmedal_su" title="携程紧密合作供应商，为携程会员提供专享优惠房价。" data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="378777|406" data-dopost="T"
                                   title="上海航空酒店(上海浦东机场店)" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/378777.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_7">上海航空酒店(上海浦东机场店)</a>
                            </h3>
                            <span class="hotel_diamond04" title="高档型"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone466#ctm_ref=hod_hp_hot_dl_z_2_7">浦东机场核心区</a>

                                <a data-dopost="T" class="search_hotel_location" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/location119#ctm_ref=hod_hp_hot_dl_l_2_7">浦东新区</a>
                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="378777|406" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/378777.html#ctm_ref=hod_hp_hot_dl_c_2_7"
                                    class="hotel_comment J_trace_hotHotel">4.2分<b style="color:#CCC;">|</b>
                                来自13542人点评</a></div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">服务很好！</span><span class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="" data-hotel="378777|406"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/378777.html#book#ctm_ref=hod_hp_hot_dl_p_2_7"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>406</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>

                    <ul class="searchresult_info border_none" style="display:block;">
                        <li class="hotel_pic">
                            <a data-dopost="T" class="hotel_abbrpic J_trace_hotHotel" target="_blank"
                               data-hotel="473770|227" href="http://hotels.ctrip.com/hotel/473770.html" title="上海徐汇云睿酒店"
                               data-ctm="#ctm_ref=hod_hp_hot_dl_i_2_8">

                                <img id="ctl00_hotsalehotelList_ctl07_imgSmallImage" name="hotelpic"
                                     src="./hotel_files/20070e00000075s8u5D03_R_130_130.jpg" alt="上海徐汇云睿酒店"
                                     style="height:130px;width:130px;border-width:0px;">
                                <img id="ctl00_hotsalehotelList_ctl07_imgBigImage" class="hotel_pic_big" alt=""
                                     src="./hotel_files/20070e00000075s8u5D03_R_300_225.jpg"
                                     style="height:225px;width:300px;border-width:0px;">
                            </a>
                        </li>
                        <li class="searchresult_info_name">
                            <span class="hotel_strategymedal" title="携程战略合作酒店，拥有优质服务、优良品质及优惠房价，供携程会员专享预订"
                                  data-role="title"></span>
                            <h3 class="searchresult_name">
                                <a class="hotel_name J_trace_hotHotel" data-hotel="473770|227" data-dopost="T"
                                   title="上海徐汇云睿酒店" target="_blank" href="http://hotels.ctrip.com/hotel/473770.html"
                                   data-ctm="#ctm_ref=hod_hp_hot_dl_n_2_8">上海徐汇云睿酒店</a>
                            </h3>
                            <span class="hotel_diamond04" title="高档型"></span>
                            <div class="searchresult_htladdress">
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone7#ctm_ref=hod_hp_hot_dl_z_2_8">徐家汇地区</a>
                                <a data-dopost="T" class="search_hotel_zone" target="_blank"
                                   href="http://hotels.ctrip.com/hotel/shanghai2/zone363#ctm_ref=hod_hp_hot_dl_z_2_8">上海火车南站地区</a>

                                <span class="base_txtsilver" style="display:none;">
						
					</span>
                            </div>
                            <div><a data-hotel="473770|227" data-dopost="T" target="_blank"
                                    href="http://hotels.ctrip.com/hotel/dianping/473770.html#ctm_ref=hod_hp_hot_dl_c_2_8"
                                    class="hotel_comment J_trace_hotHotel">4.6分<b style="color:#CCC;">|</b>
                                来自9637人点评</a></div>
                            <div class="brief_comment"><span class="left_quote">“</span><span
                                    class="brief_comment_text">#小惊喜#店长给免费升级了，感谢哈</span><span
                                    class="right_quote">”</span>
                            </div>
                        </li>
                        <li class="hotel_price_icon">
                            <a class="J_trace_hotHotel" id="id_hothotel_price" data-hotel="473770|227"
                               onmouseover="return hotpmouseOver(this);" onmouseout="return hotpmouseOut(this);"
                               href="http://hotels.ctrip.com/hotel/473770.html#book#ctm_ref=hod_hp_hot_dl_p_2_8"
                               target="_blank" data-dopost="T">
                                <div class="price_box" style="text-align: right;">
                                    <div>
                                        <div class="price" style="display: inline-block;vertical-align: middle;">
                                            <dfn>¥</dfn><b>227</b>起
                                        </div>
                                    </div>
                                </div>
                                <div class="price_tip" style="display:none;">
                                    <br>
                                </div>
                                <span class="booking_info"></span>
                            </a>
                        </li>
                    </ul>
                    <div id="defaultcity" style="display:none">[{name:'上海',py:'shanghai',id:'2'}]</div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <input type="hidden" id="_releaseNo_" name="_releaseNo_" value="2018-12-09-11-49-59">
        <input type="hidden" id="_Act" name="__action" value="/Domestic/ShowHotelList.aspx">
        <input type="hidden" id="cityId" name="cityId" value="2">
        <input type="hidden" id="cityPY" name="cityPY" value="Shanghai">
        <input type="hidden" id="page_id" value="102001">
        <input type="hidden" id="positionArea" name="positionArea">
        <input type="hidden" id="positionId" name="positionId">
        <input type="hidden" id="hotelAreaName" name="keyword">
        <input type="hidden" id="requestTravelMoney" name="requestTravelMoney">
        <input type="hidden" id="isfromindex" name="isfromindex" value="1">
        <input type="hidden" value="" id="ab_testing_tracker">
        <input type="hidden" id="innSite" value="//inn.ctrip.com">

        <div id="hotelBrandAjaxSuggest" style="left: 441px; top: 460px; display: none;
            position: absolute;" class="choice">
            <div id="hotelBrandAjaxLoading" style="text-align: center;">
                <img src="./hotel_files/loading.gif" alt="" style="vertical-align: -4px">
                查询中...
            </div>
            <div id="hotelBrandAjaxResultList">
            </div>
        </div>
    </div>
</form>
</body>
</html>