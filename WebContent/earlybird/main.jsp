<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String root = request.getContextPath();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function mvcreratelist (){
	document.location.href=root+"/earlybird?act=mvcreate";
}
</script>
</head>
<body>
<input type="button" value="�� �̺�Ʈ ����" onclick="javascript:mvcreatelist();">
</body>
</html>