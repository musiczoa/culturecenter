
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.util.*" import="com.kitri.board.model.GuestBookDto"%>
<%
	String root = request.getContextPath();

	String bcode = request.getParameter("bcode");

	String pg = request.getParameter("pg");

	List<GuestBookDto> list = (List<GuestBookDto>) request
			.getAttribute("listArticle");
	//PageNavigation pageNavi =(PageNavigation) request.getAttribute("pageNavi");

	//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>����</title>
</head>
<body>
	<center>
		<h1>����</h1>
		<hr>
		<a href="community/guestbook/guestbookwrite.jsp">���� ����</a>
		<form name="listform" action="" method="post">
			<input type="hidden" name="bcode" value="">

			<%
				int size = list.size();
				if (size != 0) {
					for (int i = 0; i < size; i++) {
						GuestBookDto guestbookDto = list.get(i);
			%>
			<table cellpadding="5" cellspacing="0" border="1" width="500">
				<tr width="500">
					<td bgcolor="#99CCFF" widht="50" height="20"><%=guestbookDto.getSeq()%></td>
					<td bgcolor="#99CCFF" widht="50" height="20">�г���</td>
					<td widht="200"><%=guestbookDto.getNickname()%></td>
					<td bgcolor="#99CCFF" height="20" widht="50">�ۼ���</td>
					<td widht="150"><%=guestbookDto.getLogtime()%></td>
				</tr>
				<tr>
					<td colspan="5"><%=guestbookDto.getContent()%></td>
				</tr>

				<tr>

					<td colspan="5" align="right"><input type="submit" value="����">
					<input type="submit" value="����"></td>
				</tr>
			</table>
			<%
				}
				}
			%>
		</form>


	</center>
</body>
</html>

