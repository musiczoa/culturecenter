<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>������ ����</title>
<script language="javascript">
	function check() {
		for (var i = 0; i < document.input.elements.length; i++) {
			if (document.input.elements[i].value == "") {
				alert("��� ���� �Է� �ϼž� �մϴ�. ");
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
		<a href='./freeboard.jsp'>�۸��</a>

	</center>
	<form name="input" method="post" action="">
		<table border="1" width="800" align="center" cellpadding="3"
			cellspacing="1" bordercolor="#5DC75D">
			<tr>
				<td width="30%" align="center">�۾���</td>
				<td><input type="text" name="name" size="10"></td>
			</tr>
			<tr>
				<td align="center">�̸���</td>
				<td><input type="text" name="email" size="10"></td>
			</tr>
			<tr>
				<td align="center">������</td>
				<td><input type="text" name="subject" size="10"></td>
			</tr>
			<tr>
				<td align="center">�۳���</td>
				<td><textarea name="content" rows="5" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" value="����"
					onclick="check()"> <input type="reset" value="�ٽ��Է�">
				</td>
			</tr>
		</table>
		<br>

	</form>
</body>
</html>
