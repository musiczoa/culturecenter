<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");

	String _row = request.getParameter("row");
	String _col = request.getParameter("col");

	int row = 10, col = 15;
	if (_row != null)
		row = Integer.parseInt(_row);
	if (_col != null)
		col = Integer.parseInt(_col);

	int w = 30 + col * 30 + col / 5 * 20;
	if (col % 5 == 0)
		w -= 20;
%>
<%@ include file="/menu_source/menubar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	font-size: 9pt;
}

td {
	font-size: 9pt;
	font-family: ����;
}
</style>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  
<script language=JavaScript>  
$(document).ready(function() {  
    //��ü����  
    $("#checkAll").click(function () {  
      //console.log($('input[name=chkid]'));  
    	$('input[name="chkid"]').prop('checked',$(this).is(":checked"));  
    });  
});  

</script> 

<script type="text/javascript">
function send() {
	var f=document.forms[0];
	 // �ڹٽ�Ʈ��Ʈ���� ǥ���� ��� ����
	var row="<%=row%>";
	var col="<%=col%>";
	var n = 0;

		for (var i = 0; i < row * col; i++) {
			if (f.ch[i].checked == true)
				n++;
		}
		if (n<1 || n>5) {
			alert("�¼��� 1~5�� ���� ���� �մϴ�.");
			return;
		}

		f.submit();
	}
</script>

</head>
<body>
	<br />
	<br />

	<form action="ch_action.jsp" method="post">
		<table width="<%=w%>">
			<tr height="30">
				<td width='30'>&nbsp;</td>
				<%
					for (int i = 1; i <= col; i++) {
						if (i != 1 && i % 5 == 1)
				%>
							<td width='5'>&nbsp;</td>
						<td width='30' align='center'><%=i%>��</td>
				<%
					}
				%>
			</tr>
			
			
			<%
				String s;
				for (int i = 1; i <= row; i++) {
					char to_char = (char)(i + 64);
			%>

			<tr height='25'>
				<td align='center'><%=to_char%>��</td>
				<%
					for (int j = 1; j <= col; j++) {
						if (j != 1 && j % 5 == 1)
				%>
							<td width='5' bgcolor='green'>&nbsp;</td>
					
						<td width='30' align='center'>
							<%
								s = to_char + ":" + j;
							%> 
							<input type='checkbox' name='ch' value='<%=s%>'>
						</td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>

		</table>
		///////////////////////////////////////////////////////////////////////////////////
		<input type="checkbox" id="checkAll" name="checkAll" class="chk" /> ��ü����<P/>  
   
 <input type="checkbox" name="chkid"  value="1" class="chk" />1<P/>  
 <input type="checkbox" name="chkid"  value="2" class="chk" />2<P/>  
 <input type="checkbox" name="chkid"  value="3" class="chk" />3<P/>  
 <input type="checkbox" name="chkid"  value="4" class="chk" />4<P/>  
 <input type="checkbox" name="chkid"  value="5" class="chk" />5<P/>  
 <input type="checkbox" name="chkid"  value="6" class="chk" />6<P/>  
 <input type="checkbox" name="chkid"  value="7" class="chk" />7<P/>  
  

		<table width="<%=w%>">
			<tr height="50">
				<td align="left"><input type="button" value="�¼�����" onclick="send();">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
