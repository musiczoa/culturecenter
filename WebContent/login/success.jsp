<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.*"%>

<%@ include file="/menu_source/menubar.jsp" %>    

<%	
String root = request.getContextPath();

MemberDto memberDto =(MemberDto)session.getAttribute("userInfo");

if(memberDto==null){
	%>
	<script>alert("잘못된 이동 경로입니다.\n 주소를 확인해 주세용*^^*");
	document.location.href="<%=root %>/member";
	</script>
<%
}else{
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>

<font color="blue" size="7"><%=memberDto.getNickname()%>(<%=memberDto.getEmail() %>)</font>님 환영합니다.<br>

</center>
</body>
</html>
<% }%>