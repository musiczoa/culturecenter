
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String root = request.getContextPath();
    %>
    <%@ include file="/menu_source/menubar.jsp" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus��">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
 </head>
 <body>
  <center>
  <form action="">
  <table width = "800" border = "1">
  
  <tr height = "150" align = "center">
   <td> ������ <input type="text" name="pSearch"> <input type="button" value="�˻�"> 00�� ��ȸ�Ǿ����ϴ�.</td>   
  </tr>
  
  <tr>
   <td>
   
               <table align="center">               
               <tr>
                  <td>
                           <table width = "200" height = "200" border = "1">
                           <tr height = "170">
                           	  <td align="center">
                              <a href="<%=root%>/culture/perDetail.jsp"><img src="http://admin.sejongpac.or.kr/upload/PERFORM1/140425_m_218.jpg" width="185" height="160"></a>
                              </td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "2">����ñش� ������� '����ȭ'</font></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "2">2014.04.25 ~ 2014.05.11</font></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "2">ŰƮ����ȭȸ��</font></td>
                           </tr>
                           </table>
                  </td>
                  <td>
                           <table width = "200" height = "200" border = "1">
                           <tr height = "170">
                              <td></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "1">��������</font></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "1">�����ð�</font></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "1">���</font></td>
                           </tr>
                           </table>
                  </td>
                  <td>
                           <table width = "200" height = "200" border = "1">
                           <tr height = "170">
                              <td></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "1">��������</font></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "1">�����ð�</font></td>
                           </tr>
                           <tr height = "10">
                              <td align = "center"><font size = "1">���</font></td>
                           </tr>
                           </table>
                  </td>                  
               </tr>               
               </table>
   </td>
  </tr>
  
  <tr>
  <td colspan = "4" align = "center" height = "50">
  <<&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<font size = "5" color = "red">1</font>&nbsp; 2&nbsp; 3&nbsp; 4&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; >>  
  </td>
  </tr>
  
  </table>
  </form>
  </center>
 </body>
</html>