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
//System.out.println("notice.jsp 의 비코드:"+bcode);
String key = StringCheck.nulltoBlank(request.getParameter("key"));
String word = Encoder.isoToEuc(request.getParameter("word"));
System.out.println("jsp에서의 검색어 : " + word);
List<NoticeDto> list = (List<NoticeDto>)request.getAttribute("listNotice");
PageNavigation pageNavi = (PageNavigation)request.getAttribute("pageNavi");
if(list ==null){
%>
<script>
alert("잘못된 경로 접근입니다.");
document.location.href = "<%=root%>";
</script>
<%
}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>공지사항</title>
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
										<td><a href="<%=root%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1">공지사항</a></td>
									</tr>
									<tr>
										<td><a href="./freeboard.jsp">자유게시판</a></td>
									</tr>
									<tr>
										<td><a href="./galary.jsp">갤러리</a></td>
									</tr>
									<tr>
										<td><a href="./hugi.jsp">공연후기</a></td>
									</tr>
									<tr>
										<td><a href="./media.jsp">미디어게시판</a></td>
									</tr>
									<tr>
										<td><a href="./bbs.jsp">방명록</a></td>
									</tr>
									<tr>
										<td><a href="./qna.jsp">질문답변</a></td>
									</tr>
									<tr>
										<td><a href="./zosa.jsp">설문조사</a></td>
									</tr>
								</table>
							</td>
							<td align="center">
								<form name="searchForm" action="" method="get">
									<p>
										<select name="searchType">
											<option value="all">전체검색</option>
											<option value="subject">제목</option>
											<option value="writer">작성자</option>
											<option value="contentS">내용</option>
										</select> <input type="text" name="searchText" value="" /> <input
											type="submit" value="검색" />
									</p>
								</form>
								<table width="800" border="1" summary="게시판 목록">
									<caption>공지사항</caption>
									<colgroup>
										<col width="50" />
										<col width="300" />
										<col width="80" />
										<col width="100" />
										<col width="70" />
									</colgroup>
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>등록 일시</th>
											<th>조회수</th>
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
											<td align="center" colspan="5">등록된 게시물이 없습니다.</td>
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
									<input type="button" value="글쓰기" onclick="javascript:goWrite(<%=bcode%>);">
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