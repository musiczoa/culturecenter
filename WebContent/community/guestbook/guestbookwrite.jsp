<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ include file="/menu_source/menubar.jsp" %>
<%
	String root = request.getContextPath();

	String bcode = request.getParameter("bcode");

	bcode = "4";

	String pg = request.getParameter("pg");

	//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
%>

<script type="text/javascript">
function writeArticle(){
	
		document.writeForm.act.value="gbwrite";
		document.writeForm.bcode.value="<%=bcode%>";
		document.writeForm.pg.value="1";
		
		document.writeForm.action ="<%=root%>/guest";
		document.writeForm.submit();

	}
</script>

</script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
<font face='Sans-Serif'>
	<center>

		<h1>방명록 : 글쓰기</h1>
		<form name="writeForm" method="post" action="">
			<input type="hidden" name="act" value=""> 
			<input type="hidden" name="bcode" value=""> 
			<input type="hidden" name="pg"value=""> 
	
			<table cellpadding="5" cellspacing="0" border="1" width="500">
			
				<tr>
					<td bgcolor="#99CCFF">닉네임</td>
					<td><input type="text" name="nickname" value="" size="20"></td>
				</tr>

				<tr>
					<td colspan="2"><textarea rows="5" name="content" cols="40"></textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="button"
						value="글쓰기" onclick="javascript:writeArticle();">
						<input type="reset" value="취소"></td>
				</tr>
			</table>
		</form>
	</center>
	
				</font>
</body>
</html>
