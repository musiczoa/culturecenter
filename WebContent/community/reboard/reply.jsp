<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="/menu_source/menubar.jsp" %>
<%@ include file="/common/reboard_common.jsp" %>
<%
if(memberDto == null){
%>
<<script>
alert("�α��� �� ���ۼ� �����մϴ�.");
document.location.href="<%=root%>";
</script>
<%
} else {
ReboardDto reboardDto = (ReboardDto) request.getAttribute("parentArticle");
if(reboardDto == null){
	%>
	<<script>
	alert("���� ������ �����ϴ�.");
	document.location.href="<%=root%>";
	</script>
	<%
}else{
	
%>

<link rel="stylesheet" type="text/css" href="<%=root %>/css/alice.css">
<link rel="stylesheet" type="text/css" href="<%=root %>/css/oz.css">
<script type="text/javascript" src="<%=root %>/js/prototype.js"></script>
<script type="text/javascript" src="<%=root %>/js/extprototype.js"></script>	
<script type="text/javascript" src="<%=root %>/js/oz.js"></script>	
<script type="text/javascript" src="<%=root %>/js/alice.js"></script>
<script type="text/javascript">
var alice;
Event.observe(window, "load", function() {
	alice = Web.EditorManager.instance("editor",{type:'detail',width:600,height:300,limit:10,family:'����',size:'13px'});
});	

function writeArticle(){
	if(document.writeForm.subject.value == ""){
		alert("������ �Է��ϼ���");
		return;
	}else if(alice.getContent() == ""){
		alert("������ �Է��ϼ���");
		return;
	}else{
		document.writeForm.act.value = "replywrite";
		document.writeForm.bcode.value = "<%=bcode%>";
		document.writeForm.pg.value = "<%=pg%>";
		document.writeForm.content.value = alice.getContent();
		document.writeForm.key.value = "<%=key%>";
		document.writeForm.word.value = "<%=word%>";
		document.writeForm.ref.value = "<%=reboardDto.getRef()%>";
		document.writeForm.lev.value = "<%=reboardDto.getLev()%>";
		document.writeForm.step.value = "<%=reboardDto.getStep()%>";
		document.writeForm.pseq.value = "<%=reboardDto.getSeq()%>";
		
		document.writeForm.action = "<%=root%>/reboard";
		document.writeForm.submit();
	}
}

function subjectCheck() {
	var sub = document.writeForm.subject.value;
	var subLen = sub.length;
	var div = document.getElementById("subErr");
	if(subLen > 100) {
		div.innerHTML = "100�� �Ѿ���.";
	}
	setTimeout("subjectCheck();", 0);
}
</script>
<!-- title -->
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><img src="<%=root%>/img/board/m_icon_board.gif" width="9"
			height="9" border="0" align="absmiddle" style="margin-top: -2px">
		<b><%=application.getAttribute(bcode) %></b> &nbsp;<font style="font-size: 8pt">|</font>&nbsp; �����ο� ����
		�ø��� �����Դϴ�<br>
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
		<td width="100%" style="padding-left: 4px"><b>��۾���</b></td>
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
<input type="hidden" name="content" value="">
<input type="hidden" name="key" value="">
<input type="hidden" name="word" value="">
<input type="hidden" name="ref" value="">
<input type="hidden" name="lev" value="">
<input type="hidden" name="step" value="">
<input type="hidden" name="pseq" value="">


<table border="0" cellpadding="5" cellspacing="0" width="630"
	style="table-layout: fixed">

	<tr valign="top">
		<td width="95" nowrap style="padding-left: 8px; padding-top: 10px"><img
			src="<%=root%>/img/board/e_dot.gif" width="4" height="4" border="0"
			align="absmiddle"> <b>����</b></td>
		<td colspan="5"><input name="subject" id="subject" type="text"
			size="76" maxlength="150" class="inp_02" style="width: 300px"
			value="Re : <%= reboardDto.getSubject() %>"><img src="<%=root%>/img/board/i_info.gif" width="12"
			height="11" border="0" align="absmiddle" vspace="8"
			style="margin: 3 3 0 6"><font class="stext">�ִ� �ѱ� 75��,
		���� 150��</font><br>
	</tr>
	<tr>
		<td width="620" nowrap style="padding-left: 8px; padding-top: 10px"
			colspan="5"><img src="<%=root%>/img/board/e_dot.gif" width="4"
			height="4" border="0" align="absmiddle"> <b>�۳���</b> 
			<textarea	 name="editor"><%= reboardDto.getContent() %>
<p></p>
------------------------[����]------------------------
<p></p>
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
		<td align="center"><a href="javascript:writeArticle();"><img
			src="<%=root%>/img/board/btn_register.gif" width="42" height="21"
			border="0" name="register" value="" alt="���"></a> <a
			href="javascript:history.back();"><img
			src="<%=root%>/img/board/b_cancel.gif" width="42" height="21"
			border="0" name="cencel" value="" alt="���"></a></td>
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