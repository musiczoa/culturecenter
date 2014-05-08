<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/menu_source/menubar.jsp" %>
<%@ include file="/common/bcommon.jsp"%>
<script type="text/javascript">
function writeNotice(){
	if(document.writeForm.subject.value == ""){
		alert("제목을 입력하세요");
		return;
	}else if(document.writeForm.content.value == ""){
		alert("내용을 입력하세요");
		return;
	}else{//입력을 다 했으면 act의 이름을 newwrite로 정하고 bcode의 값을 가지고 bcode로 정의 합시다.
		document.writeForm.act.value = "newwrite";
		document.writeForm.bcode.value = "<%=bcode%>";
		document.writeForm.pg.value = "1";
		
		document.writeForm.action = "<%=root%>/notice";
		document.writeForm.submit();//ReBoardController로 newwrite를 가진act와 bcode를 가지고 갑시다. 폼안에 있기때문에 가지고 갈수 있음.
	}
}

</script>
 
<center><b>공지게시판 글쓰기</b>
<br>
<form id="writeForm" name="writeForm" method="post" action="">
<input type="hidden" name="act" value="">
<input type="hidden" name="bcode" value="">
<input type="hidden" name="pg" value="">
<input type="hidden" name="" value="">


<table width="800" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="">
     <a href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1"> 글목록</a>
   </td>
   </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >제 목</td>
    <td  width="700">
    <input type="text" size="100" maxlength="50" name="subject" value=""></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >내 용</td>
    <td  width="700" >
     <textarea name="content" rows="13" cols="100"></textarea> </td>
  </tr>
<tr>     
 <td colspan=2 bgcolor="" align="center">
  <input type="button" value="글쓰기" onclick = "javascript:writeNotice();" > 

  <input type="button" value="목록보기" onclick="javascript:goFirstPage();">
</td></tr></table>   

</form>     
</body>
</html>     

 
