<%@page import="com.kitri.board.model.NoticeDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/common/bcommon.jsp" %>
<%
if(memberDto == null) {
%>
<script>
alert("로그인후 글작성 가능합니다..");
document.location.href = "<%=root%>";
</script>
<%	
} else {
	NoticeDto noticeDto = (NoticeDto) request.getAttribute("parentNotice");
	if(noticeDto == null) {
%>
<script>
alert("원글 정보가 없습니다..");
document.location.href = "<%=root%>";
</script>
<%		
	} else {
%>
<!-- title -->
<script type="text/javascript">
function writeNotice(){
	if(document.writeForm.subject.value == ""){
		alert("제목을 입력하세요");
		return;
	}else if(document.writeForm.content.value == ""){
		alert("내용을 입력하세요");
		return;
	}else{//입력을 다 했으면 act의 이름을 newwrite로 정하고 bcode의 값을 가지고 bcode로 정의 합시다.
		document.writeForm.act.value = "modifyWrite";
		document.writeForm.bcode.value = "<%=bcode%>";
		document.writeForm.pg.value = "<%=pg%>";
		document.writeForm.seq.value = "<%=request.getParameter("seq")%>";
		
		
				
		document.writeForm.action = "<%=root%>/notice";
		document.writeForm.submit();//ReBoardController로 newwrite를 가진act와 bcode를 가지고 갑시다. 폼안에 있기때문에 가지고 갈수 있음.
	}
}
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><img src="<%=root%>/img/board/m_icon_board.gif" width="9"
			height="9" border="0" align="absmiddle" style="margin-top: -2px">
		<b></b> &nbsp;<font style="font-size: 8pt">|</font>&nbsp; 글을
		올리는 공간입니다<br>
		</td>
		<td align="right"></td>
	</tr>
	<tr>
		<td colspan="2" height="19"></td>
	</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="630">
	<tr>
		<td><img src="<%=root%>/img/board/icon_arrow_04.gif" width="4"
			height="11" border="0" align="absmiddle" vspace="4"></td>
		<td width="100%" style="padding-left: 4px"><b>공지사항 수정</b></td>
	</tr>
	<tr>
		<td width="630" colspan="2" height="2" class="bg_board_title_02"></td>
	</tr>
</table>
<br>

<form id="writeForm" name="writeForm" method="post" action=""
	style="margin: 0px">
<div id="attach_file_hdn"></div>

<input type="hidden" name="act" value="">
<input type="hidden" name="bcode" value="">
<input type="hidden" name="pg" value="">
<input type="hidden" name="seq" value="">

<table border="0" cellpadding="5" cellspacing="0" width="630"
	style="table-layout: fixed">

	<tr valign="top">
		<td width="95" nowrap style="padding-left: 8px; padding-top: 10px"><img
			src="<%=root%>/img/board/e_dot.gif" width="4" height="4" border="0"
			align="absmiddle"> <b>제목</b></td>
		<td colspan="5"><input name="subject" id="subject" type="text"
			size="76" maxlength="150" class="inp_02" style="width: 300px"
			value="<%=noticeDto.getSubject()%>"><img src="<%=root%>/img/board/i_info.gif" width="12"
			height="11" border="0" align="absmiddle" vspace="8"
			style="margin: 3 3 0 6"><font class="stext">최대 한글 75자,
		영문 150자</font><br>
	</tr>
	<tr>
		<td width="620" nowrap style="padding-left: 8px; padding-top: 10px"
			colspan="5"><img src="<%=root%>/img/board/e_dot.gif" width="4"
			height="4" border="0" align="absmiddle"> <b>글내용</b> <textarea
			name="content" class="inp_02" cols="67" rows="25" scrollbars="no"><%=noticeDto.getContent()%>			
			</textarea>
		</td>
	</tr>
</table>
<table width="630" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td height="5" style="padding: 0px"></td>
	</tr>
	<tr>
		<td class="bg_board_title_02" height="1"></td>
	</tr>
</table>

<table border="0" cellpadding="2" cellspacing="0" width="630">
	<tr>
		<td height="10" style="padding: 0px"></td>
	</tr>
	<tr>
		<td align="center"><a href="javascript:writeNotice();"><img
			src="<%=root%>/img/board/btn_register.gif" width="42" height="21"
			border="0" name="register" value="" alt="등록"></a> <a
			href="javascript:history.back();"><img
			src="<%=root%>/img/board/b_cancel.gif" width="42" height="21"
			border="0" name="cencel" value="" alt="취소"></a></td>
	</tr>
</table>
</form>
<br>
<br>
</body>
</html>
<%
	}
}
%>