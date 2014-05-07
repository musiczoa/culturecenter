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
<link rel="stylesheet" href="<%=root%>/css/style.css" type="text/css">
<script type="text/javascript">
	
</script>
<h1>회원가입</h1>
<form name="joinform" method="post" action="">
	<input type="hidden" name="act" value="register">
	<table>
		<tr>
			<td colspan="4"><h3>아이디(이메일)</h3></td>
		</tr>
		<tr>
			<td colspan="4"><input type="text" name="id1" id="id1" value=""
				size="15"> @ <input type="text" name="id2" id="id2" value=""
				size="15"> <select name="id3">
					<option value="직접입력">직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="nate.com">nate.com</option>
					<br>
			</select></td>
		</tr>
		<tr><td colspan="4"><input type="checkbox" name="emailck" id="emailck" value="emailck" checked="checked">이메일 수신동의
		<tr>
			<td colspan="2"><h3>비밀번호</h3></td>
			<td colspan="2"><h3>비밀번호 확인</h3></td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="pass1" id="pass1"
				value="" size="15"></td>
			<td colspan="2"><input type="password" name="pass2" id="pass2"
				value="" size="15"></td>
		</tr>
	</table>

	<h3>회원정보</h3>
	<table>
		<tr>
			<td class="td4">이름</td>
			<td class="td4"><input type="text" name="name" id="name"
				value="" size="12"></td>
		</tr>
		<tr>
			<td class="td4">휴대폰번호</td>
			<td class="td4"><select name="tel1">
					<option value="">----</option>
					<option value="010">010</option>
					<option value="010">011</option>
					<option value="010">016</option>
					<option value="010">017</option>
					<option value="010">018</option>
					<option value="010">019</option>
			</select> - <input type="text" name="tel2" value="" size="4" maxlength="4">
				- <input type="text" name="tel3" value="" size="4" maxlength="4">
				<input type="checkbox" name="smsck" vlaue="smsck" id="smsck" checked="checked"> SMS수신동의 
			</td>
		</tr>
		<tr>
			<td class="td4">생년월일</td>
			<td class="td4"><select name="birth1">
					<option value="년도">년도</option>
					<option value="2000년">2000년</option>
					<option value="1999년">1999년</option>
					<option value="1998년">1998년</option>
					<option value="1997년">1997년</option>
					<option value="1996년">1996년</option>
					<option value="1995년">1995년</option>
					<option value="1994년">1994년</option>
					<option value="1993년">1993년</option>
					<option value="1992년">1992년</option>
					<option value="1991년">1991년</option>
					<option value="1990년">1990년</option>
					<option value="1989년">1989년</option>
					<option value="1988년">1988년</option>
					<option value="1987년">1987년</option>
					<option value="1986년">1986년</option>
					<option value="1985년">1985년</option>
					<option value="1984년">1983년</option>
					<option value="1982년">1982년</option>
					<option value="1981년">1981년</option>
					<option value="1980년">1980년</option>
					<option value="1979년">1979년</option>
					<option value="1978년">1978년</option>
					<option value="1977년">1977년</option>
					<option value="1976년">1976년</option>
					<option value="1975년">1975년</option>
					<option value="1974년">1974년</option>
					<option value="1973년">1973년</option>
					<option value="1972년">1972년</option>
					<option value="1971년">1971년</option>
					<option value="1970년">1970년</option>
					<option value="1969년">1969년</option>
					<option value="1968년">1968년</option>
			</select> <select name="birth2">
					<option value="월">월</option>
					<option value="1월">1월</option>
					<option value="2월">2월</option>
					<option value="3월">3월</option>
					<option value="4월">4월</option>
					<option value="5월">5월</option>
					<option value="6월">6월</option>
					<option value="7월">7월</option>
					<option value="8월">8월</option>
					<option value="9월">9월</option>
					<option value="10월">10월</option>
					<option value="11월">11월</option>
					<option value="12월">12월</option>
			</select><select name="birth3">
					<option value="일">일</option>
					<option value="31일">31일</option>
					<option value="30일">30일</option>
					<option value="29일">29일</option>
					<option value="28일">28일</option>
					<option value="27일">27일</option>
					<option value="26일">26일</option>
					<option value="25일">25일</option>
					<option value="24일">24일</option>
					<option value="23일">23일</option>
					<option value="22일">22일</option>
					<option value="21일">21일</option>
					<option value="20일">20일</option>
					<option value="19일">19일</option>
					<option value="18일">18일</option>
					<option value="17일">17일</option>
					<option value="16일">16일</option>
					<option value="15일">15일</option>
					<option value="14일">14일</option>
					<option value="13일">13일</option>
					<option value="12일">12일</option>
					<option value="11일">11일</option>
					<option value="10일">10일</option>
					<option value="9일">9일</option>
					<option value="8일">8일</option>
					<option value="7일">7일</option>
					<option value="6일">6일</option>
					<option value="5일">5일</option>
					<option value="4일">4일</option>
					<option value="3일">3일</option>
					<option value="2일">2일</option>
					<option value="1일">1일</option>
					<br>
			</select> 성별(선택) <input type="radio" name="man" value="남자">남자 <input
				type="radio" name="women" value="여자">여자</td>
		</tr>

		<tr>
		<td colspan="4" align="center"><br><input type="button" name="join" id="join" value="가입완료" onclick=""style="height:50px;width:100px; color:white; font-weight:bold; font-size:15px; background-color:skyblue; border:1px dashed #ff008;"/></td>
		</tr>
	</table>

</form>
</body>
</html>