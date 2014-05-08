<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import = "com.kitri.member.model.MemberDto"
    import = "com.kitri.util.* , java.util.*"
    %>
<%
String root = request.getContextPath();

String bcode = request.getParameter("bcode");
String pg = request.getParameter("pg");
String key = StringCheck.nullToBlank(request.getParameter("key"));
String word = Encoder.isoToEuc(request.getParameter("word"));
bcode = "1";
MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
//String title = application.getAttribute(bcode) == null ? "게시판" : (String)application.getAttribute(bcode);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title> 게 시 판 </title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="<%=root%>/css/skin_purple.css" type="text/css">
<script type="text/javascript" src="<%=root%>/js/notice.js"></script>
</head>

<body>
<form name = "commonForm" method ="get" action ="">

<input type = "hidden" name ="act" value ="">

<input type = "hidden" name ="bcode" value ="<%=bcode%>">

<input type = "hidden" name ="pg" value ="<%=pg%>">

<input type = "hidden" name ="seq" value ="">

<input type = "hidden" name ="key" value ="<%=key%>">

<input type = "hidden" name ="word" value ="<%=word%>">

</form>
