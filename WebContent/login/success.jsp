<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.*"%>

<%@ include file="/menu_source/menubar.jsp" %>    

<%	
String root = request.getContextPath();

MemberDto memberDto =(MemberDto)session.getAttribute("userInfo");

if(memberDto==null){
	%>
	<script>alert("�߸��� �̵� ����Դϴ�.\n �ּҸ� Ȯ���� �ּ���*^^*");
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

<font color="blue" size="7"><%=memberDto.getNickname()%>(<%=memberDto.getEmail() %>)</font>�� ȯ���մϴ�.<br>

</center>
</body>
</html>
<% }%>