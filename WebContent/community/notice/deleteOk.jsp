<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String root = request.getContextPath();

String seq = request.getParameter("seq");
String bcode = request.getParameter("bcode");
String pg = request.getParameter("pg");
%>
<%@ include file="/menu_source/menubar.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title>글 삭제 성공</title>

<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="<%=root%>/css/skin_purple.css" type="text/css">
</head>

<body>

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
			align="center"><b>게시글이 삭제 되었습니다.</b><br>
		<br>

		<div align="center">
		<!-- 
		<a href="<%=root%>/notice?act=view&seq=<%=seq%>&bcode=<%=bcode%>&pg=<%=pg%>"><img
			src="<%=root%>/img/board/b_wirtecf.gif" width="91" height="21"
			border="0" align="absmiddle" alt="작성한 글 확인" hspace="10"></a>
	 	-->
			<a
			href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=<%=pg%>"><img src="<%=root%>/img/board/poll_listbu1.gif"
			width="62" height="21" border="0" align="absmiddle" alt="목록보기"
			hspace="10"></a>
		</td>
	</tr>
</table>
<br>
</body>
</html>