<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>

<%
String root1 = request.getContextPath();
MemberDto memberDto = new MemberDto();
memberDto.setName("이종헌");
memberDto.setId("vfx333");
memberDto.setEmail1("vfx333");
memberDto.setEmail2("naver.com");
int bcode = 1;
session.setAttribute("userInfo", memberDto);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title> 게 시 판 </title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<link rel='stylesheet' type='text/css' href='<%=root1%>/menu_source/styles.css' />

<script type="text/javascript" src="<%=root1%>/js/board.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src='<%=root1%>/menu_source/menu_jquery.js'></script>

</head>

<body>

<center>

<h1 style="font:bold 200% Malgun Gothic,dotum,sans-serif; color:skyblue;">키 트 리 문 화 회 관</h1>

   <div class="main" >
      <div id='cssmenu'>
         <ul>
            <li class='active'><a href='index.jsp'><span>메인</span></a></li>
            <li class='has-sub'><a href=''><span>문화</span></a>
               <ul>
                  <li><a href='#'><span>공연</span></a></li>
                  <li><a href='#'><span>전시</span></a></li>
                  <li class='last'><a href=''><span>통합</span></a></li>
               </ul></li>
            <li class='active'><a href="<%=root1%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1"><span>커뮤니티</span></a></li>
            <li class='active'><a href=''><span>마이페이지</span></a></li>
            <li class='last'><a href=''><span>로그인</span></a></li>
         </ul>
      </div>
   </div>

</center>
</body>
</html>