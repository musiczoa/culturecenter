
<%@page import="com.kitri.culture.dto.cultureDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String root = request.getContextPath();
    
    List<cultureDto> list = (List<cultureDto>) request.getAttribute("listPerform");
    %>
    <%@ include file="/menu_source/menubar.jsp" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
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
   <td> 공연명 <input type="text" name="pSearch"> <input type="button" value="검색"> 00건 조회되었습니다.</td>   
  </tr>
  
  <tr>
   <td>
   
               <table align="center">
               <%
				int size = list.size();
               	for(int i=0;i<size;i++){
               		cultureDto cDto = list.get(i);
               %>               
               <tr>
	               
                  <td>
                      <table width = "200" height = "200" border = "1">
                      <tr height = "170">
                      	  <td align="center">
                         <a href="<%=root%>/perform?act=perfromInfo&seq=<%=cDto.getSeq()%>"><img src="<%=cDto.getSummary()%>" width="185" height="160"></a>
                         </td>
                      </tr>
                      <tr height = "10">
                         <td align = "center"><font size = "2"><%=cDto.getPname()%></font></td>
                      </tr>
                      <tr height = "10">
                         <td align = "center"><font size = "2"><%=cDto.getS_time()%> ~ <%=cDto.getE_time()%></font></td>
                      </tr>
                      <tr height = "10">
                         <td align = "center"><font size = "2"><%=cDto.getSpace_name()%></font></td>
                      </tr>
                      </table>
                  </td>               
               </tr>               
               <%
               }
               %>                    
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