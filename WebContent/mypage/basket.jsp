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
		<table border="1" width="600">
			<tr>
			<td colspan ="7">◎ 장바구니 | 구매할려고 저장한 목록이 보여집니다.</td>
			</tr>
			<tr align ="center">
			<td width ="20"><input type="checkbox"></td>
			<td width="250" colspan="2">상품명</td>
			<td width ="70">금액</td>
			<td width ="70">수량</td>
			<td width ="70">합계</td>
			<td width ="70">주문/삭제</td>
			</tr>
			<tr align ="center">
			<td width ="20"><input type="checkbox"></td>
			<td><img src="http://image.sossage.net/message/20130909/1028493284_aGczFDxh_2013071711.jpg" width="65" height="90"></td>
			<td width="195">보니앤클라이드</td>
			<td width ="65">20,000</td>
			<td width ="65"><input type="text" size="3" maxlength ="2"><br><br><input type="button" value="변경"></td>
			<td width ="65">20,000</td>
			<td width ="80"><input type="button" value="주문"><br><br><input type="button" value="삭제"></td>
			</tr>
			<tr>
			<td colspan ="7" align="right">>총 주문금액 :<font color="red">20,000원</font></td>
			</tr>
		</table>
			<br>			
			<table border="1" width ="600">
			<tr align = "right">
			<td>선택한 상품 <input type="button" value="주문하기"> <input type="button" value="삭제"></td>
			</tr>
			</table>		
		</div>	
	</div>	
</center>
</body>
</html>