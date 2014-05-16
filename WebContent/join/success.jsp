<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.*"%>
<%@ include file="/menu_source/menubar.jsp" %>   

<%	
String root = request.getContextPath();
String nickname=request.getParameter("nickname");
MemberDto memberDto =(MemberDto)session.getAttribute("userInfo");
	%>
<script>alert("가입을 환영합니다^^* \n 로그인 페이지로 이동합니다");
document.location.href="<%=root %>/member?act=mvlogin";
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
</center>
</body>
</html>

