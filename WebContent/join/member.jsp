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
<h1>ȸ������</h1>
<form name="joinform" method="post" action="">
	<input type="hidden" name="act" value="register">
	<table>
		<tr>
			<td colspan="4"><h3>���̵�(�̸���)</h3></td>
		</tr>
		<tr>
			<td colspan="4"><input type="text" name="id1" id="id1" value=""
				size="15"> @ <input type="text" name="id2" id="id2" value=""
				size="15"> <select name="id3">
					<option value="�����Է�">�����Է�</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="nate.com">nate.com</option>
					<br>
			</select></td>
		</tr>
		<tr><td colspan="4"><input type="checkbox" name="emailck" id="emailck" value="emailck" checked="checked">�̸��� ���ŵ���
		<tr>
			<td colspan="2"><h3>��й�ȣ</h3></td>
			<td colspan="2"><h3>��й�ȣ Ȯ��</h3></td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="pass1" id="pass1"
				value="" size="15"></td>
			<td colspan="2"><input type="password" name="pass2" id="pass2"
				value="" size="15"></td>
		</tr>
	</table>

	<h3>ȸ������</h3>
	<table>
		<tr>
			<td class="td4">�̸�</td>
			<td class="td4"><input type="text" name="name" id="name"
				value="" size="12"></td>
		</tr>
		<tr>
			<td class="td4">�޴�����ȣ</td>
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
				<input type="checkbox" name="smsck" vlaue="smsck" id="smsck" checked="checked"> SMS���ŵ��� 
			</td>
		</tr>
		<tr>
			<td class="td4">�������</td>
			<td class="td4"><select name="birth1">
					<option value="�⵵">�⵵</option>
					<option value="2000��">2000��</option>
					<option value="1999��">1999��</option>
					<option value="1998��">1998��</option>
					<option value="1997��">1997��</option>
					<option value="1996��">1996��</option>
					<option value="1995��">1995��</option>
					<option value="1994��">1994��</option>
					<option value="1993��">1993��</option>
					<option value="1992��">1992��</option>
					<option value="1991��">1991��</option>
					<option value="1990��">1990��</option>
					<option value="1989��">1989��</option>
					<option value="1988��">1988��</option>
					<option value="1987��">1987��</option>
					<option value="1986��">1986��</option>
					<option value="1985��">1985��</option>
					<option value="1984��">1983��</option>
					<option value="1982��">1982��</option>
					<option value="1981��">1981��</option>
					<option value="1980��">1980��</option>
					<option value="1979��">1979��</option>
					<option value="1978��">1978��</option>
					<option value="1977��">1977��</option>
					<option value="1976��">1976��</option>
					<option value="1975��">1975��</option>
					<option value="1974��">1974��</option>
					<option value="1973��">1973��</option>
					<option value="1972��">1972��</option>
					<option value="1971��">1971��</option>
					<option value="1970��">1970��</option>
					<option value="1969��">1969��</option>
					<option value="1968��">1968��</option>
			</select> <select name="birth2">
					<option value="��">��</option>
					<option value="1��">1��</option>
					<option value="2��">2��</option>
					<option value="3��">3��</option>
					<option value="4��">4��</option>
					<option value="5��">5��</option>
					<option value="6��">6��</option>
					<option value="7��">7��</option>
					<option value="8��">8��</option>
					<option value="9��">9��</option>
					<option value="10��">10��</option>
					<option value="11��">11��</option>
					<option value="12��">12��</option>
			</select><select name="birth3">
					<option value="��">��</option>
					<option value="31��">31��</option>
					<option value="30��">30��</option>
					<option value="29��">29��</option>
					<option value="28��">28��</option>
					<option value="27��">27��</option>
					<option value="26��">26��</option>
					<option value="25��">25��</option>
					<option value="24��">24��</option>
					<option value="23��">23��</option>
					<option value="22��">22��</option>
					<option value="21��">21��</option>
					<option value="20��">20��</option>
					<option value="19��">19��</option>
					<option value="18��">18��</option>
					<option value="17��">17��</option>
					<option value="16��">16��</option>
					<option value="15��">15��</option>
					<option value="14��">14��</option>
					<option value="13��">13��</option>
					<option value="12��">12��</option>
					<option value="11��">11��</option>
					<option value="10��">10��</option>
					<option value="9��">9��</option>
					<option value="8��">8��</option>
					<option value="7��">7��</option>
					<option value="6��">6��</option>
					<option value="5��">5��</option>
					<option value="4��">4��</option>
					<option value="3��">3��</option>
					<option value="2��">2��</option>
					<option value="1��">1��</option>
					<br>
			</select> ����(����) <input type="radio" name="man" value="����">���� <input
				type="radio" name="women" value="����">����</td>
		</tr>

		<tr>
		<td colspan="4" align="center"><br><input type="button" name="join" id="join" value="���ԿϷ�" onclick=""style="height:50px;width:100px; color:white; font-weight:bold; font-size:15px; background-color:skyblue; border:1px dashed #ff008;"/></td>
		</tr>
	</table>

</form>
</body>
</html>