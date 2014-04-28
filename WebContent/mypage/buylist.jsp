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
		<table border="1" width="550">
			<tr>
			<td colspan ="6">◎ 구매내역 | 전에 구매했던 내역이 보여집니다.</td>
			</tr>
			<tr>
			<td colspan ="6"> <input type = "button" value = "15일"> <input type = "button" value = "1개월"> <input type = "button" value = "2개월"> <input type = "button" value = "3개월"></td>
			</tr>
			<tr align = "center">
			<td>N O</td>
			<td>주문번호</td>
			<td width = "200">상 품 명</td>
			<td>판매단가</td>
			<td>수    량</td>
			<td>소계금액</td>
			</tr>
			<tr align = "center">
			<td>1</td>
			<td>00000</td>
			<td width = "200">고희안트리오의 재즈콘서트</td>
			<td>20,000</td>
			<td>2</td>
			<td>40,000</td>
			</tr>		
		</table>
		</div>	
	</div>	
</center>
</body>
</html>