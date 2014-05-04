<%@page import="com.kitri.util.*"%>
<%@page import="com.kitri.board.model.NoticeDto"%>
<%@page import="java.util.List"%>
<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
String root = request.getContextPath();

String bcode = request.getParameter("bcode");
String pg = request.getParameter("pg");
//System.out.println("notice.jsp �� ���ڵ�:"+bcode);
String key = StringCheck.nulltoBlank(request.getParameter("key"));
String word = Encoder.isoToEuc(request.getParameter("word"));
System.out.println("jsp������ �˻��� : " + word);
List<NoticeDto> list = (List<NoticeDto>)request.getAttribute("listNotice");
PageNavigation pageNavi = (PageNavigation)request.getAttribute("pageNavi");
if(list ==null){
%>
<script>
alert("�߸��� ��� �����Դϴ�.");
document.location.href = "<%=root%>";
</script>
<%
}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>��������</title>
<script type="text/javascript" src="<%=root%>/js/board.js"></script>
<script type="text/javascript">
function goPage(bcode, pg){
	document.location.href = root+"/notice?act=noticeList&bcode="+bcode+"&pg="+pg;	
}
</script>
</head>
<body>
	<center>
		<table width="100%" height="900">
			<tr>
				<td align="center">
					<table>
						<colgroup>
							<col width="200" />
							<col width="*" />
						</colgroup>
						<tr>
							<td align="center">
								<table>
									<tr>
										<td><a href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1">��������</a></td>
									</tr>
									<tr>
										<td><a href="./freeboard.jsp">�����Խ���</a></td>
									</tr>
									<tr>
										<td><a href="./galary.jsp">������</a></td>
									</tr>
									<tr>
										<td><a href="./hugi.jsp">�����ı�</a></td>
									</tr>
									<tr>
										<td><a href="./media.jsp">�̵��Խ���</a></td>
									</tr>
									<tr>
										<td><a href="./bbs.jsp">����</a></td>
									</tr>
									<tr>
										<td><a href="./qna.jsp">�����亯</a></td>
									</tr>
									<tr>
										<td><a href="./zosa.jsp">��������</a></td>
									</tr>
								</table>
							</td>
							<td align="center">
								<form name="searchForm" action="" method="get">
									<p>
										<select name="searchType">
											<option value="all">��ü�˻�</option>
											<option value="subject">����</option>
											<option value="writer">�ۼ���</option>
											<option value="contentS">����</option>
										</select> <input type="text" name="searchText" value="" /> <input
											type="submit" value="�˻�" />
									</p>
								</form>
								<table width="800" border="1" summary="�Խ��� ���">
									<caption>��������</caption>
									<colgroup>
										<col width="50" />
										<col width="300" />
										<col width="80" />
										<col width="100" />
										<col width="70" />
									</colgroup>
									<thead>
										<tr>
											<th>��ȣ</th>
											<th>����</th>
											<th>�ۼ���</th>
											<th>��� �Ͻ�</th>
											<th>��ȸ��</th>
										</tr>
									</thead>
									<tbody>
									<%
									int size = list.size();
									if(size != 0){
										for(int i=0;i<size;i++){
											NoticeDto noticeDto = list.get(i);											
									%>
										<tr>
											<td align="center"><%=noticeDto.getSeq()%></td>
											<td><a href="javascript:goView('<%=bcode%>', '<%=pg%>', '<%=noticeDto.getSeq()%>');"><%=noticeDto.getSubject()%></a></td>
											<td align="center"><%=noticeDto.getName()%></td>
											<td align="center"><%=noticeDto.getLogtime()%></td>
											<td align="center"><%=noticeDto.getHit()%></td>
										</tr>
										<%										
										}
										%>
									<%
									} else {
									%>
										<tr>
											<td align="center" colspan="5">��ϵ� �Խù��� �����ϴ�.</td>
										</tr>
									<%
									}
									%>
									</tbody>
									<tfoot>
										<tr>
											<td align="center" colspan="5">  <%=pageNavi.getNavigator()%>  </td>
										</tr>
									</tfoot>
								</table>
								<p>
									<p align="right">
									<input type="button" value="�۾���" onclick="javascript:goWrite(<%=bcode%>);">
								</p>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
</body>
</html>
<%
}
%>