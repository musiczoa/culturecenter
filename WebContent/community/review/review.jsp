<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>�ı� �Խ���</title>

<script type="text/javascript">
	
	
	
	
	
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
										<td><a href="<%=root %>/community/notice.jsp">��������</a></td>
									</tr>
										<td><a href="<%=root %>/community/review/review.jsp">�����ı�</a></td>
									</tr>
									<tr>
										<td><a href="./bbs.jsp">�����</a></td>
									</tr>
									<tr>
										<td><a href="./qna.jsp">�����亯</a></td>
									</tr>
								</table>
							</td>
							<td align="center">
								<form name="searchForm" action="" method="get">
									<p>
										<select name="searchType">
											<option value="subject">����</option>
											<option value="writer">�ۼ���</option>
											<option value="contents">����</option>
										</select> <input type="text" name="searchText" value="" /> <input
											type="submit" value="�˻�" />
									</p>
								</form>
								<table width="800" border="1" summary="�Խ��� ���">
									<caption>�ı� �Խ���</caption>
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
										<tr>
											<td align="center" colspan="5">��ϵ� �Խù��� �����ϴ�.</td>
										</tr>
										<tr>
											<td align="center">�۹�ȣ����</td>
											<td><a href="">���������</a></td>
											<td align="center">�ۼ��ڵ���</td>
											<td align="center">�ۼ����ڵ���</td>
											<td align="center">��Ƚ������</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td align="center" colspan="5">��������ȣ����</td>
										</tr>
									</tfoot>
								</table>
								<p align="right">
									<input type="button" value="�۾���" onclick="document.location.href='./hugiwrite.jsp';">
								</p>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
</body>
</html>