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
</head>
<body>
<center>
 <table border="1" width="800">
	  <tr>
		<td width = "500">공연번호  <font size="5"> | 서울시극단 정기공연 '봉선화' </font></td>
		<td></td>
	  </tr>

	  <tr>
		<td rowspan="6"  width="500"><img src="http://admin.sejongpac.or.kr/upload/ckeditor/upload20140408_172229_0796611.jpg"></td>
		<td valign="top">
		<table border="1" width="300">
		<tr><td>기간 : </td></tr>
		<tr><td>장소 : </td></tr>
		<tr><td>시간 : </td></tr>
		<tr><td>연령 : </td></tr>
		<tr><td>티켓 : </td></tr>
		<tr><td align = "center" valign="bottom"><a href=""><img src="<%=root%>/img/culture/btn_ticketing02.gif"></a> 
		<a href=""><img src="<%=root%>/img/culture/btn_interest.gif"></a>
		<a href=""><img src="<%=root%>/img/culture/btn_review.gif"> </a>
		<a href=""><img src="<%=root%>/img/culture/btn_list04.gif"></a>
		</td></tr>
		</table>
		</td>
	  </tr>
  </table>
</center>
</body>
</html>