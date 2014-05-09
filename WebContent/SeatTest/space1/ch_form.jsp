<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	request.setCharacterEncoding("euc-kr");

	String _row = "7"; //행
	String _col = "15"; // 열

	int row = 10, col = 15;
	if (_row != null)
		row = Integer.parseInt(_row);
	if (_col != null)
		col = Integer.parseInt(_col);

	int w = 30 + col * 30 + col / 5 * 20;
	if (col % 5 == 0)
		w -= 20;
%>

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
	font-family: 돋움;
}

div label input {
   margin-right:100px;
}
#ck-button {
    margin:0px;
    background-color:#EFEFEF;
    border-radius:3px;
    border:1px solid #D0D0D0;
    overflow:auto;
    width:2.5em;
    height:2.5em;
    float:left;
}
#ck-button label {
    float:left;
    width:2.5em;
    height:2.5em;
}
#ck-button label span {
   font: normal 1px verdana;
    text-align:center;
    padding:3px 0px;
    display:block;
}
#ck-button label input {
    position:absolute;
    top:-20px;
}
#ck-button input:checked + span {
    background-color:#911;
    color:#fff;
}
</style>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>  

<script type="text/javascript">
function send() {
	var f=document.forms[0];
	 // 자바스트립트에서 표현식 사용 가능
	var row="<%=row%>";
	var col="<%=col%>";
	var n = 0;

		for (var i = 0; i < row * col; i++) {
			if (f.ch[i].checked == true)
				n++;
		}
		if (n<1 || n>5) {
			alert("좌석은 1~5개 까지 가능 합니다.");
			return;
		}

		f.submit();
	}
</script>
<script language=JavaScript>  
$(document).ready(function() {  
    //전체선택  
    $("#checkAll").click(function () {  
      //console.log($('input[name=chkid]'));  
    	$('input[name="ch"]').removeAttr("checked");  
    });  
});  
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
						if (i != 1 && i % 5 == 1){
				%>
							<td width='5'>&nbsp;</td>
							<%
					}
				%>
						<td width='30' align='center'><%=i%>열</td>
				<%
					}
				%>
			</tr>
			
			
			<%
				String s;
				for (int i = 1; i <= row; i++) {
					char to_char = (char)(i + 64);
			%>

			<tr width='25' height='25'>
				<td align='center' width='25'><%=to_char%></td> <!-- 행(아래로) -->
				<%
					for (int j = 1; j <= col; j++) {
						if (j != 1 && j % 5 == 1){
				%>
							<td width='3' bgcolor='skyblue'>&nbsp;</td>
							<%
						}
							%> 
					
						<td width='30' align='center'>
							<%
								s = to_char +""+ j;
							%> 
									
							<div id="ck-button">
						       <label>
						          <input type="checkbox" name='ch' id='<%=s%>' value='<%=s%>' class="chk"><span><font size=1><%=s%></font></span>
						       </label>
						    </div>
						</td>
				<%
					}
				%>
			</tr>
			<%
				}
			%>

		</table>
	

		<table width="<%=w%>">
			<tr height="50" align="right">
				<td><input type="button" id="checkAll" name="checkAll" class="chk" value="선택좌석해제">
				&nbsp;
				<input type="button" value="선택좌석예약" onclick="send();"></td>
			</tr>
		</table>
	</form>
</body>
</html>
