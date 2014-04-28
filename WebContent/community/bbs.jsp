<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>간단한 방명록</title>
<script language="javascript">
	function check() {
		for (var i = 0; i < document.input.elements.length; i++) {
			if (document.input.elements[i].value == "") {
				alert("모든 값을 입력 하셔야 합니다. ");
				return false;
			}
		}
		document.input.submit();
	}
</script>
</head>
<body>
	<center>

		<h2>GUESTBOOK</h2>
		<a href='./freeboard.jsp'>글목록</a>

	</center>
	<form name="input" method="post" action="">
		<table border="1" width="800" align="center" cellpadding="3"
			cellspacing="1" bordercolor="#5DC75D">
			<tr>
				<td width="30%" align="center">글쓴이</td>
				<td><input type="text" name="name" size="10"></td>
			</tr>
			<tr>
				<td align="center">이메일</td>
				<td><input type="text" name="email" size="10"></td>
			</tr>
			<tr>
				<td align="center">글제목</td>
				<td><input type="text" name="subject" size="10"></td>
			</tr>
			<tr>
				<td align="center">글내용</td>
				<td><textarea name="content" rows="5" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" value="전송"
					onclick="check()"> <input type="reset" value="다시입력">
				</td>
			</tr>
		</table>
		<br>

	</form>
</body>
</html>
