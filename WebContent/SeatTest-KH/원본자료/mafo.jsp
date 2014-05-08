<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>마포아트센터</title>
<link rel="stylesheet" href="/css/main_default.css" type="text/css" />
<link rel="stylesheet" href="/css/ui-lightness/jquery-ui-1.7.3.custom.css" type="text/css" />
<script src="/common/js/mapo_default.js" language="javascript"></script>
<script src="/common/js/fl_png.js" language="javascript"></script>
<script src="/common/js/mapo_plan.js" language="javascript"></script>
<script src="/common/js/link.js" language="javascript"></script>

<script type="text/javascript" src="http://www.mapoartcenter.or.kr/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui-1.7.3.min.js"></script>
<script type="text/javascript" src="http://www.mapoartcenter.or.kr/common/js/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/slides.min.jquery.js"></script>
<script type="text/javascript" src="/js/jquery.rolling.js"></script>
<script type="text/javascript" src="/js/main2012.js"></script>

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function getCookie( name ) 
{ 
	var nameOfCookie = name + "="; 
	var x = 0; 
	while ( x <= document.cookie.length ) 
	{ 
		var y = (x+nameOfCookie.length); 
		if ( document.cookie.substring( x, y ) == nameOfCookie ) { 
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
				endOfCookie = document.cookie.length; 
				return unescape( document.cookie.substring( y, endOfCookie ) ); 
			}
		x = document.cookie.indexOf( " ", x ) + 1; 
		if ( x == 0 ) 
		break; 
	} 
	return ""; 
}
 
 function popup() {
  if(getCookie( "popup1" ) != "no" ){
        var child = null;
		child = window.open('popup_20140421.html','popup','left=0,top=0,width=550,height=570,scrollbars=no');
		child.opener = self; 
     }
}
//popup();

//-->
</script>

</head>
<body bgcolor="FFFFFF">
<div class="main_div">
	<div class="container">
			<div id="header">
			<div id="header-top">
			<ul>
			
				<li><a href="/new_contents/member/login.asp"><div id="top_btn_login"><span class="replace">로그인</span></div></a></li>
				<li><div id='top_btn_line'></div></li>
				<li><a href="/new_contents/member/register.asp"><div id="top_btn_register"><span class="replace">회원가입</span></div></a></li>
				<li><div id='top_btn_line'></div></li>
				<li><a href="/new_contents/customer/customer.asp"><div id="top_btn_customer"><span class="replace">고객센터</span></div></a></li>
				<li><div id='top_btn_line'></div></li>
				<li><a href="/new_contents/intro/schedule.asp"><div id="top_btn_sch"><span class="replace">전체일정</span></div></a></li>
				<li><div id='top_btn_line'></div></li>
				<li><a href="javascript:bookmark('마포아트센터','http://www.mapoartcenter.or.kr');"><div id="top_btn_fav"><span class="replace">즐겨찾기</span></div></a></li>
				
			</ul>
			</div>


			</div>

				<!--- 메뉴 시작--->
			<div id="navi">
			<div id="main_ci"><a href="./main.asp"><span class="replace">마포아트센터 홈</span></a></div>
				<ul id="main_menu">
				<li class='menu_blank'></li>
				<li><a href="/new_contents/calendar/calendar.asp" class="menu1"><span class="replace">공연/전시</span></a></li>
				<li id='menu_btn_line'></li>
				<li><a href="/new_contents/sports/pool.asp" class="menu2"><span class="replace">생활체육</span></a></li>
				<li id='menu_btn_line'></li>
				<li><a href="/new_contents/academy/academy1.asp" class="menu3"><span class="replace">교육문화</span></a></li>
				<li id='menu_btn_line'></li>
				<li><a href="/new_contents/local/local1.asp" class="menu4"><span class="replace">지역문화</span></a></li>
				<li id='menu_btn_line'></li>
				<li><a href="/new_contents/hall/hall.asp" class="menu5"><span class="replace">대관안내</span></a></li>
				<li id='menu_btn_line'></li>
				<li><a href="/new_contents/intro/intro.asp" class="menu6"><span class="replace">마포문화재단</span></a></li>
				<li id='menu_btn_line'></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=0" class="menu7"><span class="replace">커뮤니티</span></a></li>
				<li>
				<div id="main_sub_menu" >
				<ul class="sub_ul1">
				<li><a href="/new_contents/calendar/calendar.asp" class="sub_menu1"><span class="replace">공연전시일정</span></a></li>
				<li><a href="/new_contents/calendar/calendar.asp" class="sub_menu1-1"><span class="replace">주요공연전시</span></a></li>
				<li><a href="/new_contents/calendar/calendar_month.asp" class="sub_menu1-2"><span class="replace">월간일정</span></a></li>
				<li><a href="/new_contents/calendar/calendar_year.asp" class="sub_menu1-3"><span class="replace">년간일정</span></a></li>
				<li><a href="/new_contents/calendar/reserve.asp" class="sub_menu2"><span class="replace">예매안내</span></a></li>
				<li><a href="/new_contents/calendar/reserve.asp" class="sub_menu2-1"><span class="replace">예매방법</span></a></li>
				<li><a href="/new_contents/calendar/reserve2.asp" class="sub_menu2-2"><span class="replace">취소/환불</span></a></li>
				<li><a href="/new_contents/calendar/reserve3.asp" class="sub_menu2-3"><span class="replace">관람에티켓</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=4&P_TYPE=2" class="sub_menu2-4"><span class="replace">공연/전시소식</span></a></li>
				</ul>
				<ul class="sub_ul2">
				<li><a href="/new_contents/sports/pool.asp" class="sub_menu3"><span class="replace">프로그램</span></a></li>
				<li><a href="/new_contents/sports/pool.asp" class="sub_menu3-1"><span class="replace">수영장</span></a></li>
				<li><a href="/new_contents/sports/gym1.asp" class="sub_menu3-2"><span class="replace">종합체육관</span></a></li>
				<li><a href="/new_contents/sports/gym2.asp" class="sub_menu3-3"><span class="replace">소체육관</span></a></li>
				<li><a href="/new_contents/sports/health.asp" class="sub_menu3-4"><span class="replace">헬스</span></a></li>
				<li><a href="/new_contents/sports/golf.asp" class="sub_menu3-5"><span class="replace">골프</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=5&S_CATEGORY=2&P_TYPE=1" class="sub_menu4"><span class="replace">생활체육 소식</span></a></li>
				<li><a href="/new_contents/sports/register.asp" class="sub_menu5"><span class="replace">수강신청안내</span></a></li>
				</ul>

				<ul class="sub_ul3">
				<li><a href="/new_contents/academy/academy1.asp" class="sub_menu6"><span class="replace">프로그램</span></a></li>
				<li><a href="/new_contents/academy/academy1.asp" class="sub_menu6-1"><span class="replace">성인아카데미</span></a></li>
				<li><a href="/new_contents/academy/academy2.asp" class="sub_menu6-2"><span class="replace">어린이아카데미</span></a></li>
				<li><a href="/new_contents/academy/weekend.asp" class="sub_menu6-3"><span class="replace">주말학교</span></a></li>
				<li><a href="/new_contents/academy/network.asp" class="sub_menu6-4"><span class="replace">교육문화네트워크</span></a></li>

				<li><a href="/new_contents/academy/child.asp" class="sub_menu7"><span class="replace">유아체능단</span></a></li>
				<li><a href="/new_contents/academy/child2.asp" class="sub_menu6-5"><span class="replace">아이돌봄센터</span></a></li>
				<li><a href="/new_contents/academy/reading.asp" class="sub_menu34"><span class="replace">독서실</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=7&S_CATEGORY=1&P_TYPE=1" class="sub_menu8"><span class="replace">교육문화소식</span></a></li>
				<li><a href="/new_contents/academy/register.asp" class="sub_menu9"><span class="replace">수강신청안내</span></a></li>
				</ul>

				<ul class="sub_ul4">
				<li><a href="/new_contents/local/local1.asp" class="sub_menu10"><span class="replace">지역문화활력</span></a></li>
				<li><a href="/new_contents/local/local1.asp" class="sub_menu10-1"><span class="replace">동아리활성화</span></a></li>
				<!--<li><a href="/new_contents/local/local2.asp" class="sub_menu10-2"><span class="replace">동네문화활력소</span></a></li>-->
				<li><a href="/new_contents/local/local3.asp" class="sub_menu10-3"><span class="replace">찾아가는MAC콘서트</span></a></li>
				<li><a href="/new_contents/local/local4.asp" class="sub_menu11"><span class="replace">지역네트워크</span></a></li>
				<li><a href="/new_contents/local/local4.asp" class="sub_menu11-1"><span class="replace">MAC소셜마켓</span></a></li>
				<!--<li><a href="/new_contents/local/local5.asp" class="sub_menu11-2"><span class="replace">청년워크캠프</span></a></li>-->
				<li><a href="/new_contents/local/local6_01.asp" class="sub_menu17"><span class="replace">상주연고단체</span></a></li>
				<li><a href="/new_contents/local/local7.asp" class="sub_menu17-2"><span class="replace">구립합창단</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1332947949" class="sub_menu18"><span class="replace">지역문화소식</span></a></li>
				</ul>

				<ul class="sub_ul5">
				<li><a href="/new_contents/hall/hall.asp" class="sub_menu19"><span class="replace">공연장 대관</span></a></li>
				<li><a href="/new_contents/hall/hall.asp" class="sub_menu19-1"><span class="replace">대관시설/사용료</span></a></li>
				<li><a href="/new_contents/hall/hall2.asp" class="sub_menu19-3"><span class="replace">대관규정/절차</span></a></li>
				<li><a href="/new_contents/hall/hall3.asp" class="sub_menu19-2"><span class="replace">대관신청</span></a></li>
				<li><a href="/new_contents/hall/hall4.asp" class="sub_menu19-5"><span class="replace">대관현황</span></a></li>

				<li><a href="/new_contents/hall/gym.asp" class="sub_menu20"><span class="replace">체육관 대관</span></a></li>
				<li><a href="/new_contents/hall/gym.asp" class="sub_menu19-1"><span class="replace">대관시설/사용료</span></a></li>
				<li><a href="/new_contents/hall/gym2.asp" class="sub_menu19-3"><span class="replace">대관규정/절차</span></a></li>
				<li><a href="/new_contents/hall/gym3.asp" class="sub_menu19-2"><span class="replace">대관신청</span></a></li>

				</ul>

				<ul class="sub_ul6">
				<li><a href="/new_contents/intro/intro.asp" class="sub_menu21"><span class="replace">마포문화재단 소개</span></a></li>
				<li><a href="/new_contents/intro/intro2.asp" class="sub_menu21-1"><span class="replace">대표인사말</span></a></li>
				<li><a href="/new_contents/intro/intro3.asp" class="sub_menu21-2"><span class="replace">조직/기구</span></a></li>
				<li><a href="/new_contents/intro/intro4.asp" class="sub_menu21-3"><span class="replace">경영공시</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1333642744" class="sub_menu21-4"><span class="replace">입찰공고</span></a></li>
				<li><a href="/new_contents/intro/artcenter.asp" class="sub_menu22"><span class="replace">마포아트센터</span></a></li>
				<li><a href="/new_contents/intro/artcenter.asp" class="sub_menu22-1"><span class="replace">시설안내</span></a></li>
				<li><a href="/new_contents/intro/seat.asp" class="sub_menu22-2"><span class="replace">객석안내</span></a></li>
				<li><a href="/new_contents/intro/map.asp" class="sub_menu22-3"><span class="replace">오시는 길</span></a></li>
				<li><a href="/new_contents/intro/schedule.asp" class="sub_menu22-4"><span class="replace">전체일정</span></a></li>
				</ul>

				<ul class="sub_ul7">
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=0" class="sub_menu23"><span class="replace">재단소식</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207875745&B_CATEGORY=1" class="sub_menu23-1"><span class="replace">이벤트</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=11" class="sub_menu23-2"><span class="replace">뉴스레터</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=6" class="sub_menu23-3"><span class="replace">사진영상</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1310408632" class="sub_menu24"><span class="replace">홍보게시판</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1209341145" class="sub_menu33"><span class="replace">맥을 만나다(후기)</span></a></li>
				<li><a href="/new_contents/customer/customer.asp" class="sub_menu25"><span class="replace">고객센터</span></a></li>
				<li><a href="/new_contents/community/friends.asp" class="sub_menu32"><span class="replace">맥프렌즈</span></a></li>
				<li><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1209251076" class="sub_menu29"><span class="replace">자료실</span></a></li>
				</ul>
				</div>
				</li>
				</ul>

			</div>
			<!--- 메뉴 끝--->
			<!--- 메인탑 --->
						<div  id="mainTop_left"></div>
					<div  id="mainTop">
					<ul >
					<li id='mainTop_center'>
					<div id="slides">
					<div class="slides_container">
					<!--- 메인롤링이미지 --->
					
					<a href="http://mapoartcenter.or.kr/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=995&gotopage=1"  style="display:none;"><img src="/upload_file/show/special_movie.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					<a href="http://www.mapoartcenter.or.kr/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=985&gotopage=1&search_category=&searchstring="  style="display:none;"><img src="/upload_file/show/mainbanner_140502_6_7467.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					<a href="http://www.mapoartcenter.or.kr/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=994&gotopage=1&search_category=&searchstring="  style="display:none;"><img src="/upload_file/show/acadumy_680_260.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					<a href="http://mapoartcenter.or.kr/new_contents/calendar/sub_01_01_01.asp?idx=936&ticketcode=&mode=view"  style="display:none;"><img src="/upload_file/show/마이플레이스웹배너.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					<a href="http://www.mapoartcenter.or.kr/new_contents/calendar/sub_01_01_01.asp?idx=929&ticketcode=&mode=view&s_genre=아동극"  style="display:none;"><img src="/upload_file/show/지피광고0414.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					<a href="http://www.mapoartcenter.or.kr/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=979&gotopage=1&search_category=&searchstring="  style="display:none;"><img src="/upload_file/show/mainbanner_140402_8_5446.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					<a href="http://www.mapoartcenter.or.kr/new_contents/calendar/calendar.asp"  style="display:none;"><img src="/upload_file/show/2014광산팟콘롤링배너2.jpg" width="680" height="260" border="0" alt="메인배너" /></a>
					
					</div>
					</div>
					</li>
					<li id="mainTop_right">
<script type="text/javascript">


var headline_count;
 var headline_interval;
 var old_headline = 0;
 var current_headline = 0;

 $(document).ready(function(){

   headline_count = $("div.headline").size();
   $("div.headline:eq("+current_headline+")").css('top','5px');

   headline_interval = setInterval(headline_rotate,6000); //time in milliseconds
   $('#scrollup').hover(function() {
     clearInterval(headline_interval);
   }, function() {
     headline_interval = setInterval(headline_rotate,6000); //time in milliseconds
     headline_rotate();
   });
 });

 function headline_rotate() {
   current_headline = (old_headline + 1) % headline_count;
   $("div.headline:eq(" + old_headline + ")").animate({top: -205},"slow", function() {
     $(this).css('top','210px');
   });
   $("div.headline:eq(" + current_headline + ")").show().animate({top: 5},"slow");
   old_headline = current_headline;
 }

</script>
<style>
#scrollup {
   position: relative;
   overflow: hidden;
   height: 24px;
   width: 220px;
   border-top: 1px solid #c9c9c9;


 }
 .headline {
   position: absolute;
   top: 210px;
   left: 5px;
   height: 22px;
   width:210px;

 }

</style>
		<div id="s_cal">
	<table cellspacing="0" cellpadding="0" width="100%" style="border:1px solid #cecece">
	<tr>
		<td><img src="/images/main_2012/s_cal_title.png" alt="오늘의 일정" /></td>
	</tr>
	<tr>
		<td align="center">
		<p align="center">
		<a href="?B_CODE=&B_CATEGORY=&idx=&c_year=2014&c_month=4">
		<img src="/images/main_2012/calendar/calendar_prev.png" alt="이전달" border="0" style="margin:5px;" /></a>
		<img src="/images/main_2012/calendar/calendar_y_2014.png" alt="year" border="0" align="absmiddle" style="margin:5px;"/>
		<img src="/images/main_2012/calendar/calendar_m_05.png" alt="month" border="0" style="margin:5px;" />
		<a href="?B_CODE=&B_CATEGORY=&idx=&c_year=2014&c_month=6">
		
		<img src="/images/main_2012/calendar/calendar_next.png" alt="다음달" border="0" style="margin:5px;" />
		</a>
		</P>
		</td>
	</tr>
	<tr>
		<td align="center">
		<p align="center">
		<img src="/images/main_2012/calendar/calendar_day_title.png" width="212" height="12" alt="" />
		</p>
		</td>
	</tr>
	<tr>
		<td align="center">
		<div id="s_cal_content">
		<table cellspacing="0" cellpadding="0" border="0" align='center'>
		
		<tr valign="top">
		
	<td width='28' height='25' align='center'>
	

			</td>
			
	<td width='28' height='25' align='center'>
	

			</td>
			
	<td width='28' height='25' align='center'>
	

			</td>
			
	<td width='28' height='25' align='center'>
	

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList1'><img src='/images/main_2012/calendar/cal_1.png' alt='' border='0' /></a><div id='popup_otherday1' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList2'><img src='/images/main_2012/calendar/cal_2.png' alt='' border='0' /></a><div id='popup_otherday2' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList3'><img src='/images/main_2012/calendar/cal_3.png' alt='' border='0' /></a><div id='popup_otherday3' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	</tr>

					
		<tr valign="top">
		
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList4'><img src='/images/main_2012/calendar/cal_4.png' alt='' border='0' /></a><div id='popup_otherday4' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList5'><img src='/images/main_2012/calendar/cal_5.png' alt='' border='0' /></a><div id='popup_otherday5' title='공연정보' style='display:none'><img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=926">뮤지컬 버블쇼</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList6'><img src='/images/main_2012/calendar/cal_6.png' alt='' border='0' /></a><div id='popup_otherday6' title='공연정보' style='display:none'><img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=935">화요일오후3시Ⅹ<인디 애니단편선></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=926">뮤지컬 버블쇼</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList7'><img src='/images/main_2012/calendar/cal_7.png' alt='' border='0' /></a><div id='popup_otherday7' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList8'><img src='/images/main_2012/calendar/cal_8_over.png' alt='' border='0' /></a><div id='popup_otherday8' title='공연정보' style='display:none'><img src='/images/calendar/ico_ext.gif' alt='기타' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=939">강신주,김어준의 [킬링캠프]</a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList9'><img src='/images/main_2012/calendar/cal_9.png' alt='' border='0' /></a><div id='popup_otherday9' title='공연정보' style='display:none'><img src='/images/calendar/ico_ext.gif' alt='기타' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=939">강신주,김어준의 [킬링캠프]</a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList10'><img src='/images/main_2012/calendar/cal_10.png' alt='' border='0' /></a><div id='popup_otherday10' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_ext.gif' alt='기타' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=939">강신주,김어준의 [킬링캠프]</a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	</tr>

					
		<tr valign="top">
		
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList11'><img src='/images/main_2012/calendar/cal_11.png' alt='' border='0' /></a><div id='popup_otherday11' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList12'><img src='/images/main_2012/calendar/cal_12.png' alt='' border='0' /></a>
	<div id="popup_otherday12" title="공연정보" style="display:none">공연정보가 없습니다.</div>
	

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList13'><img src='/images/main_2012/calendar/cal_13.png' alt='' border='0' /></a><div id='popup_otherday13' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=936">화요일오후3시XI <마이 플레이스></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList14'><img src='/images/main_2012/calendar/cal_14.png' alt='' border='0' /></a><div id='popup_otherday14' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList15'><img src='/images/main_2012/calendar/cal_15.png' alt='' border='0' /></a><div id='popup_otherday15' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList16'><img src='/images/main_2012/calendar/cal_16.png' alt='' border='0' /></a><div id='popup_otherday16' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList17'><img src='/images/main_2012/calendar/cal_17.png' alt='' border='0' /></a><div id='popup_otherday17' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	</tr>

					
		<tr valign="top">
		
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList18'><img src='/images/main_2012/calendar/cal_18.png' alt='' border='0' /></a><div id='popup_otherday18' title='공연정보' style='display:none'><img src='/images/calendar/ico_drama.gif' alt='연극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=941">연극 <기막힌 동거></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList19'><img src='/images/main_2012/calendar/cal_19.png' alt='' border='0' /></a>
	<div id="popup_otherday19" title="공연정보" style="display:none">공연정보가 없습니다.</div>
	

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList20'><img src='/images/main_2012/calendar/cal_20.png' alt='' border='0' /></a><div id='popup_otherday20' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=943">화요일오후3시 특별상영Ⅰ<파수꾼></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=937">화요일오후3시XII <탐욕의 제국></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList21'><img src='/images/main_2012/calendar/cal_21.png' alt='' border='0' /></a><div id='popup_otherday21' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList22'><img src='/images/main_2012/calendar/cal_22.png' alt='' border='0' /></a><div id='popup_otherday22' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList23'><img src='/images/main_2012/calendar/cal_23.png' alt='' border='0' /></a><div id='popup_otherday23' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList24'><img src='/images/main_2012/calendar/cal_24.png' alt='' border='0' /></a><div id='popup_otherday24' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	</tr>

					
		<tr valign="top">
		
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList25'><img src='/images/main_2012/calendar/cal_25.png' alt='' border='0' /></a><div id='popup_otherday25' title='공연정보' style='display:none'><img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList26'><img src='/images/main_2012/calendar/cal_26.png' alt='' border='0' /></a>
	<div id="popup_otherday26" title="공연정보" style="display:none">공연정보가 없습니다.</div>
	

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList27'><img src='/images/main_2012/calendar/cal_27.png' alt='' border='0' /></a><div id='popup_otherday27' title='공연정보' style='display:none'><img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=944">화요일오후3시 특별상영Ⅱ</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=938">화요일오후3시XIII <잉여들의 히치하이킹></a><br />
	<img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList28'><img src='/images/main_2012/calendar/cal_28.png' alt='' border='0' /></a><div id='popup_otherday28' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList29'><img src='/images/main_2012/calendar/cal_29.png' alt='' border='0' /></a><div id='popup_otherday29' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList30'><img src='/images/main_2012/calendar/cal_30.png' alt='' border='0' /></a><div id='popup_otherday30' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	<td width='28' height='25' align='center'>
	<a href='#' id='otherdayList31'><img src='/images/main_2012/calendar/cal_31.png' alt='' border='0' /></a><div id='popup_otherday31' title='공연정보' style='display:none'><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br />
	<img src='/images/calendar/ico_child.gif' alt='아동극' align='absbottom' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=929">어린이뮤지컬 <목 짧은 기린 지피></a><br />
	</div>

			</td>
			
	</tr>

					
					<tr valign="top">
					<td colspan="7">
					<div id="scrollup" >



	<div class="headline" ><img src='/images/calendar/ico_ext.gif' alt='기타' align='absmiddle' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=939">강신주,김어준의 [킬링캠프]</a></div>

	



	<div class="headline" ><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absmiddle' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a></div>

	</div>





					</td>
					</tr>
					</table>

						</td>
						</tr>
						</table>

						</div>
						<div id="popup_today" title="오늘의 공연" style="display:none"><img src='/images/calendar/ico_ext.gif' alt='기타' align='absmiddle' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=939">강신주,김어준의 [킬링캠프]</a><br /><img src='/images/calendar/ico_exhibit.gif' alt='전시' align='absmiddle' /> <a href="/new_contents/calendar/sub_01_01_01.asp?idx=934">버블사이언스 - 교육놀이체험</a><br /></div>

</li>
					</ul>
					</div>
			<!--- 메인탑 끝--->



			<div id="mainContent">

		<div id="quicklink">
			<ul class="quicklink_title">
				<li ><img src="/images/main_2012/qlink_title.png" alt="Quick Link" /></li>
				
				<li><a href="/new_contents/member/login.asp" id="q_login"><span class="replace">로그인</span></a></li>
				
				<li id="qlink_dot"></li>
			</ul>
			<ul id="quicklink_menu">
				<li><a href="/new_contents/calendar/calendar.asp"  id="quicklink_menu1"><span class="replace">공연예매</span></a></li>
				<li><a href="/new_contents/calendar/reserve.asp"  id="quicklink_menu2"><span class="replace">예매안내</span></a></li>
				<li><a href="javascript:alert('로그인후 수강신청이 가능합니다.');location.href='/new_contents/member/login.asp?ret_url=/sports/sports_pool.asp'" id="quicklink_menu3"><span class="replace">생활체육문화강좌신청</span></a></li>
				<li><a href="/new_contents/hall/hall.asp"  id="quicklink_menu4"><span class="replace">대관안내</span></a></li>
				<li><a href="/new_contents/customer/customer.asp"  id="quicklink_menu5"><span class="replace">고객센터</span></a></li>
				<li><a href="new_contents/customer/customer.asp"  id="quicklink_menu6"><span class="replace">연락처안내</span></a></li>
				<li><a href="/new_contents/intro/map.asp"  id="quicklink_menu7"><span class="replace">오시는 길</span></a></li>
				<li><a href="/new_contents/intro/bus.asp"  id="quicklink_menu8"><span class="replace">셔틀버스 안내</span></a></li>
			</ul>
		</div>

		<div id="mainnews">
			<ul class="mainnews_title">
				<li ><a href="/new_contents/calendar/calendar.asp"  id="tab_menu1"><span class="replace">공연/전시</span></a></li>
				<li ><a href="/new_contents/sports/pool.asp"  id="tab_menu2"><span class="replace">생활체육</span></a></li>
				<li ><a href="/new_contents/academy/academy1.asp"  id="tab_menu3"><span class="replace">교육문화</span></a></li>
				<li ><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1332947949"  id="tab_menu4"><span class="replace">지역문화</span></a></li>
				<li ><a href="/new_contents/intro/schedule.asp"  id="tab_menu5"><span class="replace">전체보기</span></a></li>
			</ul>
			<ul class="mainnews_content">
				<li>
				<table width="430" height="154" border="0" cellspacing="0" id="MainMonthly1">
				<tr>	<td width="100" valign="top"><div id="showDiv_01_0" style="display:"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=936&ticketcode=&mode=view" ><img src="/upload_file/show/크기변환_2.마이플레이스(앞).jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_01_1" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=929&ticketcode=&mode=view" ><img src="/upload_file/show/지피포스터_최종_2차기간.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_01_2" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=934&ticketcode=&mode=view" ><img src="/upload_file/show/146853.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_01_3" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=937&ticketcode=&mode=view" ><img src="/upload_file/show/크기변환_3.탐욕의제국(앞).jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_01_4" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=931&ticketcode=&mode=view" ><img src="/upload_file/show/Rs_1.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_01_5" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=941&ticketcode=&mode=view" ><img src="/upload_file/show/기막힌동거_230.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_01_6" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=939&ticketcode=&mode=view" ><img src="/upload_file/show/20140407-14.jpg" width="117" height="142" class="img_border" alt='' /></a></div></td>	<td width="8"></td>	<td width="320" valign="top">		<table border="0" cellspacing="0" cellpadding="0" ><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=936&ticketcode=&mode=view" onmouseover="showLayer1('0')"><span class="main_titleText">[영화]</span>&nbsp;화요일오후3시XI <마이 플레이스></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=929&ticketcode=&mode=view" onmouseover="showLayer1('1')"><span class="main_titleText">[아동극]</span>&nbsp;어린이뮤지컬 <목 짧은 기린 지피></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=934&ticketcode=&mode=view" onmouseover="showLayer1('2')"><span class="main_titleText">[전시]</span>&nbsp;버블사이언스 - 교육놀이체험</td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=937&ticketcode=&mode=view" onmouseover="showLayer1('3')"><span class="main_titleText">[영화]</span>&nbsp;화요일오후3시XII <탐욕의 제국></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=931&ticketcode=&mode=view" onmouseover="showLayer1('4')"><span class="main_titleText">[콘서트]</span>&nbsp;광산팟콘#6 <옥상달빛, 랄라스윗></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=941&ticketcode=&mode=view" onmouseover="showLayer1('5')"><span class="main_titleText">[연극]</span>&nbsp;연극 <기막힌 동거></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=939&ticketcode=&mode=view" onmouseover="showLayer1('6')"><span class="main_titleText">[기타]</span>&nbsp;강신주,김어준의 [킬링캠프]</td></tr>		</table>	</td></tr>
                </table>
				</li>
				<li>
				<table width="425" height="154" border="0" cellspacing="0" style="display:none;" id="MainMonthly2">
				<tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=352&conType=2"><span class="main_titleText">[종합체육관-어린이스포츠클럽]</span>&nbsp;검도교실B(초등생)(19:00~19:50)</a></td></tr><tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=351&conType=3"><span class="main_titleText">[헬스장-전일반]</span>&nbsp;신규단체강습(07:00/ 08:00/ 10:00
1..)</a></td></tr><tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=350&conType=2"><span class="main_titleText">[소체육관-어린이 프로그램]</span>&nbsp;측만증요가(19:00~19:50)</a></td></tr><tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=349&conType=2"><span class="main_titleText">[종합체육관-배드민턴]</span>&nbsp;오후배드민턴_A레슨(초급)+   ..(12:00~12:50)</a></td></tr><tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=348&conType=2"><span class="main_titleText">[종합체육관-배드민턴]</span>&nbsp;오후배드민턴_A레슨(중급)+   ..(12:00~12:50)</a></td></tr><tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=347&conType=2"><span class="main_titleText">[종합체육관-어린이스포츠클럽]</span>&nbsp;실내테니스(07:00~08:50)</a></td></tr><tr ><td height="18"><a href="/new_contents/sports/sub_01_02_view.asp?idx=344&conType=4"><span class="main_titleText">[골프장-주말골프]</span>&nbsp;성인토요골프E(16:00-17:50)</a></td></tr>
                </table>
				</li>
				<li>
				<table width="425" height="154" border="0" cellspacing="0" style="display:none;" id="MainMonthly3">
                 <tr>
                 <td width="100%">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=490&conType=1"><span class="main_titleText">[인문교양]</span>&nbsp;'빛으로 쓰는 일기: 사진일기'</a></td></tr><tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=489&conType=1"><span class="main_titleText">[창의력]</span>&nbsp;아이노래-뮤직스쿨</a></td></tr><tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=484&conType=1"><span class="main_titleText">[두뇌개발]</span>&nbsp;모모키드 미술가베</a></td></tr><tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=479&conType=1"><span class="main_titleText">[생활백과]</span>&nbsp;힐링 도자기</a></td></tr><tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=475&conType=1"><span class="main_titleText">[인문교양]</span>&nbsp;한국 영화와 인문학</a></td></tr><tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=467&conType=1"><span class="main_titleText">[신체활동]</span>&nbsp;당나귀똥</a></td></tr><tr ><td height="21"><a href="/new_contents/academy/sub_01_02_view.asp?idx=465&conType=1"><span class="main_titleText">[신체활동]</span>&nbsp;마당에서 노는 아이</a></td></tr>
                    </table>
                    </td>
               </tr>
               </table>
				</li>
				<li>
				<table width="425" height="154" border="0" cellspacing="0" style="display:none;" id="MainMonthly4">
                 <tr>
                 <td width="100%">
                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                   <tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=980&gotopage=1">마포 꿈의 오케스트라 교육단원 모집 공고</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=974&gotopage=1">서강나루무대 상반기 사용 신청공고</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=971&gotopage=1">2014 마포꿈의오케스트라 운영인력 모집 공고</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=970&gotopage=1">2014 마포꿈의오케스트라 교육단원 모집 공고</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=968&gotopage=1">서강나루무대 OPEN 기념</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=962&gotopage=1">지역예술단체 풀(POOL) 조사</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText"></span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=959&gotopage=1">「2014 찾아가는 문화공연」공연 신청 받습니다!</A></td></tr>
                 </table>
                 </td>
                 </tr>
                 </table>
				</li>
				<li>
				<table width="425" height="154" border="0" cellspacing="0" style="display:none;" id="MainMonthly5">
                 <tr>
                 <td width="100%">
				 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>	<td width="100" valign="top"><div id="showDiv_02_0" style="display:"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=944&ticketcode=&mode=view" ><img src="/upload_file/show/크기변환_1.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_02_1" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=943&ticketcode=&mode=view" ><img src="/upload_file/show/크기변환_파수꾼.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_02_2" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=942&ticketcode=&mode=view" ><img src="/upload_file/show/송영주_230.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_02_3" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=941&ticketcode=&mode=view" ><img src="/upload_file/show/기막힌동거_230.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_02_4" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=940&ticketcode=&mode=view" ><img src="/upload_file/show/사운드페스티벌2014_230.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_02_5" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=939&ticketcode=&mode=view" ><img src="/upload_file/show/20140407-14.jpg" width="117" height="142" class="img_border" alt='' /></a></div><div id="showDiv_02_6" style="display:none"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=938&ticketcode=&mode=view" ><img src="/upload_file/show/크기변환_4.잉여들(앞).jpg" width="117" height="142" class="img_border" alt='' /></a></div></td>	<td width="8"></td>	<td width="320" valign="top">		<table border="0" cellspacing="0" cellpadding="0" ><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=944&ticketcode=&mode=view" onmouseover="showLayer2('0')"><span class="main_titleText">[영화]</span>&nbsp;화요일오후3시 특별상영Ⅱ</td></tr><tr><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=943&ticketcode=&mode=view" onmouseover="showLayer2('1')"><span class="main_titleText">[영화]</span>&nbsp;화요일오후3시 특별상영Ⅰ<파수꾼></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=942&ticketcode=&mode=view" onmouseover="showLayer2('2')"><span class="main_titleText">[음악회]</span>&nbsp;송영주 뉴욕 쿼텟 2014 <BETWEEN>투어</td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=941&ticketcode=&mode=view" onmouseover="showLayer2('3')"><span class="main_titleText">[연극]</span>&nbsp;연극 <기막힌 동거></td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=940&ticketcode=&mode=view" onmouseover="showLayer2('4')"><span class="main_titleText">[콘서트]</span>&nbsp;사운드 페스티벌 2014</td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=939&ticketcode=&mode=view" onmouseover="showLayer2('5')"><span class="main_titleText">[기타]</span>&nbsp;강신주,김어준의 [킬링캠프]</td></tr><tr ><td height="21"><a href="/new_contents/calendar/sub_01_01_01.asp?idx=938&ticketcode=&mode=view" onmouseover="showLayer2('6')"><span class="main_titleText">[영화]</span>&nbsp;화요일오후3시XIII <잉여들의 히치하이킹></td></tr>		</table>	</td></tr>
				</table>
                 </td>
                 </tr>
                 </table>
				</li>

			</ul>
		</div>
		<div id="mainnotice">
			<ul class="mainnotice_title">
				<li ><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=0" id="tab_menu6"><span class="replace">재단소식</span></a></li>
				<li ><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=11" id="tab_menu7"><span class="replace">뉴스레터</span></a></li>
				<li ><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=6"  id="tab_menu8"><span class="replace">사진</span></a></li>
				<li ><a href="/new_contents/board/list_2.asp?B_CODE=BOARD_1207683401&B_CATEGORY=6"  id="tab_menu9"><span class="replace">영상</span></a></li>
			</ul>
			<ul class='mainnotice_content'>
				<li>
				<table width="324" height="114" border="0" cellspacing="0"  id="MainNotice1">
				<tr ><ul><tr ><td align="left" height="20"><span class="main_titleText">[채용]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1333642744&IDX=51&gotopage=1">마포문화재단 기간제 근로자 채용모집 재..</A></td></tr><tr ><ul><tr ><td align="left" height="20"><span class="main_titleText">[입찰]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1377200407&IDX=5&gotopage=1">[입찰공고]마포아트센터 공연장 음향소모..</A></td></tr><tr ><ul><tr ><td align="left" height="20"><span class="main_titleText">[자료실]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1209251076&IDX=16&gotopage=1">2014 연남동 생활문화자원 기초조사보고서</A></td></tr><tr ><ul><tr ><td align="left" height="20"><span class="main_titleText">[생활체육]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=996&gotopage=1">2014년 6월 체육회원 모집(독서실 포함)</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[공지]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=995&gotopage=1"><화요일 오후 3시> 특별 상영 안내</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[아카데미]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=994&gotopage=1">2014 아카데미 맥 여름학기(26기) 수강 및..</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[공지]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=992&gotopage=1">2014 마포꿈의오케스트라 교육단원 합격자..</A></td></tr>
                </table>
				</li>
				<li>
				<table width="324" height="114" border="0" cellspacing="0"  id="MainNotice2" style="display:none;">
				<tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=987&gotopage=1">마포문화재단 News Letter 2014.04월호</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=969&gotopage=1">마포문화재단 News Letter 2014.03월호</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=956&gotopage=1">마포문화재단 News Letter 2014.02월호</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=947&gotopage=1">마포문화재단 News Letter 2014.01월호</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=938&gotopage=1">마포문화재단 News Letter 2013.12월호</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=928&gotopage=1">마포문화재단 News Letter 2013.11월호</A></td></tr><tr ><td align="left" height="20"><span class="main_titleText">[뉴스레터]</span>&nbsp;<A HREF="/new_contents/board/view_1.asp?B_CATEGORY=11&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=911&gotopage=1">마포문화재단 News Letter 2013.10월호</A></td></tr>
                </table>
				</li>
				<li>
				<table width="314" height="114" border="0" align='center' cellspacing="0" cellpadding="0" id="MainNotice3" style="display:none;">
												<colgroup>
												<col width="106px" />
												<col width="6px" />
												<col width="106px" />
												<col width="6px" />
												<col width="106px" />
												</colgroup>
                                                    <tr>
                                                        <td height="10" colspan="5"></td>
                                                    </tr>
													
                                                    <tr>
													
                                                        <td valign="top" align="center"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=1&B_CODE=BOARD_1207683401&IDX=855&gotopage=1"><img src="/upload_file/BOARD_1207683401/h.bmp" width="100" height="100" title='"[재]마포문화재단, 인제군 문화재단 / 마포의료생협과 업무협약 체결"' class="border2p" alt='' /></a></td>
													<td width="13"></td>
                                                        <td valign="top" align="center"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=1&B_CODE=BOARD_1207683401&IDX=794&gotopage=1"><img src="/upload_file/BOARD_1207683401/20121106.jpg" width="100" height="100" title='"서울특별시 교육감배 장애학생 체육대회 수상!"' class="border2p" alt='' /></a></td>
													<td width="13"></td>
                                                        <td valign="top" align="center"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=1&B_CODE=BOARD_1207683401&IDX=664&gotopage=1"><img src="/upload_file/BOARD_1207683401/1.bmp" width="100" height="100" title='"마포구 어린이집 연합회와의 협약식"' class="border2p" alt='' /></a></td>
													
                                                    </tr>
                                                    <tr align="left">
													
                                                        <td height="28" align="center" valign="middle"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=1&B_CODE=BOARD_1207683401&IDX=855&gotopage=1"><span class="main_titleText">[재]마포문화재..</span></a></td>
													<td width="13"></td>
                                                        <td height="28" align="center" valign="middle"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=1&B_CODE=BOARD_1207683401&IDX=794&gotopage=1"><span class="main_titleText">서울특별시 교육..</span></a></td>
													<td width="13"></td>
                                                        <td height="28" align="center" valign="middle"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=1&B_CODE=BOARD_1207683401&IDX=664&gotopage=1"><span class="main_titleText">마포구 어린이집..</span></a></td>
													
                                                    </tr>
													
                                                </table>

				</li>
				<li>
				<table width="314" height="114" border="0" align="center" cellspacing="0" cellpadding="0" id="MainNotice4" style="display:none;">

                                                    <tr>
                                                        <td height="14" colspan="2"></td>
                                                    </tr>
				<tr>	<td align="center" width='110' style='text-align:center;'><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=2&B_CODE=BOARD_1207683401&IDX=826&gotopage=1"><img src="http://img.youtube.com/vi/3XvE1fBWUTc/2.jpg" title='주민아마추어단 2기 <우리공연해요>' width='98' alt='' /></a>	</td>	<td align="center" width='110' style='text-align:center;'><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=2&B_CODE=BOARD_1207683401&IDX=729&gotopage=1"><img src="http://img.youtube.com/vi/JUZ3MQCJ5do/2.jpg" title='토요문화학교 <인디가 좋아>' width='98' alt='' /></a>	</td>	<td align="center" width='110' style='text-align:center;'><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=2&B_CODE=BOARD_1207683401&IDX=728&gotopage=1"><img src="http://img.youtube.com/vi/NyP5efFxWsI/2.jpg" title='마포커뮤니티마켓<들樂날樂>' width='98' alt='' /></a>	</td></tr><tr>	<td height="14" width='110' style='text-align:center;'>		<span class="main_titleText"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=2&B_CODE=BOARD_1207683401&IDX=826&gotopage=1">주민아마추어단..</a></span>	</td>	<td height="14" width='110' style='text-align:center;'>		<span class="main_titleText"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=2&B_CODE=BOARD_1207683401&IDX=729&gotopage=1">토요문화학교 <..</a></span>	</td>	<td height="14" width='110' style='text-align:center;'>		<span class="main_titleText"><a href="/new_contents/board/view_1.asp?B_CATEGORY=6&S_CATEGORY=2&B_CODE=BOARD_1207683401&IDX=728&gotopage=1">마포커뮤니티마..</a></span>	</td></tr>

                </table>
				</li>
			</ul>
		</div>
	<div id="banner_customer">
	    <img src="/images/main_2012/banner_customer.png" alt="고객상담센터" />
		<!------a href="http://www.mospa.go.kr/gpms/view/korea/korea_index_vm.jsp?cat=pat&menu=pat_04_05_02" target="_blank"><img src="/images/main_2012/banner_mospa.gif" class="mospa" alt="공직비리 익명신고" /></a><br />
		<a href="http://www.youth.go.kr" target="_blank"><img src="/images/main_2012/banner_youth.gif" class="youth" alt="이동숙박형 청소년활동 사전신고제 안내" /></a---->
	</div>
	<div id="mainevent">
		<ul class="mainevent_title">
				<li><img src="/images/main_2012/mainevent_title.png" alt="EVENT&POP 마포아트센터와 푸짐하고 다양한 혜택을 누리세요." /></li>
		</ul>
				<ul class="mainevent_content">
					<!----li id="pop_content"><a href="http://www.mapoartcenter.or.kr/new_contents/board/view_1.asp?B_CATEGORY=0&S_CATEGORY=0&B_CODE=BOARD_1207683401&IDX=961&gotopage=1"><img src="/images/main/pop_content_20140307.jpg" alt="2014 하반기 정시대관 공고" /></a></li---->
					<li id="pop_content"><img src="/images/main_2012/sub_05/main_pop.png" width="200" height="130" alt="마포아트센터에 다있다" /></li>
				<div class="slides_container">
				
				</div>
				</ul>
				<ul  id="event_content">
				<li>
				<table>
				<tr ><td align="center"><A HREF="/new_contents/board/view_1.asp?B_CODE=BOARD_1207875745&IDX=78&gotopage=1"><img src='/upload_file/BOARD_1207875745/200-60.jpg' width="200px" height="60px" alt='' /></A></td><tr><td height="5"></td></tr><tr ><td align="center"><A HREF="/new_contents/board/view_1.asp?B_CODE=BOARD_1207875745&IDX=77&gotopage=1"><img src='/upload_file/BOARD_1207875745/outback_banner.jpg' width="200px" height="60px" alt='' /></A></td><tr><td height="5"></td></tr>
				</table>
				</li>
				</ul>

		</ul>
	</div>
		<div id="mainright_banner3">
			<ul>
				<li><a href="/new_contents/sports/pool.asp"  id="mainright_menu1"><span class="replace">생활체육 안내</span></a></li>
				<li><a href="/new_contents/academy/academy1.asp"  id="mainright_menu2"><span class="replace">문화강좌 안내</span></a></li>
			</ul>
			<ul>
				<li><a href="/new_contents/hall/hall.asp"  id="mainright_menu3"><span class="replace">대관안내</span></a></li>
				<li><a href="javascript:alert('로그인후 수강신청이 가능합니다.');location.href='/new_contents/member/login.asp'" id="mainright_menu4"><span class="replace">생활체육문화강좌신청</span></a></li>
			</ul>
			<ul >
				<li><a href="http://twitter.com/mapoartscenter"  target="_blank" id="mainright_menu5"><span class="replace">마포아트센터 트위터</span></a></li>
				<li><a href="http://www.facebook.com/mapoartscenter"  target="_blank" id="mainright_menu6"><span class="replace">마포아트센터 페이스북</span></a></li>
				<li><a href="http://blog.naver.com/arthallmac"  target="_blank" id="mainright_menu7"><span class="replace">마포아트센터 네이버 블로그</span></a></li>
				<!--<li><a href="http://cafe.daum.net/mapoartcenter"  target="_blank" id="mainright_menu8"><span class="replace">마포아트센터 다음 카페</span></a></li>-->
			</ul>
		</div>
	<div  id="mainbottom_banner_bg">
		<div id="mainbottom_banner1">
		<a href="https://www.ticketnara.co.kr/TicketNara/plugin_manual_install.jsp"  target="_blank" id="mainbottom_menu1"><span class="replace">결재플러그인 설치</span></a>
		</div>
		<ul id="mainbottom_banner2">



		</ul>
	</div>

	</div>
<div id="footer2">
		<ul >
				<li><a href="/new_contents/intro/intro.asp"  id="footer_menu1"><span class="replace">재단소개</span></a></li>
				<li class="footer_line"></li>
				<li><a href="/new_contents/member/privacy.asp"  id="footer_menu2"><span class="replace">개인정보처리방침</span></a></li>
				<li class="footer_line"></li>
				<li><a href="/new_contents/member/term.asp"  id="footer_menu3"><span class="replace">이용약관</span></a></li>
				<li class="footer_line"></li>
				<li><a href="javascript:onclick=void window.open('/contents/sub_07/sub_30_30.asp','','width=501,scrollbars=no,height=384,status=no')" id="footer_menu4"><span class="replace">이메일집단수집거부</span></a></li>
				<li class="footer_line"></li>
				<li><a href="http://210.16.200.135"  target="_blank" id="footer_menu5"><span class="replace">맥하드</span></a></li>
				<li class="footer_line"></li>
				<li><a href="/new_contents/customer/sitemap.asp"  id="footer_menu6"><span class="replace">사이트맵</span></a></li>
				<li class="footer_line"></li>
				<li><a href="http://mail3.mainticket.co.kr/" target="_blank" id="footer_menu7"><span class="replace">웹메일</span></a></li>
			</ul>
</div>

	<!------- container--------->
	</div>

	<!------- main_div--------->
</div>

<script type="text/javascript">
var JsHost = (("https:" == document.location.protocol) ? "https://" : "http://");
var uname = escape('마포아트센터');
document.write(unescape("%3Cscript id='log_script' src='" + JsHost + "mapoartcenter.weblog.cafe24.com/weblog.js?uid=mapoartcenter&uname="+uname+"' type='text/javascript'%3E%3C/script%3E"));
</script>

</body>
</html>


