
<%@page import="com.kitri.board.model.NoticeDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/menu_source/menubar.jsp" %>
<%@ include file="/common/bcommon.jsp"%>
<%

NoticeDto noticeDto = (NoticeDto)request.getAttribute("viewArticle");//ViewAction���� �ǳ��� ������ ReboardDto�� ����
if(noticeDto==null){//���� reboardDto�� �ƹ� ������ ������ ���â ����
%>
<script>
alert("���� �����Ǿ��ų� �߸��� ��� �����Դϴ�.!");
document.location.href="<%=root%>/notice?act=list&bcode=<%=bcode%>&pg=<%=pg%>";
</script>
<%
}else{//���� reboardDto�� ������ ������ �ؿ� �ڵ� ����
%>
<!-- title -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><img src="<%=root%>/img/board/m_icon_board.gif" width="9"
			height="9" border="0" align="absmiddle" style="margin-top: -2px">
		<b>��������</b> &nbsp;<font style="font-size: 8pt">|</font>&nbsp; ���������� �ø��� ���Դϴ�.<br>
		</td>
		<td align="right"></td>
	</tr>
	<tr>
		<td colspan="2" height="19"></td>
	</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<form name="bbsForm" id="bbsbbs" method="post"><input
		type="hidden" name="" value="">
	<tr>
		<td valign="bottom" nowrap>
			<%
			if(memberDto==null){
			
			}else if("admin".equals(memberDto.getEmail())){
			%>
			<a href="javascript:goWrite('<%=bcode%>');"><!-- �۾��� ��ư�� ������ bcode�� ������ boardmvc/js/board.js�� ��� -->
			<img
			src="<%=root%>/img/board/btn_write_01.gif" width="64" height="22"
			border="0" align="absmiddle" alt="�۾���"></a> 
			<a
			href="javascript:goModify('<%=noticeDto.getSeq()%>');"><img
			src="<%=root%>/img/board/btn_modify.gif"
			border="0" align="absmiddle" alt="�ۼ���"></a>
			
			<a
			href="javascript:goDelete('<%=noticeDto.getSeq()%>');"><img
			src="<%=root%>/img/board/btn_delete.gif"
			border="0" align="absmiddle" alt="�ۻ���"></a>
		<%
			}
		%>
			
		</td>
		<td valign="bottom" width="100%" style="padding-left: 4px"></td>
		<td align="right" nowrap valign="bottom">
		<!-- �ֽŸ���� ������ bcode�� pg=1�� ������ boardmvc/js/board.js�� ��� -->
		<a
			href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1">�ֽŸ��</a> <font color="#c5c5c5">|</font>
		<!-- �ֽŸ���� ������ bcode�� ���� �������� ������ boardmvc/js/board.js�� ��� -->
		<a href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=<%=pg%>">���</a> <font color="#c5c5c5">|</font>

		<a href="javascript:goBbsRead();"><img
			src="<%=root%>/img/board/icon_up.gif" border="0" align="absmiddle"
			hspace="3">����</a> <font color="#c5c5c5">|</font> <a
			href="javascript:goBbsRead();">�Ʒ���<img
			src="<%=root%>/img/board/icon_down.gif" border="0" align="absmiddle"
			hspace="3"></a></td>
	</tr>
	<tr>
		<td colspan="3" height="5" style="padding: 0px"></td>
	</tr>
</table>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
	<tr>
		<td class="bg_board_title_02" colspan="2" height="2"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
	<tr height="28">
		<td class="bg_board_title" colspan="2" style="padding-left: 14px">
		<b><font class="text"> <%=noticeDto.getSubject()%> </font></b></td>
	</tr>
	<tr>
		<td class="bg_board_title_02" colspan="2" height="1"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
	<tr height="26">
		<td width="100%" style="padding-left: 14px"><font class="stext">��ȣ
		:</font> <font class="text_commentnum"><%=noticeDto.getSeq()%></font> &nbsp; <font
			class="stext">�۾��� :</font> <a href="javascript:;"
			onClick="showSideView();" class="link_board_02"><%=noticeDto.getNickname()%></a><br>
		</td>
		<td style="padding-right: 14px" nowrap class="stext">��ȸ : <font
			class="text_commentnum"><%=noticeDto.getHit()%></font> &nbsp; ��ũ�� : <font
			class="text_commentnum">0</font> &nbsp; ��¥ : <font
			class="text_commentnum"><%=noticeDto.getLogtime()%></font></td>
	</tr>
	<tr>
		<td class="bg_board_title_02" colspan="2" height="1"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
</table>

<table border="0" cellpadding="15" cellspacing="0" width="100%">
	<tr valign="top">
		<td bgcolor="#ffffff" width="100%" class="text"
			style="padding-bottom: 8px; line-height: 1.3" id="clix_content">



		<P><%=noticeDto.getContent().replaceAll("\n", "<br>").replaceAll(" ", "&nbsp;")%></P>



		</td>
		<td nowrap valign="top" align="right" style="padding-left: 0px">

		</td>
	</tr>
</table>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td class="bg_board_title_02" height="1"
			style="overflow: hidden; padding: 0px"></td>
	</tr>
</table>

<!-- �ϴ� ����¡ -->
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td colspan="3" height="5" style="padding: 0px"></td>
	</tr>
	<tr valign="top">
		<td nowrap>
			<%
			if(memberDto==null){
			
			}else if("admin".equals(memberDto.getEmail())){
			%>
		<a href="javascript:goWrite('<%=bcode%>');"><img
			src="<%=root%>/img/board/btn_write_01.gif" width="64" height="22"
			border="0" align="absmiddle" alt="�۾���"></a>
			<%
			}
			%>
			<!-- 
			 <a
			href="javascript:check_reply();"><img
			src="<%=root%>/img/board/btn_reply.gif" width="40" height="22"
			border="0" align="absmiddle" alt="���"></a>
			 -->
			</td>
		<td style="padding-left: 4px" width="100%"><a href=""
			target="new"><img src="<%=root%>/img/board/btn_print.gif"
			width="30" height="18" border="0" align="absmiddle" alt="�μ�"></a></td>

		<td align="right" nowrap><a href="javascript:goPage(<%=bcode%>,1);">�ֽŸ��</a>
		<font color="#c5c5c5">|</font> <a href="javascript:goPage('<%=bcode%>','<%=pg%>');">���</a>
		<font color="#c5c5c5">|</font> <a href="javascript:goBbsRead();"><img
			src="<%=root%>/img/board/icon_up.gif" border="0" align="absmiddle"
			hspace="3">����</a> <font color="#c5c5c5">|</font> <a
			href="javascript:goBbsRead();">�Ʒ���<img
			src="<%=root%>/img/board/icon_down.gif" border="0" align="absmiddle"
			hspace="3"></a></td>
	</tr>
</table>
<br>
</body>
</html>
<%
}
%>