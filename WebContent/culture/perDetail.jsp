<%@page import="com.kitri.util.UrlFormat"%>
<%@page import="com.kitri.culture.dto.cultureDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    
    String root = request.getContextPath();
    String ctype = request.getParameter("ctype");
    String pg = request.getParameter("pg");
    cultureDto cDto = (cultureDto)request.getAttribute("detailInfo");
    System.out.println("디테일에서 :"+UrlFormat.eucFormat(cDto.getSpace_name()));
    String space = UrlFormat.eucFormat(cDto.getSpace_name());
    System.out.println("디테일에서 :"+space);
    
    %>
    <%@ include file="/menu_source/menubar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
<!-- 
<script type="text/javascript">
function goPopup() {
	var popwidth   = "800";
    var popheight  = "600"; 
    var leftPos       = (screen.width)  ? (screen.width-popwidth)/2   : 0;
    var topPos      = (screen.height) ? (screen.height-popheight)/2 : 0;   
    var winName   = "예매창";
 
    var features   = 'left='+ leftPos+', top='+ topPos;
          features  += ',location=no, directories=no, menubar=no, scrollbars=auto';
          features  += ',width='+ popwidth+ ',height='+ popheight;
          
    var reqUrl       = <%=root%>+"/SeatTest-KH/seatMaker/ch.jsp";
    window.open(reqUrl, winName, features);

}
</script> -->
<script type="text/javascript" src="<%=root%>/js/popup.js"></script>
</head>
<body>
<center>
<form action="" method="get" name="infoForm">
<input type="hidden" name="date" value="<%=cDto.getC_date()%>">
</form>
 <table width="800">
	  <tr>
		<td width = "500" align="left"><%=cDto.getSeq()%>  <font size="5"> | <%=cDto.getPname()%> </font></td>
		<td rowspan="3" bgcolor="#797979" width="0.01"></td>
		<td></td>
	  </tr>
	  <tr>
	  <td height="0.05" bgcolor="#797979"></td>
	  <td></td>
	  </tr>

	  <tr>
		<td rowspan="6" width="500"><img src="<%=cDto.getSummary()%>"></td>
		<td valign="top">
		<table width="300" cellspacing="5">
		<tr><td bgcolor="#dff8f9" align="left">기간 : <%=cDto.getC_date()%></td></tr>
		
		<tr><td bgcolor="#dff8f9" align="left">장소 : <%=cDto.getSpace_name()%></td></tr>
		
		<tr><td bgcolor="#dff8f9" align="left">시간 : <%=cDto.getC_time()%></td></tr>
		
		<tr><td bgcolor="#dff8f9" align="left">연령 : 만 <%=cDto.getAge()%>세이상</td></tr>
		
		<tr><td bgcolor="#dff8f9" align="left">티켓 : <%=cDto.getT_price()%>원</td></tr>
		<tr><td align = "center" valign="bottom">
		
		<!--  <a href="javascript:goSpace1('<%=ctype%>', '<%=cDto.getSeq()%>');"><img src="<%=root%>/img/culture/btn_ticketing02.gif"></a>--> 
		<a href="javascript:goSpace2('<%=cDto.getSummary()%>','<%=cDto.getC_date()%>',
		'<%=space%>','<%=cDto.getC_time()%>','<%=cDto.getAge()%>','<%=cDto.getT_price()%>');"><img src="<%=root%>/img/culture/btn_ticketing02.gif"></a>
		<a href=""><img src="<%=root%>/img/culture/btn_interest.gif"></a>
		<a href=""><img src="<%=root%>/img/culture/btn_review.gif"></a>
		<a href="<%=root%>/perform?act=perList&pg=<%=pg%>&ctype=<%=ctype%>"><img src="<%=root%>/img/culture/btn_list04.gif"></a>
		</td></tr>
		</table>
		</td>
	  </tr>
  </table>

</center>
</body>
</html>