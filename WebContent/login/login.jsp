<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();

	String id="";

%>
<%@ include file="/menu_source/menubar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=root%>/css/style.css" type="text/css">
<script type="text/javascript">
function logincheck(){
	if(document.getElementById("id").value  == "") {
		alert("아이디 입력!");
		return;
	} else if(document.getElementById("pass").value == "") {
		alert("비밀번호 입력!");
		return;
	} else {
		document.loginform.action = "<%=root%>/member?act=login";
		document.loginform.submit();
	}
}
function joinmove(){
	document.location.href = "<%=root%>/member?act=mvjoin";
	}
</script>
</head>

<body>
	<center>
		<form name="loginform" method="post" action="">
			<input type="hidden" name="act" value="login">
			<table>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<tr>
					<td class="td1">아이디(이메일)</td>
					<td class="td2"><input type="text" name="id" id="id"value="<%=id%>"></td>
					<td rowspan="2"><input type="button" value="로그인"
						onclick="javascript:logincheck();"
						style="height: 50px; width: 70px; color: white; font-weight: bold; font-size: 13px; background-color: skyblue; border: 1px dashed #ff008;"></td>
				</tr>
				<tr>
					<td class="td1">비밀번호</td>
					<td class="td2"><input type="password" name="pass" id="pass" value=""></td>
				</tr>
				<tr align="center">
					<td colspan="3"><br>
					<br> 아직 회원이 아니신가요?</td>

				</tr>
				<tr align="center">

					<td colspan="3"><input type="button" value="회원가입"
						onclick="javascript:joinmove();"
						style="height: 25px; width: 70px; color: white; font-size: 11px; background-color: skyblue;"></td>

				</tr>
			</table>
		</form>
	</center>
</body>
</html>