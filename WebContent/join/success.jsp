<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<%	
String root = request.getContextPath();

	%>
	<%@ include file="/menu_source/menubar.jsp" %>
	<script>alert("�߸��� �̵� ����Դϴ�.\n �ּҸ� Ȯ���� �ּ���*^^*");
	document.location.href="<%=root %>/member";
	</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<font color="blue" size="15"><%= %>)</font>�� ȸ�������� ȯ���մϴ�.<br>
�α��� �� ��� ���񽺸� �̿��� �� �ֽ��ϴ�.<br>
3���� �α��� �������� �̵��մϴ�.
<meta http-equiv="refresh" content="3; url=<%=root %>/member?act=mvlogin">
</center>
</body>
</html>

