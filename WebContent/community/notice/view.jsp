
<%@page import="com.kitri.board.model.NoticeDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/menu_source/menubar.jsp" %>
<%@ include file="/common/bcommon.jsp"%>
<%

NoticeDto noticeDto = (NoticeDto)request.getAttribute("viewArticle");//ViewAction에서 건네준 정보를 ReboardDto에 저장
if(noticeDto==null){//넣은 reboardDto에 아무 내용이 없으면 경고창 생성
%>
<script>
alert("글이 삭제되었거나 잘못된 경로 접근입니다.!");
document.location.href="<%=root%>/notice?act=list&bcode=<%=bcode%>&pg=<%=pg%>";
</script>
<%
}else{//넣은 reboardDto에 내용이 있으면 밑에 코딩 실행
%>
<!-- title -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><img src="<%=root%>/img/board/m_icon_board.gif" width="9"
			height="9" border="0" align="absmiddle" style="margin-top: -2px">
		<b>공지사항</b> &nbsp;<font style="font-size: 8pt">|</font>&nbsp; 공지사항을 올리는 곳입니다.<br>
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
			<a href="javascript:goWrite('<%=bcode%>');"><!-- 글쓰기 버튼을 누르면 bcode를 가지고 boardmvc/js/board.js로 고고 -->
			<img
			src="<%=root%>/img/board/btn_write_01.gif" width="64" height="22"
			border="0" align="absmiddle" alt="글쓰기"></a> 
			<a
			href="javascript:goModify('<%=noticeDto.getSeq()%>');"><img
			src="<%=root%>/img/board/btn_modify.gif"
			border="0" align="absmiddle" alt="글수정"></a>
			
			<a
			href="javascript:goDelete('<%=noticeDto.getSeq()%>');"><img
			src="<%=root%>/img/board/btn_delete.gif"
			border="0" align="absmiddle" alt="글삭제"></a>
		<%
			}
		%>
			
		</td>
		<td valign="bottom" width="100%" style="padding-left: 4px"></td>
		<td align="right" nowrap valign="bottom">
		<!-- 최신목록을 누르면 bcode와 pg=1을 가지고 boardmvc/js/board.js로 고고 -->
		<a
			href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1">최신목록</a> <font color="#c5c5c5">|</font>
		<!-- 최신목록을 누르면 bcode와 현재 페이지를 가지고 boardmvc/js/board.js로 고고 -->
		<a href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=<%=pg%>">목록</a> <font color="#c5c5c5">|</font>

		<a href="javascript:goBbsRead();"><img
			src="<%=root%>/img/board/icon_up.gif" border="0" align="absmiddle"
			hspace="3">윗글</a> <font color="#c5c5c5">|</font> <a
			href="javascript:goBbsRead();">아랫글<img
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
		<td width="100%" style="padding-left: 14px"><font class="stext">번호
		:</font> <font class="text_commentnum"><%=noticeDto.getSeq()%></font> &nbsp; <font
			class="stext">글쓴이 :</font> <a href="javascript:;"
			onClick="showSideView();" class="link_board_02"><%=noticeDto.getNickname()%></a><br>
		</td>
		<td style="padding-right: 14px" nowrap class="stext">조회 : <font
			class="text_commentnum"><%=noticeDto.getHit()%></font> &nbsp; 스크랩 : <font
			class="text_commentnum">0</font> &nbsp; 날짜 : <font
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

<!-- 하단 페이징 -->
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
			border="0" align="absmiddle" alt="글쓰기"></a>
			<%
			}
			%>
			<!-- 
			 <a
			href="javascript:check_reply();"><img
			src="<%=root%>/img/board/btn_reply.gif" width="40" height="22"
			border="0" align="absmiddle" alt="답글"></a>
			 -->
			</td>
		<td style="padding-left: 4px" width="100%"><a href=""
			target="new"><img src="<%=root%>/img/board/btn_print.gif"
			width="30" height="18" border="0" align="absmiddle" alt="인쇄"></a></td>

		<td align="right" nowrap><a href="javascript:goPage(<%=bcode%>,1);">최신목록</a>
		<font color="#c5c5c5">|</font> <a href="javascript:goPage('<%=bcode%>','<%=pg%>');">목록</a>
		<font color="#c5c5c5">|</font> <a href="javascript:goBbsRead();"><img
			src="<%=root%>/img/board/icon_up.gif" border="0" align="absmiddle"
			hspace="3">윗글</a> <font color="#c5c5c5">|</font> <a
			href="javascript:goBbsRead();">아랫글<img
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