<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String root = request.getContextPath();
%>    
<%@ include file="/menu_source/menubar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
#layout {background-color:#f0f0f0; width:800px;margin:0 auto;}
#leftside {background:url("<%=root%>/img/Round200400.png"); float:left; width:200px; height :600px}
#leftinside {background:url("<%=root%>/img/Round200200.png"); height :200px; display:table-cell; width:200px; vertical-align:middle;}
#content {background-color:#8bbdff; float:right; width:600px; height :600px }
</style>
<script>
function inquiry(){
	window.open("<%=root%>/mypage/inquiry.jsp","inquiry","top=200, left=300, width=600, height=500, menubar=no, status=no, toolbar=no, location=no, scrollbars=no");
}
</script>
</head>
<body>
<center>
	<div id = "layout">
		<div id = "leftside">
			<div id = "leftinside">
			<table cellpadding="10">
			 <tr>
			<td><font size="4">����������</font></td>
			 </tr>
			 <tr>
			<td>XXX���� <br>�Ϲ�ȸ���Դϴ�.</td>
			 </tr>
			 <tr>
			<td><input type="button" value="LogOut"> <input type="button" value="ȸ����������"></td>
			 </tr>
			 </table>
			</div>
			<br>
			<table cellpadding="10" align = "center">
			<tr align = "center">
			<td><a href = "<%=root%>/mypage/mypage.jsp" value = "mypage">����������</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/buylist.jsp" value = "buyList">���ų���</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/wishList.jsp" value = "wishList">���ø���Ʈ</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/basket.jsp" value = "basket">��ٱ���</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/myWrite.jsp" value = "myWrite">���� ����</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/QnA.jsp" value = "QnA">1:1 ����</a></td>
			 </tr>			 			 
			 </table>			
		</div>
		<div id = "content">
		<br><br><br><br>
		<table border="1" width="600">
			<tr>
			<td width="110"><img src="http://www.young.go.kr/uploads/contents/0/12/main/original/4283ecdf-5273-42d3-8afa-4f938b32bacc.jpg" width="110" height="110"></td>
			<td><font size="5">1:1�����ϱ�</font></td>
			</tr>
		</table>
		<table>
			<tr>
			<td><input type="button" style="width:120px; height:30px; color:white; font-size:9pt; background-color:red;" value=" 1:1 �����ϱ� > " onclick="javascript:inquiry();"></td>
			</tr>
		</table>
		<br>
		<table border="1" width="600">
			<tr align="center">
			<td>����</td>
			<td width="330">����</td>
			<td>�ۼ���</td>
			<td width="80">�亯��Ȳ</td>
			</tr>
			<tr align="center">
			<td>������ ����</td>
			<td width="330">�� ���εǳ���?</td>
			<td>2014.04.28</td>
			<td width="80">Yes</td>
			</tr>
		</table>
		
		</div>	
	</div>	
</center>
</body>
</html>