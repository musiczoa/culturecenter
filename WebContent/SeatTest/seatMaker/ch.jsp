<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
String.prototype.trim=function(){
	var p=/(^\s*)|(\s*$)/g;
	return this.replace(p,"");
}

function send() {
	var f=document.forms[0];
	var row=f.row.value;
	if(! row) {
		alert("����� �Է� �ϼ���!!!");
		f.row.focus();
		return;
	}
	
	if(! /^[0-9]*$/g.test(row)){
		alert("���� ���ڸ� �����մϴ�.");
		f.row.focus();
		return;
	}
	if(parseInt(row)<5){
		alert("���� 5�̻� �Է� �����մϴ�.");
		f.row.focus();
		return;
	}
	f.row.value=row; // �յ� ���� ���� �� ���� �ٽ� ��������.
	
	var col=f.col.value;
	if(! col) {
		alert("������ �Է� �ϼ���!!!");
		f.col.focus();
		return;
	}
	
	if(! /^[0-9]*$/g.test(col)){
		alert("���� ���ڸ� �����մϴ�.");
		f.col.focus();
		return;
	}
	if(parseInt(col)<5){
		alert("���� 5�̻� �Է� �����մϴ�.");
		f.col.focus();
		return;
	}
	f.col.value=col;
	
	f.submit();
	
}
</script>
</head>
<body>


<form action="ch_form.jsp" method="post">
��� : <input type="text" name="row"><br/>
���� : <input type="text" name="col"><br/>
<input type="button" value="������" onclick="send();"><br/>
</form>
</body>
</html>
