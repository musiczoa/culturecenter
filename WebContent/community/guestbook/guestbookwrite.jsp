<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.kitri.member.dto.*"%>
	<%@ include file="/menu_source/menubar.jsp" %>
<%
	String root = request.getContextPath();

	String bcode = request.getParameter("bcode");

	bcode = "4";

	String pg = request.getParameter("pg");

	MemberDto memberDto =(MemberDto)session.getAttribute("userInfo");

	if(memberDto==null){
%>
<script> alert("�α��� �� �̿밡���մϴ�!");
		document.location.href="<%=root%>/member?act=mvlogin";
	</script>
<%
}else{
%> 

<script type="text/javascript">
function writeArticle(){
	
		document.writeForm.act.value="gbwrite";
		document.writeForm.bcode.value="<%=bcode%>";
		document.writeForm.pg.value="1";
		document.writeForm.nickname.value="<%=memberDto.getNickname()%>";
		document.writeForm.action ="<%=root%>/guest";
		document.writeForm.submit();

	}
</script>

</script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>����</title>
</head>
<body>
<font face='Sans-Serif'>
	<center>

		<h1>���� : �۾���</h1>
		<form name="writeForm" method="post" action="">
			<input type="hidden" name="act" value=""> 
			<input type="hidden" name="bcode" value=""> 
			<input type="hidden" name="pg"value=""> 
			<input type="hidden" name="nickname" value="">   
			<table cellpadding="5" cellspacing="0" border="1" width="500">
			
				<tr>
					<td bgcolor="#99CCFF">�г���</td>
					<td><%=memberDto.getNickname()%></td>
				</tr>

				<tr>
					<td colspan="2"><textarea rows="5" name="content" cols="40"></textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="button"
						value="�۾���" onclick="javascript:writeArticle();">
						<input type="reset" value="���"></td>
				</tr>
			</table>
		</form>
	</center>
	
				</font>
</body>
</html>
<%}%>