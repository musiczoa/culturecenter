<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" %>
<%@ include file="/common/review_bcommon.jsp" %>
<%
	List<ReviewDto> list = (List<ReviewDto>) request.getAttribute("listArticle");
PageNavigation pageNavi = (PageNavigation) request.getAttribute("pageNavi");
if(list == null) {
%>
<script>
alert("�߸��� ��� �����Դϴ�.");
document.location.href = "<%=root%>";
</script>	
<%
		} else {
	%>

<!-- title start -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><img src="<%=root%>/img/board/m_icon_board.gif" width="9"
			height="9" border="0" align="absmiddle" style="margin-top: -2px">
		<b><%=application.getAttribute(bcode)%></b> &nbsp;<font style="font-size: 8pt">|</font>&nbsp; �����ο� ����
		�ø��� �����Դϴ�<br>
		</td>
		<td align="right"></td>
	</tr>
	<tr>
		<td colspan="2" height="19"></td>
	</tr>
</table>
<!-- title end -->

<!-- bbs start -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr valign="bottom">
		<td nowrap><a href="javascript:goWrite();"><img
			src="<%=root%>/img/board/btn_write_01.gif" width="64" height="22"
			border="0" align="absmiddle" alt="�۾���"></a></td>

		<td width="100%" style="padding-left: 6px" valign="bottom">���� <b><font
			class="text_acc_02"><%=pageNavi.getNewArticleCount()%></font></b> / ��ü <font
			class="text_acc_02"><%=pageNavi.getTotalArticleCount()%></font></td>
		<td width="300" nowrap>
		<div align="right"></div>
		</td>
	</tr>
	<tr>
		<td colspan="2" height="5" style="padding: 0px"></td>
	</tr>
</table>

<form name="listForm" method="post" style="margin: 0px">
<table width="100%" cellpadding="5" cellspacing="0" border="0">
	<tr>
		<td class="bg_board_title_02" height="2" colspan="11"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
	<tr class="bg_board_title" align="center" height="28">
		<td nowrap><b>��ȣ</b></td>
		<td nowrap class="board_bar" style="padding: 0px">|</td>
		<td></td>
		<td width="100%"><b>����</b></td>
		<td nowrap class="board_bar" style="padding: 0px">|</td>
		<td width="120" nowrap><b>�۾���</b></td>
		<td nowrap class="board_bar" style="padding: 0px">|</td>
		<td nowrap><b>��ȸ</b></td>
		<td nowrap class="board_bar" style="padding: 0px">|</td>
		<td width="45" nowrap><b>��¥</b></td>
	</tr>
	<tr>
		<td class="bg_board_title_02" height="1" colspan="11"
			style="overflow: hidden; padding: 0px"></td>
	</tr>

	<!-- ������� ����� -->


	<!-- ������� ���볡  -->
<%
	int size = list.size();
if(size != 0) {
	for(int i=0;i<size;i++) {
		ReviewDto reboardDto = list.get(i);
%>	
	<tr>
		<td align="center" class="text_gray"><%=reboardDto.getSeq() %></td>
		<td></td>
		<td nowrap class="onetext" style="padding-right: 5px"></td>
		<!--td>
     
     </td-->
		<td style="word-break: break-all;"><a href="javascript:goView('<%=reboardDto.getSeq() %>', '<%=memberDto == null ? 0 : 1 %>');"
			class="link_board_03">
			<img src="<%=root %>/img/board/bar.gif" width="<%=reboardDto.getLev() * 10 %>" height="1">
			<%=reboardDto.getSubject() %>&nbsp;&nbsp;&nbsp;</a></td>
		<td></td>
		<td style="word-break: break-all;"><a href="javascript:;"
			onClick="showSideView();" class="link_board_04"><%=reboardDto.getName() %></a></td>
		<td></td>
		<td align="center" class="text_gray"><%=reboardDto.getHit() %></td>
		<td></td>
		<td align="center" class="text_gray"><%=reboardDto.getLogtime() %></td>
	</tr>

	<tr>
		<td bgcolor="#ededed" height="1" colspan="11"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
<%
	}
} else {
%>
	<tr>
		<td align="center" class="text_gray" colspan="10">�Խñ��� �����ϴ�.</td>
	</tr>
	
	<tr>
		<td bgcolor="#ededed" height="1" colspan="11"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
<%	
}
%>

	<tr>
		<td class="bg_board_title_02" height="1" colspan="11"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
</table>
</form>
<!-- bbs end -->

<!-- �ϴ� ����¡ -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td colspan="3" height="5"></td>
	</tr>
	<tr valign="top">
		<td nowrap><a href="javascript:goWrite();"><img
			src="<%=root%>/img/board/btn_write_01.gif" width="64" height="22"
			border="0" align="absmiddle" alt="�۾���"></a></td>
		<td width="100%" align="center">
		<!--PAGE--> <%=pageNavi.getNavigator() %></td>
		<td nowrap class="stext"><b><%=pageNavi.getCurrentPage() %></b> / <%=pageNavi.getTotalPageCount() %>
		pages</td>
	</tr>
</table>
<br>
<!-- �ϴ� ����¡ -->

<!-- �˻� ����-->
<form name="searchForm" method="get" action="" onsubmit="return false;"
	style="margin: 0px">
<input type="hidden" name="act" value="list">
<input type="hidden" name="bcode" value="<%=bcode%>">
<input type="hidden" name="pg" value="1">
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td colspan="3" height="10"></td>
	</tr>
	<tr>
		<td width="50%"></td>
		<td nowrap><select name="key" onchange="javascript:ch()"
			class="inp">
			<option value="subject">������
			<option value="name">�۾���
			<option value="seq">�۹�ȣ
		</select> <span id="sear1"> <input type="text" name="word" size="22"
			class="inp" style="margin-top: -19px;"> </span> 
			 <a href="javascript:goBbsSearch();"><img
			src="<%=root%>/img/board/sbtn_s.gif" width="32" height="18"
			border="0" align="absmiddle" alt="�˻�"></a> 

<%
if(memberDto != null) {
%>
			<a href="javascript:goMyList('<%=memberDto.getNickname()%>')"><img
			src="<%=root%>/img/board/sbtn_mytext.gif" width="82" height="20"
			align="absmiddle" alt="���� �� �� ����"></a><br>
<%
}
%>			
			
		</td>
		<td width="50%" align="right"><a href="#"><img
			src="<%=root%>/img/board/sbtn_top.gif" width="24" height="11"
			align="absmiddle" alt="TOP"></a><br>
		</td>
	</tr>
</table>
</form>
<br><br>
</body>
</html>
<%
}
%>
