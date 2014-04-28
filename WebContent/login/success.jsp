<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
    

<%	
String root = request.getContextPath();

response.setHeader("Pragma", "No-cache"); //캐시메모리 저장 금지 
response.setHeader("Cache-Control", "no-cache");
response.addHeader("Cache-Control", "no-store");
response.setDateHeader("Expires", 1L);

%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<font color="blue" size="15"><%=%>(<%= %>)</font>님 안녕하세용*.*<br>
<a href="<%=root %>/member?act=mvmodify">회원정보수정/탈퇴</a>  <!-- 버튼 세개만들깅! -->
<a href="<%=root %>/member?act=mypage">마이페이지</a> <!-- 로그인해야지만 볼 수 있는 페이지 -->
<a href="<%=root %>/member?act=logout">로그아웃</a>
</center>
</body>
</html>
s