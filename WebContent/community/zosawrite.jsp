<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판</title>
<script language="JavaScript"></script>
</head>
<body bgcolor=""> 
<center><b>설문조사게시판 글쓰기</b>
<br>
<form method="post" name="writeform" action="writePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="">
<input type="hidden" name="ref" value="">
<input type="hidden" name="re_step" value="">
<input type="hidden" name="re_level" value="">

<table width="800" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="">
     <a href="./zosa.jsp"> 글목록</a>
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
  <input type="submit" value="글쓰기" > 
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="">
</td></tr></table>   

</form>     
</body>
</html>     

 
