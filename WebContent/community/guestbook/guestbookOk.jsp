<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="/menu_source/menubar.jsp" %>
<%
String root = request.getContextPath();

String seq = request.getParameter("seq");
String bcode = request.getParameter("bcode");
String pg = request.getParameter("pg");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title>글입력 성공</title>

<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="<%=root%>/css/skin_purple.css" type="text/css">
</head>

<body>
<font face='Sans-Serif'>

<table width="100%" cellpadding="6" cellspacing="2" border="0"
	bgcolor="#ffffff" style="border: #e1e1e1 solid 1px">
	<tr>
		<td class="bg_board_title" width="100%"><img
			src="<%=root%>/img/board/icon_arrow_08.gif" width="3" height="11"
			border="0" align="absmiddle" hspace="6" vspace="6"> <b></b>
		</td>
	</tr>
	<tr>
		<td height="1" bgcolor="#e1e1e1"
			style="overflow: hidden; padding: 0px;"></td>
	</tr>
	<tr>
		<td class="bg_menu" width="100%" style="padding: 25px" height="35"
			align="center"><b>방명록이 등록되었습니다</b><br>
		<br>

		<div align="center"><a href="<%=root%>/guest?act=list&bcode=4&pg=1"><img
         src="<%=root%>/img/board/b_wirtecf.gif" width="91" height="21"
         border="0" align="absmiddle" alt="작성한 글 확인" hspace="10"></a>
      
      </td>
	</tr>
</table>
<br>
</font>
</body>
</html>