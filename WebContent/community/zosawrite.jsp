<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�Խ���</title>
<script language="JavaScript"></script>
</head>
<body bgcolor=""> 
<center><b>��������Խ��� �۾���</b>
<br>
<form method="post" name="writeform" action="writePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="">
<input type="hidden" name="ref" value="">
<input type="hidden" name="re_step" value="">
<input type="hidden" name="re_level" value="">

<table width="800" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="">
     <a href="./zosa.jsp"> �۸��</a>
   </td>
   </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >�� ��</td>
    <td  width="700">
    <input type="text" size="100" maxlength="50" name="subject" value="���񾲴�ĭ"></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >�� ��</td>
    <td  width="700" >
     <textarea name="content" rows="13" cols="100"></textarea> </td>
  </tr>
<tr>     
 <td colspan=2 bgcolor="" align="center">
  <input type="submit" value="�۾���" > 
  <input type="reset" value="�ٽ��ۼ�">
  <input type="button" value="��Ϻ���" OnClick="">
</td></tr></table>   

</form>     
</body>
</html>     

 
