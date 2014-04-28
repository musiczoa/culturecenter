<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String root = request.getContextPath();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function toggleTab(sTabId)
{
 var elTab1 = document.getElementById("tab1");
 var elTab2 = document.getElementById("tab2");
 var elTab3 = document.getElementById("tab3");
 var elTab4 = document.getElementById("tab4");
 var elTab5 = document.getElementById("tab5");
 var elTab6 = document.getElementById("tab6");
 var elTab7 = document.getElementById("tab7");
 var elTab8 = document.getElementById("tab8");
 if (sTabId == "tab1")
 {
  elTab1.style.display = "block";
  elTab2.style.display = "none";
  elTab3.style.display = "none";
  elTab4.style.display = "none";
  elTab5.style.display = "none";
  elTab6.style.display = "none";
  elTab7.style.display = "none";
  elTab8.style.display = "none";
 }else if(sTabId == "tab2")
 {
     elTab1.style.display = "none";
     elTab2.style.display = "block";
     elTab3.style.display = "none";
     elTab4.style.display = "none";
     elTab5.style.display = "none";
     elTab6.style.display = "none";
     elTab7.style.display = "none";
     elTab8.style.display = "none";
}else if(sTabId == "tab3")
{
     elTab1.style.display = "none";
     elTab2.style.display = "none";
     elTab3.style.display = "block";
     elTab4.style.display = "none";
     elTab5.style.display = "none";
     elTab6.style.display = "none";
     elTab7.style.display = "none";
     elTab8.style.display = "none";
}else if(sTabId == "tab4")
{
     elTab1.style.display = "none";
     elTab2.style.display = "none";
     elTab3.style.display = "none";
     elTab4.style.display = "block";
     elTab5.style.display = "none";
     elTab6.style.display = "none";
     elTab7.style.display = "none";
     elTab8.style.display = "none";
}else if(sTabId == "tab5")
{
     elTab1.style.display = "none";
     elTab2.style.display = "none";
     elTab3.style.display = "none";
     elTab4.style.display = "none";
     elTab5.style.display = "block";
     elTab6.style.display = "none";
     elTab7.style.display = "none";
     elTab8.style.display = "none";
}else if(sTabId == "tab6")
{
     elTab1.style.display = "none";
     elTab2.style.display = "none";
     elTab3.style.display = "none";
     elTab4.style.display = "none";
     elTab5.style.display = "none";
     elTab6.style.display = "block";
     elTab7.style.display = "none";
     elTab8.style.display = "none";
}else if(sTabId == "tab7")
{
     elTab1.style.display = "none";
     elTab2.style.display = "none";
     elTab3.style.display = "none";
     elTab4.style.display = "none";
     elTab5.style.display = "none";
     elTab6.style.display = "none";
     elTab7.style.display = "block";
     elTab8.style.display = "none";
}else if(sTabId == "tab8")
{
     elTab1.style.display = "none";
     elTab2.style.display = "none";
     elTab3.style.display = "none";
     elTab4.style.display = "none";
     elTab5.style.display = "none";
     elTab6.style.display = "none";
     elTab7.style.display = "none";
     elTab8.style.display = "block";
}
}
</script>

</head>
<body>
<center>
<table>
<tr>
<td>
<a href="javascript:toggleTab('tab1');">질문답변</a><br>
<a href="javascript:toggleTab('tab2');">공연/전시 후기</a><br>
<a href="javascript:toggleTab('tab3');">공지사항</a><br>
<a href="javascript:toggleTab('tab4');">설문조사</a><br>
<a href="javascript:toggleTab('tab5');">방명록</a><br>
<a href="javascript:toggleTab('tab6');">갤러리</a><br>
<a href="javascript:toggleTab('tab7');">미디어센터</a><br>
<a href="javascript:toggleTab('tab8');">자유게시판</a><br>


</td>
<td><div id="tab1" style="display:block;">
<iframe src="<%=root %>/community/qna.jsp" width="600" height="600"></iframe>
</div>
<div id="tab2" style="display:none;">
<iframe src="<%=root %>/community/hugi.jsp" width="600" height="600"></iframe>
</div>
<div id="tab3" style="display:none;">
<iframe src="<%=root %>/community/notice.jsp" width="600" height="600"></iframe>
</div>
<div id="tab4" style="display:none;">
<iframe src="<%=root %>/community/zosa.jsp" width="600" height="600"></iframe>
</div>
<div id="tab5" style="display:none;">
<iframe src="<%=root %>/community/bbs.jsp" width="600" height="600"></iframe>
</div>
<div id="tab6" style="display:none;">
<iframe src="<%=root %>/community/galary.jsp" width="600" height="600"></iframe>
</div>
<div id="tab7" style="display:none;">
<iframe src="<%=root %>/community/media.jsp" width="600" height="600"></iframe>
</div>
<div id="tab8" style="display:none;">
<iframe src="<%=root %>/community/freeboard.jsp" width="600" height="600"></iframe>
</div>
</td>
</tr>
</table>


</frameset>
</center>
</body>
</html>
