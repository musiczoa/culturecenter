<%@page import="com.kitri.board.model.NoticeDto"%>
<%@page import="com.kitri.util.*"%>
<%@page import="java.util.List"%>
<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="/common/bcommon.jsp"%>

<%@ include file="/menu_source/menubar.jsp"%>

<%
bcode = "1";
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
	} else {
%>
<center>
	<table width="80%">

		<tr>
			<td align="Left"><%@ include file="/board/BoardLeftMenu.jsp"%>


			</td>
			<td align="center">
				<!-- 검                                           색 -->
				<form name="searchForm" action="" method="get"
					onsubmit="return false;">
					<input type="hidden" name="act" value="noticeList"> <input
						type="hidden" name="bcode" value="<%=bcode%>"> <input
						type="hidden" name="pg" value="1">
					<p>
						<select name="key">
							<option value="blank">-----</option>
							<option value="subject">제목</option>
							<option value="name">작성자</option>
							<option value="seq">글번호</option>
						</select> <input type="text" name="word" value=""> <input
							type="submit" value="검색" onClick="javascript:goBbsSearch();"></a>
					</p>
				</form> <!-- 검                                           색 -->
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
								if (size != 0) {
									for (int i = 0; i < size; i++) {
										NoticeDto noticeDto = list.get(i);
						%>
						<tr>
							<td align="center"><%=noticeDto.getSeq()%></td>
							<td><a
								href="javascript:goView('<%=bcode%>', '<%=pg%>', '<%=noticeDto.getSeq()%>');"><%=noticeDto.getSubject()%></a></td>
							<td align="center"><%=noticeDto.getNickname()%></td>
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
							<td align="center" colspan="5"><%=pageNavi.getNavigator()%>
							</td>
						</tr>
					</tfoot>
				</table>
				<p>
				<p align="right">
					<input type="button" value="글쓰기"
						onclick="javascript:goWrite(<%=bcode%>);">
				</p>
			</td>
		</tr>
	</table>
	</table>
	</body>
	</html>
	<%
		}
	%>