<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
   
<%
String root1 = request.getContextPath();
MemberDto memberDto = new MemberDto();
memberDto.setNickname("관리자");
memberDto.setId1("admin");
memberDto.setPass1("admin");

session.setAttribute("userInfo", memberDto);
%>
<%@ include file="/menu_source/menubar.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title> :: 키트리문화회관 :: </title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

</head>

<body>

<center>

<a class="twitter-timeline"
   href="https://twitter.com/search?q=%23%EC%84%B8%EC%A2%85%EB%AC%B8%ED%99%94%ED%9A%8C%EA%B4%80"
   data-widget-id="463507045543464960">"#세종문화회관" 관련 트윗</a>
<script>
   !function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
            .test(d.location) ? 'http' : 'https';
      if (!d.getElementById(id)) {
         js = d.createElement(s);
         js.id = id;
         js.src = p + "://platform.twitter.com/widgets.js";
         fjs.parentNode.insertBefore(js, fjs);
      }
   }(document, "script", "twitter-wjs");
</script>

</center>
</body>
</html>