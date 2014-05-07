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
		<table border="1" width="600">
			<tr>
			<td width="110"><img src="http://www.young.go.kr/uploads/contents/0/12/main/original/4283ecdf-5273-42d3-8afa-4f938b32bacc.jpg" width="110" height="110"></td>
			<td><font size="5">1:1문의하기</font></td>
			</tr>
		</table>
		<table>
			<tr>
			<td><input type="button" style="width:120px; height:30px; color:white; font-size:9pt; background-color:red;" value=" 1:1 문의하기 > " onclick="javascript:inquiry();"></td>
			</tr>
		</table>
		<br>
		<table border="1" width="600">
			<tr align="center">
			<td>유형</td>
			<td width="330">제목</td>
			<td>작성일</td>
			<td width="80">답변현황</td>
			</tr>
			<tr align="center">
			<td>선택한 유형</td>
			<td width="330">얼마 할인되나여?</td>
			<td>2014.04.28</td>
			<td width="80">Yes</td>
			</tr>
		</table>
		
		</div>	
	</div>	
</center>
</body>
</html>