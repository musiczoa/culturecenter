<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.MemberDto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String root = request.getContextPath();
System.out.println("root : "+root);

	MemberDto memberDto = new MemberDto();
	memberDto.setNickname("�����");

session.setAttribute("userInfo", memberDto);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><br><br><br><br><br><br>
	<a href="">1. ��������</a><br><br><br>
	<a href="<%=root%>/reboard?act=list&pg=1">2. Q & A</a><br><br><br>
	<a href="">3. ����/���� ����</a><br><br><br>
	<a href="">4. ����</a>
  	</center>
</body>
</html>