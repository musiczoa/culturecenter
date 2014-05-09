<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.dto.MemberDto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String root = request.getContextPath();
System.out.println("root : "+root);

	MemberDto memberDto = new MemberDto();
	memberDto.setNickname("김기훈");

session.setAttribute("userInfo", memberDto);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><br><br><br><br><br><br>
	<a href="">1. 공지사항</a><br><br><br>
	<a href="<%=root%>/reboard?act=list&pg=1">2. Q & A</a><br><br><br>
	<a href="">3. 공연/전시 리뷰</a><br><br><br>
	<a href="">4. 방명록</a>
  	</center>
</body>
</html>