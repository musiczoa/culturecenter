<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
String root = request.getContextPath();

String bcode = request.getParameter("bcode");
String pg = request.getParameter("pg");

MemberDto memberDto = (MemberDto)session.getAttribute("userInfo");
%>
<%@ include file="/menu_source/menubar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판</title>
<script type="text/javascript">
function writeReview(){
	if(document.writeForm.subject.value == ""){
		alert("제목을 입력하세요");
		return;
	}else if(document.writeForm.content.value == ""){
		alert("내용을 입력하세요");
		return;
	}else{
		document.writeForm.act.value = "newwrite";
		document.writeForm.bcode.value = "<%=bcode%>";
		document.writeForm.pg.value = "1";
		
		document.writeForm.action = "<%=root%>/review";
		document.writeForm.submit();
	}
}

</script>
</head>
<body bgcolor=""> 
<center><b>후기게시판 글쓰기</b>
<br>
<form id="writeForm" name="writeForm" method="post" action="">
<input type="hidden" name="num" value="">
<input type="hidden" name="ref" value="">
<input type="hidden" name="re_step" value="">
<input type="hidden" name="re_level" value="">

<table width="800" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="">
     <a href="./hugi.jsp"> 글목록</a>
   </td>
   </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >제 목</td>
    <td  width="700">
    <input type="text" size="100" maxlength="50" name="subject" value="제목쓰는칸"></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="" align="center" >내 용</td>
    <td  width="700" >
     <textarea name="content" rows="13" cols="100"></textarea> </td>
  </tr>
<tr>     
 <td colspan=2 bgcolor="" align="center">
  <input type="submit" value="글쓰기" OnClick="javascript:writeReview();"> 
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" onClick="<%=root%>/notice?act=reviewList&bcode=<%=bcode%>&pg=1"">
</td></tr></table>   

</form>     
</body>
</html>     

 
