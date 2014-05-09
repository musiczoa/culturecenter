<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@page import="java.util.*" import="com.kitri.board.model.GuestBookDto"%>
<%
   String root = request.getContextPath();

   String bcode = request.getParameter("bcode");
   
   String pg = request.getParameter("pg");

   List<GuestBookDto> list = (List<GuestBookDto>) request.
         getAttribute("listArticle");
   //PageNavigation pageNavi =(PageNavigation) request.getAttribute("pageNavi");

   //MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
%>
<script type="text/javascript">
function gDelete(seq) {
    alert("삭제하러 간당");
   document.listForm.act.value = "delete";
   document.listForm.seq.value = seq;
   document.listForm.bcode.value=<%=bcode%>;
   document.listForm.pg.value= <%=pg%>;
   document.listForm.action = "<%=root%>/guest";
   document.listForm.submit();
}

function gModify(seq) {
    
	   document.listForm.act.value = "gvmodify";
	   document.listForm.seq.value = seq;
	   document.listForm.bcode.value=<%=bcode%>;
	   document.listForm.pg.value= <%=pg%>;
	   document.listForm.action = "<%=root%>/guest";
	   document.listForm.submit();
	}
</script>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
   <center>
      <h1>방명록</h1>
      <hr>
      <table><tr>
      <td colspan="5" align="right">
      <a href="community/guestbook/guestbookwrite.jsp">방명록 쓰기</a></td></tr></table>
      
      <form name="listForm" action="" method="post">
      <input type="hidden" name="bcode" value="">
      <input type="hidden" name="act" value="">
      <input type="hidden" name="seq" value="">
      <input type="hidden" name="pg" value="">
         <%
            int size = list.size();
            if (size != 0) {
               for (int i = 0; i < size; i++) {
                  GuestBookDto guestbookDto = list.get(i);
                  %>
                  
         <table cellpadding="5" cellspacing="0" border="1" width="500">
            <tr width="500">
               <td bgcolor="#99CCFF" widht="50" height="20"><%=guestbookDto.getSeq()%></td>
               <td bgcolor="#99CCFF" widht="50" height="20">닉네임</td>
               <td widht="200"><%=guestbookDto.getNickname()%></td>
               <td bgcolor="#99CCFF" height="20" widht="50">작성일</td>
               <td widht="150"><%=guestbookDto.getLogtime()%></td>
            </tr>
            <tr>
               <td colspan="5"><%=guestbookDto.getContent()%></td>
            </tr>

            <tr>

               <td colspan="5" align="right"><input type="button" value="수정" onclick="javascript:gModify('<%=guestbookDto.getSeq()%>');">
               <input type="button" value="삭제" onclick="javascript:gDelete('<%=guestbookDto.getSeq()%>');"></td>
            </tr>
         </table>
         <%
            }
            }
         %>
      </form>


   </center>
</body>
</html>