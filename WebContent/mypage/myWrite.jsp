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
		<table border="1" width="590">
			<tr>
			<td>�� ���� ����</td>
			</tr>
		</table>
		<br>
		<table border="1" width="590">
			<tr align="left">
			<td>ȸ���Բ����� ���� <font color="red">1</font>���� �Խñ��� ��ϵǾ� �ֽ��ϴ�.</td>
			</tr>			
		</table>
		<table border="1" width ="590">
			<tr align="center">
			<td width="40">No</td>
			<td width="300">����</td>
			<td>�ۼ���</td>
			<td>����</td>
			</tr>
			<tr align="center">
			<td width="40">1</td>
			<td width="300"><a href="">�����߾߾߾߾߾߾�</a></td>
			<td>2014.04.27</td>
			<td><input type="button" value="����"></td>
			</tr>
		</table>		
		</div>	
	</div>	
</center>
</body>
</html>