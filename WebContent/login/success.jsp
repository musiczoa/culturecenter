<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
    

<%	
String root = request.getContextPath();

response.setHeader("Pragma", "No-cache"); //ĳ�ø޸� ���� ���� 
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
<font color="blue" size="15"><%=%>(<%= %>)</font>�� �ȳ��ϼ���*.*<br>
<a href="<%=root %>/member?act=mvmodify">ȸ����������/Ż��</a>  <!-- ��ư ���������! -->
<a href="<%=root %>/member?act=mypage">����������</a> <!-- �α����ؾ����� �� �� �ִ� ������ -->
<a href="<%=root %>/member?act=logout">�α׾ƿ�</a>
</center>
</body>
</html>
s