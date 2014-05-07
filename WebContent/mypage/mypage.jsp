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
		<br><br>
		<table border = "1">
		<tr>
		<td><font size = "5" color ="red">2014. 04</font></td>
		</tr>
		</table>
		<br><br>
		<table border = "1" cellspacing = "3" width = "550">
		<tr>
		<td><font size = "4">공연/전시명</font></td>
		<td colspan="3"><input type ="text" value = "search"><input type ="button" value = "검색"></td>
		</tr>
		<tr height = "100" width = "50">
		<td>이미지 넣을곳</font></td>
		<td>이미지 넣을곳</font></td>
		<td>이미지 넣을곳</font></td>
		<td>이미지 넣을곳</font></td>
		</tr>
		<tr align="center">
		<td>공연 제목</font></td>
		<td>공연 제목</font></td>
		<td>공연 제목</font></td>
		<td>공연 제목</font></td>
		</tr>
		</table>
		<br><br>
		<table border = "1" cellspacing = "3" width = "550">
		<tr>
		<td><font size = "4">XXX님 맞춤공연</font></td>
		<td align = "right"><a href = "">맞춤정보설정></a></td>
		<td rowspan="2" width = "20"></td>
		<td colspan = "2">최근 본 공연ㆍ전시</a></td>
		</tr>
		<tr height = "120" width = "60">
		<td>이미지 넣을곳</font></td>
		<td>공연제목<br>0000~0000<br><input type = "button" value="상세"></td>
		<td>이미지 넣을곳</font></td>
		<td>공연,전시 제목<br>0000~0000<br><input type = "button" value="상세"></td>
		</tr>		
		</table>
		<br><br>
		<img src='<%=root%>/img/banner.PNG' width = "550">
		
		</div>
	
	</div>
	
</center>
</body>
</html>