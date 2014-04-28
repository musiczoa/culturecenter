<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<table border="1" width="600" >
	<tr>
	<td colspan="2" align="left">◎ 문의하기</td>
	</tr>
	<tr>
	<td width="100">제목</td>
	<td><input type="text" size="65"></td>
	</tr>
	<tr>
	<td width="100">유형</td>
	<td><input type="radio" name="type">예매문의<input type="radio" name="type">결제/수수료<input type="radio" name="type">취소/환불/발권
	<input type="radio" name="type">할인문의<input type="radio" name="type">기타</td>
	</tr>
	<tr>
	<td width="100">내용</td>
	<td><textarea rows="20" cols="65"></textarea></td>
	</tr>
	<tr>
	<td width="100">E-mail</td>
	<td><input type="text">@<input type="text"></td>	
	</tr>	
</table>
<br>
<input type="button" value="등록">&nbsp&nbsp&nbsp&nbsp&nbsp<input type="button" value="취소">
</center>
</body>
</html>