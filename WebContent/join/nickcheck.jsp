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
		alert("검색할 닉네임을 입력하세요!");
		return;
	} else { //검색할 아이디를 입력한 것~!
		//document.nickform.act.value="nicksearch";
		document.nickform.action = "<%=root%>/member";
		document.nickform.submit();
	}
}

function nickuse(nickname){
	opener.document.joinform.nickname.value=nickname; //아이디 찍게 만들기~!! 
	self.close(); //자기자신은 닫아라! 
}
</script>
</head>
<body>
<center>
<form name="nickform" method="get" action="">
<input type="hidden" name="act" value="nicksearch">
<h3>닉네임 중복 검사</h3>
<table width="350">
<tr>
	<td class="td3">검색할 닉네임을 입력하세요</td>
</tr>
<tr>
	<td class="td4" style="text-align: center">
	<input type="text" name="nickname" id="nickname" onkeypress="javascript:if(event.keyCode == 13){ nickcheck(); }">
	<input type="button" value="검색" id="nickck" onclick="javascript:nickcheck();">
	</td>
</tr>
<tr>
	<td class="td4">
	<%if(nickname==null){
		%>
	검색할 닉네임을 정확히 입력한 후 검색 버튼을 클릭하세요..
	<%}else{
		int cnt=StringCheck.nullToOne(request.getParameter("cnt"));
		if(cnt==0){
			
	%>
	<b><%=nickname%></b>는(은) 사용가능합니다. <input type="button" value="사용" onclick="javascript:nickuse('<%=nickname%>');"> <!-- 버튼만들고, id 텍스트상자에 입력하게되게! -->
	<%	 
		}else{
	%>
	<b><%=nickname%></b>는(은) 사용할 수 없습니다.<br>
	다시 검색해주세요.
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