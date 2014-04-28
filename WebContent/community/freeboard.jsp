<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>자유게시판</title>

<script type="text/javascript">
	
</script>
</head>
<body>

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
									<td><a href="./notice.jsp">공지사항</a></td>
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
										<option value="contents">내용</option>
									</select> <input type="text" name="searchText" value="" /> <input
										type="submit" value="검색" />
								</p>
							</form>
							<table width="800" border="1" summary="게시판 목록">
								<caption>자유게시판</caption>
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
									<tr>
										<td align="center" colspan="5">등록된 게시물이 없습니다.</td>
									</tr>
									<tr>
										<td align="center">글번호들어갈곳</td>
										<td><a href="">글제목들어갈곳</a></td>
										<td align="center">작성자들어갈곳</td>
										<td align="center">작성일자들어갈곳</td>
										<td align="center">조횟수들어갈곳</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td align="center" colspan="5">페이지번호들어갈곳</td>
									</tr>
								</tfoot>
							</table>
							<p>
								<p align="right">
									<input type="button" value="글쓰기" onclick="document.location.href='./freeboardwrite.jsp';">
								</p>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
</body>
</html>
