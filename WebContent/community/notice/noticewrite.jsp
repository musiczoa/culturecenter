<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/menu_source/menubar.jsp" %>
<%@ include file="/common/bcommon.jsp"%>
<script type="text/javascript">
function writeNotice(){
	if(document.writeForm.subject.value == ""){
		alert("������ �Է��ϼ���");
		return;
	}else if(document.writeForm.content.value == ""){
		alert("������ �Է��ϼ���");
		return;
	}else{//�Է��� �� ������ act�� �̸��� newwrite�� ���ϰ� bcode�� ���� ������ bcode�� ���� �սô�.
		document.writeForm.act.value = "newwrite";
		document.writeForm.bcode.value = "<%=bcode%>";
		document.writeForm.pg.value = "1";
		
		document.writeForm.action = "<%=root%>/notice";
		document.writeForm.submit();//ReBoardController�� newwrite�� ����act�� bcode�� ������ ���ô�. ���ȿ� �ֱ⶧���� ������ ���� ����.
	}
}

</script>
 
<center><b>�����Խ��� �۾���</b>
<br>
<form id="writeForm" name="writeForm" method="post" action="">
<input type="hidden" name="act" value="">
<input type="hidden" name="bcode" value="">
<input type="hidden" name="pg" value="">
<input type="hidden" name="" value="">


<table width="800" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="">
     <a href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1"> �۸��</a>
   </td>
   </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >�� ��</td>
    <td  width="700">
    <input type="text" size="100" maxlength="50" name="subject" value=""></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >�� ��</td>
    <td  width="700" >
     <textarea name="content" rows="13" cols="100"></textarea> </td>
  </tr>
<tr>     
 <td colspan=2 bgcolor="" align="center">
  <input type="button" value="�۾���" onclick = "javascript:writeNotice();" > 

  <input type="button" value="��Ϻ���" onclick="javascript:goFirstPage();">
</td></tr></table>   

</form>     
</body>
</html>     

 
