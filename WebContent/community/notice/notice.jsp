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
	} else {
%>
<center>
	<table width="80%">

		<tr>
			<td align="Left"><%@ include file="/board/BoardLeftMenu.jsp"%>


			</td>
			<td align="center">
				<!-- ��                                           �� -->
				<form name="searchForm" action="" method="get"
					onsubmit="return false;">
					<input type="hidden" name="act" value="noticeList"> <input
						type="hidden" name="bcode" value="<%=bcode%>"> <input
						type="hidden" name="pg" value="1">
					<p>
						<select name="key">
							<option value="blank">-----</option>
							<option value="subject">����</option>
							<option value="name">�ۼ���</option>
							<option value="seq">�۹�ȣ</option>
						</select> <input type="text" name="word" value=""> <input
							type="submit" value="�˻�" onClick="javascript:goBbsSearch();"></a>
					</p>
				</form> <!-- ��                                           �� -->
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
							<td align="center" colspan="5">��ϵ� �Խù��� �����ϴ�.</td>
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
					<input type="button" value="�۾���"
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