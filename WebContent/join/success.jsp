<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.*"%>
<%@ include file="/menu_source/menubar.jsp" %>   

<%	
String root = request.getContextPath();
String nickname=request.getParameter("nickname");
MemberDto memberDto =(MemberDto)session.getAttribute("userInfo");
	%>
<script>alert("������ ȯ���մϴ�^^* \n �α��� �������� �̵��մϴ�");
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

