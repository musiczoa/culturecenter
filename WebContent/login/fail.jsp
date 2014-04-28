<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String root = request.getContextPath();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<font color="red">
아이디 또는 비밀번호 확인후 다시 로그인하세요.<br>
<a href="<%=root %>/login/login.jsp">로그인</a>
<a href="<%=root %>/member?act=mvjoin">회원가입</a>
</font>
</center>
</body>
</html>