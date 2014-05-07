<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<%	
String root = request.getContextPath();

	%>
	<%@ include file="/menu_source/menubar.jsp" %>
	<script>alert("잘못된 이동 경로입니다.\n 주소를 확인해 주세용*^^*");
	document.location.href="<%=root %>/member";
	</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<font color="blue" size="15"><%= %>)</font>님 회원가입을 환영합니다.<br>
로그인 후 모든 서비스를 이용할 수 있습니다.<br>
3초후 로그인 페이지로 이동합니다.
<meta http-equiv="refresh" content="3; url=<%=root %>/member?act=mvlogin">
</center>
</body>
</html>

