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
			<td><font size="4">마이페이지</font></td>
			 </tr>
			 <tr>
			<td>XXX님은 <br>일반회원입니다.</td>
			 </tr>
			 <tr>
			<td><input type="button" value="LogOut"> <input type="button" value="회원정보수정"></td>
			 </tr>
			 </table>
			</div>
			<br>
			<table cellpadding="10" align = "center">
			<tr align = "center">
			<td><a href = "<%=root%>/mypage/mypage.jsp" value = "mypage">마이페이지</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/buylist.jsp" value = "buyList">구매내역</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/wishList.jsp" value = "wishList">위시리스트</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/basket.jsp" value = "basket">장바구니</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/myWrite.jsp" value = "myWrite">내가 쓴글</a></td>
			 </tr>
			 <tr align = "center">
			<td><a href = "<%=root%>/mypage/QnA.jsp" value = "QnA">1:1 문의</a></td>
			 </tr>			 			 
			 </table>			
		</div>
		<div id = "content">
		<br><br><br><br>
		<table border="1" width="590">
			<tr>
			<td>◎ 내가 쓴글</td>
			</tr>
		</table>
		<br>
		<table border="1" width="590">
			<tr align="left">
			<td>회원님께서는 현재 <font color="red">1</font>건의 게시글이 등록되어 있습니다.</td>
			</tr>			
		</table>
		<table border="1" width ="590">
			<tr align="center">
			<td width="40">No</td>
			<td width="300">제목</td>
			<td>작성일</td>
			<td>삭제</td>
			</tr>
			<tr align="center">
			<td width="40">1</td>
			<td width="300"><a href="">으리야야야야야야야</a></td>
			<td>2014.04.27</td>
			<td><input type="button" value="삭제"></td>
			</tr>
		</table>		
		</div>	
	</div>	
</center>
</body>
</html>