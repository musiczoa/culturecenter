
<%@page import="com.kitri.util.PageNavigation"%>
<%@page import="com.kitri.culture.dto.cultureDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ include file="/menu_source/menubar.jsp" %>
    <%@ include file="/common/percommon.jsp"%>
    <%    
    System.out.println("퍼포먼스에서 씨타입 : "+ctype);
    List<cultureDto> list = (List<cultureDto>) request.getAttribute("listPerform");
    PageNavigation pageNavi = (PageNavigation)request.getAttribute("pageNavi");    
    %>

  <center>
	
  <table width = "800" >
  
	<tr height = "150" align = "center">
	<form name="searchForm" action="" method="get" onsubmit="return false;">
	<input type="hidden" name="act" value="perList">	 
	<input type="hidden" name="pg" value="1">   
	 
	<td valign="middle"> 공연명 <input type="text" name="word" value="">  <input type="submit" value="검색" onClick="javascript:perList();"> </td>
	</form>  
	</tr>
  
  <tr>
   <td>  
               <table align="center" width="700" cellspacing="10">
               <%
				int size = list.size();
               	for(int i=0;i<size;i++){
               		cultureDto cDto = list.get(i);
               %>
				<tr>
					<td><a href="<%=root%>/perform?act=performInfo&pg=<%=pg%>&ctype=<%=ctype%>&seq=<%=cDto.getSeq()%>"><img src="<%=cDto.getThumbnail()%>" width="185" height="160"></a></td>
					<td>
					<table cellspacing="10">
						<tr>
						<td align="left"><font size = "2.5"><strong><%=cDto.getPname()%></strong></font></td>
						</tr>
						<tr>
						<td align="left"><font size = "2" color="#a31aa6"><%=cDto.getC_date()%></td>
						</tr>
						<tr>
						<td align="left"><font size = "2"><%=cDto.getSpace_name()%></font></td>
						</tr>					
					</table>				
					</td>
					<td><a href="<%=root%>/perform?act=performInfo&pg=<%=pg%>&ctype=<%=ctype%>&seq=<%=cDto.getSeq()%>"><img src="<%=root%>/img/culture/btn_detail.gif"></a></td>
				</tr>
				<tr>
				<td colspan="3" height="1px" bgcolor="#797979"></td>                        
				</tr> 
               <%              
               }
               %>                    
               </table>
   </td>
  </tr>
  
  <tr>
  <td colspan = "4" align = "center" height = "50">
  <%=pageNavi.getNavigator()%>
  </td>
  </tr>
  
  </table>

  </center>
 </body>
</html>