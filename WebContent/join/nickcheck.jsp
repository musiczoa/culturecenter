<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.util.*"%>
<%
String root = request.getContextPath();

String nickname = request.getParameter("nickname");
System.out.println(nickname);
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=root %>/css/style.css" type="text/css">
<script type="text/javascript">
function nickcheck(){
	if(document.getElementById("nickname").value == "") {
		alert("�˻��� �г����� �Է��ϼ���!");
		return;
	} else { //�˻��� ���̵� �Է��� ��~!
		//document.nickform.act.value="nicksearch";
		document.nickform.action = "<%=root%>/member";
		document.nickform.submit();
	}
}

function nickuse(nickname){
	opener.document.joinform.nickname.value=nickname; //���̵� ��� �����~!! 
	self.close(); //�ڱ��ڽ��� �ݾƶ�! 
}
</script>
</head>
<body>
<center>
<form name="nickform" method="get" action="">
<input type="hidden" name="act" value="nicksearch">
<h3>�г��� �ߺ� �˻�</h3>
<table width="350">
<tr>
	<td class="td3">�˻��� �г����� �Է��ϼ���</td>
</tr>
<tr>
	<td class="td4" style="text-align: center">
	<input type="text" name="nickname" id="nickname" onkeypress="javascript:if(event.keyCode == 13){ nickcheck(); }">
	<input type="button" value="�˻�" id="nickck" onclick="javascript:nickcheck();">
	</td>
</tr>
<tr>
	<td class="td4">
	<%if(nickname==null){
		%>
	�˻��� �г����� ��Ȯ�� �Է��� �� �˻� ��ư�� Ŭ���ϼ���..
	<%}else{
		int cnt=StringCheck.nullToOne(request.getParameter("cnt"));
		if(cnt==0){
			
	%>
	<b><%=nickname%></b>��(��) ��밡���մϴ�. <input type="button" value="���" onclick="javascript:nickuse('<%=nickname%>');"> <!-- ��ư�����, id �ؽ�Ʈ���ڿ� �Է��ϰԵǰ�! -->
	<%	 
		}else{
	%>
	<b><%=nickname%></b>��(��) ����� �� �����ϴ�.<br>
	�ٽ� �˻����ּ���.
		<%
	}
	}
		%></td>

</tr>
</table>
</form>
</center>
</body>
</html>