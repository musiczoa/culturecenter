<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.*"%>

<%@ include file="/menu_source/menubar.jsp" %>    

<%	
String root = request.getContextPath();

String nickname=request.getParameter("nickname");
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
<script language="JavaScript">
     location.href="<%=root%>/index.jsp";
</script>


</center>
</body>
</html>
<% }%>