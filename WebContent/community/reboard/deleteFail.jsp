<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="/menu_source/menubar.jsp" %>
<%@ include file="/common/reboard_common.jsp" %>

<table width="100%" cellpadding="6" cellspacing="2" border="0"
	bgcolor="#ffffff" style="border: #e1e1e1 solid 1px">
	<tr>
		<td class="bg_board_title" width="100%"><img
			src="<%=root%>/img/board/icon_arrow_08.gif" width="3" height="11"
			border="0" align="absmiddle" hspace="6" vspace="6"> <b><%=application.getAttribute(bcode) %></b>
		</td>
	</tr>
	<tr>
		<td height="1" bgcolor="#e1e1e1"
			style="overflow: hidden; padding: 0px;"></td>
	</tr>
	<tr>
		<td class="bg_menu" width="100%" style="padding: 25px" height="35"
			align="center"><b>����� �ִ� �Խù��� ������ �� �����ϴ�.</b><br>
		<br>

		<div align="center"><a href="javascript:goPage('<%=pg%>')">
		<img src="<%=root%>/img/board/poll_listbu1.gif"	width="62" height="21" border="0" align="absmiddle" alt="�������" hspace="10"></a>
		</td>
	</tr>
</table>
<br>
</body>
</html>