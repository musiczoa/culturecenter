<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*" import="com.kitri.board.model.GuestBookDto"%>
<%@ include file="/menu_source/menubar.jsp" %>
<%
	String root = request.getContextPath();

	String bcode = request.getParameter("bcode");

	bcode = "4";

	String pg = request.getParameter("pg");
	
	GuestBookDto guestbookDto = (GuestBookDto) request.getAttribute("parentGuest");
	
	//String nickname =request.getParameter("nickname");

	//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
%>


<script type="text/javascript">
function modifyArticle(){
	
		document.writeForm.act.value="modify";
		document.writeForm.bcode.value="<%=bcode%>";
		document.writeForm.pg.value = "<%=pg%>";
		document.writeForm.seq.value= "<%=request.getParameter("seq")%>";
		
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
	<center>

		<h3>방명록 : 수정</h3>
		<form name="writeForm" method="post" action="">
			<input type="hidden" name="act" value=""> 
			<input type="hidden" name="bcode" value=""> 
			<input type="hidden" name="pg"value=""> 
			<input type="hidden" name="seq"value=""> 
                  
			<table cellpadding="5" cellspacing="0" border="1">
				<tr>
					<td bgcolor="#99CCFF">닉네임</td>
					<td><%=guestbookDto.getNickname()%></td>
				</tr>

				<tr>
					<td colspan="2"><textarea name="content"><%=guestbookDto.getContent()%></textarea></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="수정" onclick="javascript:modifyArticle();">
						<input type="reset" value="취소"></td>
				</tr>
			</table>
		
		</form>
		
		
	</center>
</body>
</html>