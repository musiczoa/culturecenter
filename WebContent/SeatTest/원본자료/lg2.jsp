<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>LG Arts Center</title>
    <link href='/include/css/import.css'  type='text/css' rel='stylesheet' />
    <link href='/include/js/custom-1.9.0/themes/user/jquery-ui-1.9.1.custom.css'  type='text/css' rel='stylesheet' />
    <script type='text/javascript' src='/include/js/jquery-1.7.2.min.js'></script>
    <script type='text/javascript' src='/include/js/custom-1.9.0/external/jquery.cookie.js'></script><script type='text/javascript' src='/include/js/jcom/jurl/jquery.url.js'></script><script type='text/javascript' src='/include/js/jcom/jdownload/download.jQuery.js'></script><script type='text/javascript' src='/include/js/jcom/json/json2.js'></script><script type='text/javascript' src='/include/js/jcom/jdetect/detectmobilebrowser.js'></script>
    <script type='text/javascript' src='/include/js/custom-1.9.0/ui/jquery-ui-1.9.0.custom.min.js'></script>
    <script type="text/javascript">        var $j = jQuery.noConflict();</script>
    <script type='text/javascript' src='/include/js/jry_home_jdefault.js'></script><script type='text/javascript' src='/include/js/jry_home_jdialog.js'></script><script type='text/javascript' src='/include/js/jry_home_jui.js'></script>
    <!-- 중간 스크립트들 위치 -->
    <script type='text/javascript' src='/include/js/jdefault_home.js'></script>
    <script type="text/javascript" src="/include/js/global.js"></script>
    <script type="text/javascript" src="/include/js/slb.js"></script>
</head>
<body>
    <form name="form1" method="post" action="res_perform.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

    <div id='dialogAlert' style='display:none;'></div><div id='dialogConfirm' style='display:none;'></div><div id='dialogPopup' style='display:none;'></div>
    <div id='SLB_film' style='z-index: 99997; position:absolute; display:none; width:100%; height:100%; background-color:#000000; filter:Alpha(opacity=30); opacity:0.1; -moz-opacity:0.1;'></div><div id='SLB_content' onclick='SLB();' align='center' style='z-index: 99999; position:absolute;width:0px;height:0px'></div><div id='SLB_loading' onclick='SLB();' title='로딩중...클릭시 취소' style='display:none;width:0px;height:0px'> Loading... </div>
    <img id='imgAjaxLoader' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' />
    <!-- wrap start -->
    <div class="wrap">
        <!-- container start -->
        <div class="container">
            <!-- frame_left start -->
            
<meta http-equiv="Page-Enter" content="BlendTrans(Duration=0.3)" />
<meta http-equiv="Page-exit" content="BlendTrans(Duration=0.3)" />
<div class="frame_left">
    <div class="logo"><a href="http://www.lgart.com/uipage/main.aspx"><h1>LG ArtsCenter</h1></a></div>
    <div class="menu_left">
        <table width="165" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td valign="top">
                    <table width="165" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><a href="javascript:menus('1');" ><img alt="" src="/images/com/ml_01_00.gif" onmouseover="this.src='/images/com/ml_01_00_.gif'" onmouseout="this.src='/images/com/ml_01_00.gif'" /></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="m_1" style="display: none;">
                                    <table width="165" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/lgintro.aspx" ><img alt="" src="/images/com/ml_01_01.gif" onmouseover="this.src='/images/com/ml_01_01_.gif'" onmouseout="this.src='/images/com/ml_01_01.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/organ.aspx" ><img alt="" src="/images/com/ml_01_02.gif" onmouseover="this.src='/images/com/ml_01_02_.gif'" onmouseout="this.src='/images/com/ml_01_02.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/build.aspx" ><img alt="" src="/images/com/ml_01_03.gif" onmouseover="this.src='/images/com/ml_01_03_.gif'" onmouseout="this.src='/images/com/ml_01_03.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/fac.aspx" ><img alt="" src="/images/com/ml_01_04.gif" onmouseover="this.src='/images/com/ml_01_04_.gif'" onmouseout="this.src='/images/com/ml_01_04.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/ci.aspx" ><img alt="" src="/images/com/ml_01_05.gif" onmouseover="this.src='/images/com/ml_01_05_.gif'" onmouseout="this.src='/images/com/ml_01_05.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/compas.aspx" ><img alt="" src="/images/com/ml_01_06.gif" onmouseover="this.src='/images/com/ml_01_06_.gif'" onmouseout="this.src='/images/com/ml_01_06.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/lamp.aspx" ><img alt="" src="/images/com/ml_01_07.gif" onmouseover="this.src='/images/com/ml_01_07_.gif'" onmouseout="this.src='/images/com/ml_01_07.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/intro/MusicAcademy.aspx" ><img alt="" src="/images/com/ml_01_08.gif" onmouseover="this.src='/images/com/ml_01_08_.gif'" onmouseout="this.src='/images/com/ml_01_08.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td height="25"></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><a href="javascript:menus('2');" ><img alt="" src="/images/com/ml_02_00.gif" onmouseover="this.src='/images/com/ml_02_00_.gif'" onmouseout="this.src='/images/com/ml_02_00.gif'" /></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="m_2" style="display: none;">
                                    <table width="165" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/perform/calender.aspx" ><img alt="" src="/images/com/ml_02_01.gif" onmouseover="this.src='/images/com/ml_02_01_.gif'" onmouseout="this.src='/images/com/ml_02_01.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/perform/resinfo.aspx" ><img alt="" src="/images/com/ml_02_02.gif" onmouseover="this.src='/images/com/ml_02_02_.gif'" onmouseout="this.src='/images/com/ml_02_02.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/perform/res_perform.aspx" ><img alt="" src="/images/com/ml_02_03.gif" onmouseover="this.src='/images/com/ml_02_03_.gif'" onmouseout="this.src='/images/com/ml_02_03.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/perform/Res_package_01.aspx" ><img alt="" src="/images/com/ml_02_04.gif" onmouseover="this.src='/images/com/ml_02_04_.gif'" onmouseout="this.src='/images/com/ml_02_04.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="https://www.lgart.com/uipage/myticket/myorder.aspx" ><img alt="" src="/images/com/ml_02_05.gif" onmouseover="this.src='/images/com/ml_02_05_.gif'" onmouseout="this.src='/images/com/ml_02_05.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/myticket/mycoupon.aspx" ><img alt="" src="/images/com/ml_02_07.gif" onmouseover="this.src='/images/com/ml_02_07_.gif'" onmouseout="this.src='/images/com/ml_02_07.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/perform/gift_point.aspx" ><img alt="" src="/images/com/ml_02_06.gif" onmouseover="this.src='/images/com/ml_02_06_.gif'" onmouseout="this.src='/images/com/ml_02_06.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td height="25"></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><a href="javascript:menus('3');" ><img alt="" src="/images/com/ml_03_00.gif" onmouseover="this.src='/images/com/ml_03_00_.gif'" onmouseout="this.src='/images/com/ml_03_00.gif'" /></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="m_3" style="display: none;">
                                    <table width="165" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/guide/seat.aspx" ><img alt="" src="/images/com/ml_03_01.gif" onmouseover="this.src='/images/com/ml_03_01_.gif'" onmouseout="this.src='/images/com/ml_03_01.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/guide/handicap.aspx" ><img alt="" src="/images/com/ml_03_02.gif" onmouseover="this.src='/images/com/ml_03_02_.gif'" onmouseout="this.src='/images/com/ml_03_02.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/guide/amenity.aspx" ><img alt="" src="/images/com/ml_03_03.gif" onmouseover="this.src='/images/com/ml_03_03_.gif'" onmouseout="this.src='/images/com/ml_03_03.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/guide/emergency.aspx" ><img alt="" src="/images/com/ml_03_04.gif" onmouseover="this.src='/images/com/ml_03_04_.gif'" onmouseout="this.src='/images/com/ml_03_04.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/guide/location.aspx" ><img alt="" src="/images/com/ml_03_05.gif" onmouseover="this.src='/images/com/ml_03_05_.gif'" onmouseout="this.src='/images/com/ml_03_05.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td height="25"></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><a href="javascript:menus('4');" ><img alt="" src="/images/com/ml_04_00.gif" onmouseover="this.src='/images/com/ml_04_00_.gif'" onmouseout="this.src='/images/com/ml_04_00.gif'" /></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="m_4" style="display: none;">
                                    <table width="165" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/Community/notice.aspx" ><img alt="" src="/images/com/ml_04_01.gif" onmouseover="this.src='/images/com/ml_04_01_.gif'" onmouseout="this.src='/images/com/ml_04_01.gif'" /></a></td>
                                        </tr>

                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/Community/qna.aspx" ><img alt="" src="/images/com/ml_04_03.gif" onmouseover="this.src='/images/com/ml_04_03_.gif'" onmouseout="this.src='/images/com/ml_04_03.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/Community/faq_info.aspx" ><img alt="" src="/images/com/ml_04_04.gif" onmouseover="this.src='/images/com/ml_04_04_.gif'" onmouseout="this.src='/images/com/ml_04_04.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td height="25"></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><a href="javascript:menus('5');" ><img alt="" src="/images/com/ml_05_00.gif" onmouseover="this.src='/images/com/ml_05_00_.gif'" onmouseout="this.src='/images/com/ml_05_00.gif'" /></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="m_5" style="display: none;">
                                    <table width="165" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/azine/main.aspx" ><img alt="" src="/images/com/ml_05_01.gif" onmouseover="this.src='/images/com/ml_05_01_.gif'" onmouseout="this.src='/images/com/ml_05_01.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td height="25"></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><a href="javascript:menus('6');" ><img alt="" src="/images/com/ml_06_00.gif" onmouseover="this.src='/images/com/ml_06_00_.gif'" onmouseout="this.src='/images/com/ml_06_00.gif'" /></a></td>
                        </tr>
                        <tr>
                            <td>
                                <div id="m_6" style="display: none;">
                                    <table width="165" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/rent/rent_info.aspx" ><img alt="" src="/images/com/ml_06_01.gif" onmouseover="this.src='/images/com/ml_06_01_.gif'" onmouseout="this.src='/images/com/ml_06_01.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/rent/fee_fac.aspx" ><img alt="" src="/images/com/ml_06_02.gif" onmouseover="this.src='/images/com/ml_06_02_.gif'" onmouseout="this.src='/images/com/ml_06_02.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/rent/fac_info.aspx" ><img alt="" src="/images/com/ml_06_03.gif" onmouseover="this.src='/images/com/ml_06_03_.gif'" onmouseout="this.src='/images/com/ml_06_03.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/rent/rent_rule.aspx" ><img alt="" src="/images/com/ml_06_04.gif" onmouseover="this.src='/images/com/ml_06_04_.gif'" onmouseout="this.src='/images/com/ml_06_04.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td><a href="http://www.lgart.com/uipage/rent/faq.aspx" ><img alt="" src="/images/com/ml_06_05.gif" onmouseover="this.src='/images/com/ml_06_05_.gif'" onmouseout="this.src='/images/com/ml_06_05.gif'" /></a></td>
                                        </tr>
                                        <tr>
                                            <td height="25"></td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td><img id="imgmu7" src="/images/com/ml_07_00_.gif" width="82" height="27" /><img id="imgmu71" width="82"  height="27"  src="/images/com/ml_07_01_.gif" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="25"></td>
            </tr>
            <tr>
                <td style="padding-left: 7px;">
                    <!-- Calendar 시작 -->
                    <div style="position: absolute; width: 150px; height: 480px; top: 370px; left: 35px; padding: 0px;">
                        <div style="position: relative; bottom: -250px; left: 0px; padding: 0px;">
                            <div id="Calander" style="position: absolute; left: 0px; bottom: 50px; padding: 0px; display: none;">
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="236" align="center" valign="middle" class="ml_ca_bg">
                                            <!-- Calendar START -->
                                            <iframe src="/UIPage/Perform/MiniCalendar.aspx" width="147" height="206" frameborder="0" scrolling="no"></iframe>
                                            <!-- Calendar END -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="77"><img alt="" src="/images/com/ml_btn_cal_on.gif" class="doublecursor" width="74" height="51"  onclick="DivView(0);" /></td>
                                                    <td style="padding-left: 3px;"><img alt="" src="/images/com/ml_btn_next.gif" class="doublecursor" width="74" height="51"  onclick="DivView(2);" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="Perfinfo" style="position: absolute; left: 0px; bottom: 50px; padding: 0px; margin: 0; display: none;">
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="236" align="center" valign="top" class="ml_per_bg">
                                            <div id="NextProgram"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="77"><img alt="" src="/images/com/ml_btn_cal.gif" class="doublecursor" width="74" height="51"  onclick="DivView(1);" /></td>
                                                    <td style="padding-left: 3px;"><img alt="" src="/images/com/ml_btn_next_on.gif" class="doublecursor" width="74" height="51"  onclick="DivView(0);" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="MenuDiv" style="position: absolute; margin-bottom: 0; left: 0px; bottom: 50px; padding: 0px;">
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="77"><img alt="" src="/images/com/ml_btn_cal.gif" class="doublecursor" width="74" height="51"  onclick="DivView(1);" /></td>
                                        <td style="padding-left: 3px;"><img alt="" src="/images/com/ml_btn_next.gif" class="doublecursor" width="74" height="51"  onclick="DivView(2);" /></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="MiniIcon" style="position: absolute; bottom: -130px; left: 0px; padding: 0px;">
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="11">
                                            <div id="b_1" style="display: none;"><img alt="" src="/images/com/ml_icon_01txt.gif" /></div>
                                            <div id="b_2" style="display: none;"><img alt="" src="/images/com/ml_icon_02txt.gif" /></div>
                                            <div id="b_3" style="display: none;"><img alt="" src="/images/com/ml_icon_03txt.gif" /></div>
                                            <div id="b_4" style="display: none;"><img alt="" src="/images/com/ml_icon_04txt.gif" /></div>
                                            <div id="b_5" style="display: none;"><img alt="" src="/images/com/ml_icon_05txt.gif" /></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="5"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="32"><a href="http://www.lgart.com/uipage/perform/res_perform.aspx" ><img alt="" src="/images/com/ml_icon_01.gif" onmouseover="this.src='/images/com/ml_icon_01_.gif';openic('1');" onmouseout="this.src='/images/com/ml_icon_01.gif';openic('1');" /></a></td>
                                                    <td width="32"><a href="http://www.lgart.com/uipage/guide/location.aspx" ><img alt="" src="/images/com/ml_icon_02.gif" onmouseover="this.src='/images/com/ml_icon_02_.gif';openic('2');" onmouseout="this.src='/images/com/ml_icon_02.gif';openic('2');" /></a></td>
                                                    <td width="32"><a href="http://www.lgart.com/uipage/etc/contactus.aspx" ><img alt="" src="/images/com/ml_icon_03.gif" onmouseover="this.src='/images/com/ml_icon_03_.gif';openic('3');" onmouseout="this.src='/images/com/ml_icon_03.gif';openic('3');" /></a></td>
                                                    <td width="32"><a href="http://www.facebook.com/pages/LG-Arts-Center/158171060864017" target="_blank" ><img alt="" src="/images/com/ml_icon_04.gif" onmouseover="this.src='/images/com/ml_icon_04_.gif';openic('4');" onmouseout="this.src='/images/com/ml_icon_04.gif';openic('4');" /></a></td>
                                                    <td><a href="http://twitter.com/LGArtsCenter" target="_blank" ><img alt="" src="/images/com/ml_icon_05.gif" onmouseover="this.src='/images/com/ml_icon_05_.gif';openic('5');" onmouseout="this.src='/images/com/ml_icon_05.gif';openic('5');" /></a></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="12"></td>
                                    </tr>
                                    <tr>
                                        <td><img alt="" src="/images/com/ml_banner01.gif" width="150" height="81" /></td>
                                    </tr>
                                    <tr>
                                        <td height="50"></td>
                                    </tr>                                                                    
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Calendar 끝 -->
                </td>
            </tr>
        </table>
    </div>
</div>



<script type="text/javascript">
    mm = 6;
    ic = 5;

    function menus(idx) {
        if (idx < 7) {
            for (i = 1; i <= mm; i++) {
                var joClickList = $j("div#m_" + idx);
                var joExClickList = $j("div#m_" + i);
                
                if (i * 1 == idx * 1) {
                    if (joClickList.css("display") == "block") {
                        joClickList.css("display", "none");
                    } else {
                        joClickList.css("display", "block");
                    }
                }
                else {
                    joExClickList.css("display", "none");
                }
            }
        }
    }

    function DivView(idx) {
        var divMenu = $j("div#MenuDiv");
        var divPerfInfo = $j("div#Perfinfo");
        var divCalendar = $j("div#Calander");

        if (idx == "0") {
            divCalendar.css("display", "none");
            divPerfInfo.css("display", "none");
            divMenu.css("display", "");
        }

        if (idx == "1") {
            divCalendar.css("display", "");
            divPerfInfo.css("display", "none");
            divMenu.css("display", "none");
        }

        if (idx == "2") {
            divCalendar.css("display", "none");
            divPerfInfo.css("display", "");
            divMenu.css("display", "none");
        }
    }

    function openic(idx) {
        for (i = 1; i <= ic; i++) {
            var joClickList = $j("div#b_" + idx);
            var joExClickList = $j("div#b_" + i);

            if (i * 1 == idx * 1) {
                if (joClickList.css("display") == "block") {
                    joClickList.css("display", "none");
                } else {
                    joClickList.css("display", "block");
                }
            }
            else {
                joExClickList.css("display", "none");
            }
        }
    }

    function closes() {
        for (i = 1; i <= mm; i++) {
            $j("div#m_" + i).css("display", "none");
        }
        for (i = 1; i <= ic; i++) {
            $j("div#b_" + i).css("display", "none");
        }
    }

    function onmouseoverEvent(th) {
        if ($j("#imgmu23").attr("src") != th.src)
            th.src = th.src.replace('.gif', '_.gif');
    }

    function onmouseoutEvent(th) {
        if ($j("#imgmu23").attr("src") != th.src)
            th.src = th.src.replace('_.gif', '.gif');
    }

    function onmouseoverEventTop(th) {
        if ($j("#imgmu2").attr("src") != th.src)
            th.src = th.src.replace('.gif', '_.gif');
    }

    function onmouseoutEventTop(th) {
        if ($j("#imgmu2").attr("src") != th.src)
            th.src = th.src.replace('_.gif', '.gif');
    }

    $j(document).ready(function () {
        if ('2' != '' || '2' != '7') {
            menus('2');

            if ('3' != '') {
                $j("#imgmu2").attr("src", "/images/com/ml_02_00_.gif");
                $j("#imgmu23").attr("src", "/images/com/ml_02_03_.gif");
            }
        }

        jsf_com_GetNextProgram(0, 0, 0);
    });
</script>

<script type="text/javascript">

    var _log = _log || [];

    _log.push(['ci', '100210793']);
    _log.push(['coi', '2']);
    _log.push(['tg', '']);

    //submits transaction to the Analytics servers    

    (function () {
        var ga = document.createElement('script');
        ga.type = 'text/javascript';
        ga.async = true;
        ga.src = '/include/js/trace/trace.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ga, s);
    })(); 
 
</script>
            <!-- frame_left end -->
            <!-- frame_right start -->
            <div class="frame_right">
                
<div class='menu_top02'>
    
    <a href="https://www.lgart.com/uipage/member/logout.aspx"><img alt="" src="/images/com/btn_logout.gif" style="cursor:pointer"/></a>
    <a href="https://www.lgart.com/uipage/member/My_order.aspx"><img alt="" src="/images/com/btn_myinfo.gif" /></a>
     
    <a href="http://www.lgart.com/uipage/eng/main.aspx"><img alt="" src="/images/com/btn_eng.gif" /></a>
    <img alt="" src="/images/com/btn_blank.gif" />
</div>
<div class="line_17px"></div>
<div class="search">
    <input id="searchText" type="text" name="search" class="form_se" onkeypress="if (event.keyCode==13){ Search(); event.returnValue=false}" />
    <img alt="" src="/images/com/btn_search.gif" class="doublecursor" onclick="Search();" align="absbottom" />
</div>
<script type="text/javascript">
    function Search() {
        if ($j("#searchText").val().length <= 0) {
            fAlert('검색어를 입력하세요');
            return false;
        }
        else if ($j("#searchText").val().length < 2) {
            fAlert('검색어를 2글자 이상 입력하세요');
            return false;
        } else {
            location.href = "/uipage/etc/search_all.aspx?SearText=" + $j("#searchText").val();
        }
    }	

    $j(document).ready(function () {
    });
</script>
                <!-- frame_Contents start -->
                <div class="btitle">
                    <h2 style="background: url(/images/perform/title_res_perform.gif) no-repeat;">
                        공연예매</h2>
                </div>
                <div class="line_40px">
                </div>
                <!-- con start -->
                <div class="con">
                    
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/[신승훈]LG아트센터_공연상세_310x320_0411.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                2014&nbsp;THE신승훈SHOW&nbsp;[LIMITED&nbsp;EDITION&nbsp;II]
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014년 5월 6일(화), 5월 8일(목)~11일(일) 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    5월 6일(화) 6pm/ 5월 8일(목)~9일(금) 8pm / 5월 10일(토) 6pm / 5월 11일(일) 5pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    VIP석 132,000원 / SR석 121,000원 / R석 99,000원 / S석 77,000원 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252159,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252159'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/rushhour-title_6.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                2014&nbsp;러시아워콘서트&nbsp;3.-&nbsp;조재혁의&nbsp;앙코르,앙코르!
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl01_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 5.13(화)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    전석 20,000원
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252134,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252134'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/9 mother and fatherland.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                얀&nbsp;클라타&nbsp;연출&nbsp;&lt;아버지&nbsp;나라의&nbsp;여인들&gt;
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl02_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.5.16(금)-17(토)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    금 8pm, 토 4pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252099,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252099'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/09 Jan Klata-A Piece on Mother and Fatherland.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201403/서울스프링 -LG수정_1.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                2014&nbsp;서울스프링실내악&nbsp;축제&nbsp;-&nbsp;가족음악회&nbsp;"올&nbsp;댓&nbsp;재즈"
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    5.18(일)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    오후 5시
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    전석 2만원
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252149,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252149'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201403/장사익 -LG아트센터_대표이미지_310x340.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                2014&nbsp;소리가&nbsp;춤을&nbsp;부른다_장사익과&nbsp;한국의&nbsp;명인들
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 5. 23(금)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    8PM
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    VIP 80,000 / R 60,000 / S 40,000 / A 25,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252150,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252150'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201402/공연배너(310-340).JPG'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                앤더슨&로:&nbsp;피아노&nbsp;판타지&nbsp;2014
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 5. 24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252151,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252151'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/LG ART HOMEPAGE 이브리.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                이브리&nbsp;기틀리스&nbsp;내한공연-Celebration&nbsp;of&nbsp;the&nbsp;Legacy
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 5. 25(일)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 120,000 / S 100,000 / A 70,000 / B 50,000 원
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252152,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252152'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201402/IvryGitlis_violin_1.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/사본 -뮤지컬이야기쇼10주년_포스터_최종_LG아트센터_310340.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                &lt;뮤지컬&nbsp;이야기쇼&nbsp;이석준과&nbsp;함께&gt;&nbsp;10주년
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 05. 26(월) 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    8pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    VIP 77,000 / R 55,000 / S 33,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252170,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252170'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201403/lgart_2CELLOS_서울 LG_인쇄용.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                투첼로스&nbsp;첫&nbsp;내한공연
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.5.27(화)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    오후 8시
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    VIP석 110,000원 / R석 99,000원 / S석 77,000원 / A석 55,000원
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252167,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252167'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/사본 -대표이미지(웹)_루드비히트리오.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                루드비히&nbsp;트리오&nbsp;콘서트
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 5. 29(목)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    8pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252169,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252169'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/홈피.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                필립&nbsp;드쿠플레&nbsp;무용단&nbsp;&lt;파노라마&gt;
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl10_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.5.31(토)-6.1(일)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    토 8pm, 일 4pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252100,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252100'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/10 Philippe Decoufle DCA Panorama.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/11 Thieves.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                도이체스&nbsp;테아터&nbsp;&lt;도둑들&gt;
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl11_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.6.4(수)-6(금)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    수,목 7:30pm / 금(6.6) 3pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252101,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252101'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/11 Detshes Theater Thieves.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/12 goran.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                고란&nbsp;브레고비치&nbsp;&lt;집시를&nbsp;위한&nbsp;샴페인&gt;
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl12_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.6.7(토)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 80,000 / S 60,000 / A 40,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252109,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252109'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/12 Goran Bregovic.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/디토-20140610ditto Joyofmozart_poster.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                2014&nbsp;디토&nbsp;페스티벌&nbsp;‘모차르트를&nbsp;찾아서’-Joy&nbsp;of&nbsp;Mozart
                                                            </td>
                                                            <td>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014년 6월 10일(화) 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    오후 8시
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 40,000 / S 20,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252160,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252160'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/13 desh_2.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                아크람&nbsp;칸&nbsp;&lt;데쉬&gt;
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl14_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.6.14(토)-15(일)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    토 7pm, 일 4pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252102,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252102'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/13 Akram Khan-Desh.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/14 tetzlaff.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                테츨라프&nbsp;콰르텟
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl15_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.10.2(목)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    8pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 80,000 / S 60,000 / A 40,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252113,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252113'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/14 Tetzlaff Quartet.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/15 yeree suh.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                소프라노&nbsp;서예리&nbsp;‘바로크&nbsp;&&nbsp;현대’
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl16_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.10.3(금)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252114,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252114'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/woyzeck.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                뮤지컬&nbsp;&lt;보이첵&gt;
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl17_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.10.9(목)-11.8(토)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    평일 8pm, 주말 3pm & 7pm (단, 10.9 7pm / 월요일 공연 없음)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 80,000 / S 60,000 / A 40,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252103,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252103'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/17 hogwood.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                크리스토퍼&nbsp;호그우드&nbsp;&&nbsp;바흐&nbsp;솔리스텐&nbsp;서울
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl18_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.11.9(일)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 90,000 / S 70,000 / A 50,000 / B 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252115,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252115'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201404/rushhour-title_7.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                2014&nbsp;러시아워콘서트&nbsp;4.-&nbsp;아마도이자람밴드
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl19_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014. 11.10(월)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    7pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    전석 20,000원
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252135,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252135'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/18 ladp_2.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                벵자멩&nbsp;밀피예&nbsp;&&nbsp;L.A.&nbsp;댄스&nbsp;프로젝트
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl20_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.11.13(목)-14(금)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    8pm
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 70,000 / S 50,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252104,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252104'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    <a href='mms://www.lgart.com//Down/Perf/201401/18 Benjamin Millepied-L.A. Dance Project.wmv'><img src='/images/com/btn_vod_s.gif' width='77' height='25' border='0'></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                            <table width="704" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="158" valign="top">
                                        <img src='/Down/Perf/201312/home_1.jpg'
                                            width="158" height="173" />
                                    </td>
                                    <td width="25">
                                    </td>
                                    <td width="521" valign="top">
                                        <table width="521" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="999999">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="81" height="26">
                                                    <img src="/images/perform/calender_rtit01.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="390">
                                                                김광보&nbsp;연출&nbsp;신작
                                                            </td>
                                                            <td>
                                                                <img src="/images/perform/icon_compas.gif" id="DgList_ctl21_Img1" width="57" height="25" align="absmiddle" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit02.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    2014.11.19(수)-30(일)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit03.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    평일 8pm, 토 3pm & 7pm, 일 4pm (월요일 공연 쉼)
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="26">
                                                    <img src="/images/perform/calender_rtit04.gif" width="44" height="25" />
                                                </td>
                                                <td>
                                                    R 50,000 / S 40,000 / A 30,000
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="1" colspan="2" bgcolor="dadada">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="17" colspan="2">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="25" colspan="2">
                                                    <a href='javascript:jsf_base_GoPerfSalePerf(252105,1);'>
                                                        <img src="/images/com/btn_reserve_s.gif" width="77" height="25" /></a> <a href='http://www.lgart.com/UIPage/perform/calender_view.aspx?seq=252105'>
                                                            <img src="/images/com/btn_detail_s.gif" width="77" height="25" /></a>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        
                </div>
                <!-- 콘텐츠 영역 끝 -->
                <!-- con end -->
            </div>
            
<div class="line_90px"></div>
<div class="footer">
    <img alt="" src="/images/com/footer.gif" border="0" usemap="#Maptop" />
    <map name="Maptop" id="Maptop">
        <area shape="circle" coords="952,40,17" href="javascript:jsf_com_GoToTop();"  />
        <area shape="rect" coords="509,22,552,39" href="http://www.lgart.com/uipage/etc/sitemap.aspx"  />
        <area shape="rect" coords="344,23,413,40" href="http://www.lgart.com/uipage/etc/service.aspx"  />
        <area shape="rect" coords="258,20,336,40" href="http://www.lgart.com/uipage/etc/private.aspx"  />
        <area shape="rect" coords="421,22,500,40" href="http://www.lgart.com/uipage/etc/linksite.aspx"  />
        <area shape="rect" coords="562,22,625,40" href="http://www.lgart.com/uipage/etc/contactus.aspx"  />
    </map>
</div>
<script type="text/javascript">
    $j(document).ready(function () {
    });
</script>



            <!-- frame_right end -->
        </div>
        <!-- container end -->
    </div>
    <!-- wrap end -->
    <script type="text/javascript">

        function res_perform() {
            var html = "/UIPage/perform/res_perform02.asp";

            SLB(html, 'iframe', 946, 610, false, true);
        }


        function js_lgart(n) { // 메뉴 이미지 바꾸기..
            for (i = 1; i <= 3; i++) {
                document.getElementById('fleet' + i).style.display = 'none';
                if (n == i) {
                    document.getElementById('fleet' + i).style.display = '';
                }
            }
        }
    </script>
    <div id="SLB_film" style="z-index: 99997; position: absolute; display: none; width: 100%;
        height: 100%; background-color: #000000; filter: Alpha(opacity=30); opacity: 0.1;
        -moz-opacity: 0.1;">
    </div>
    <div id="SLB_content" onclick="SLB();" align="center" style="z-index: 99999; position: absolute;
        width: 0px; height: 0px">
    </div>
    <div id="SLB_loading" onclick="SLB();" title="로딩중...클릭시 취소" style="display: none;
        width: 0px; height: 0px">
        Loading...
    </div>
    </form>
</body>
</html>
