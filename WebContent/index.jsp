<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%
	String root = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=EUC-KR' />
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<link rel='stylesheet' type='text/css' href='<%=root%>/menu_source/styles.css' />

<script
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src='<%=root%>/menu_source/menu_jquery.js'></script>

</head>
<body>
<center>

<h1 style="font:bold 200% Malgun Gothic,dotum,sans-serif; color:skyblue;">Ű Ʈ �� �� ȭ ȸ ��</h1>


	<div class="main" >
		<div id='cssmenu'>
			<ul>
				<li class='active'><a href='index.jsp'><span>����</span></a></li>
				<li class='has-sub'><a href='#'><span>��ȭ</span></a>
					<ul>
						<li><a href='#'><span>����</span></a></li>
						<li><a href='#'><span>����</span></a></li>
						<li class='last'><a href='#'><span>����</span></a></li>
					</ul></li>
				<li class='has-sub'><a href='#'><span>Ŀ�´�Ƽ</span></a>
					<ul>
						<li><a href='#'><span>�����Խ���</span></a></li>
						<li><a href='#'><span>�����ı�</span></a></li>
						<li class='last'><a href='#'><span>����</span></a></li>
					</ul></li>
				<li class='has-sub'><a href='#'><span>����������</span></a>
					<ul>
						<li><a href='#'><span>���ų���</span></a></li>
						<li class='last'><a href='#'><span>ȸ������</span></a></li>
					</ul></li>
				<li class='last'><a href='#'><span>�α���</span></a></li>
			</ul>
		</div>

	<!--  	<%@ include file = "/main/main.jsp" %>    -->
		<div style="float:left;">
		<%@ include file = "/board/BoardLeftMenu.jsp" %>
		</div>
		<div style="float:right;">
		<%@ include file = "/board/BoardLeftMenu.jsp" %>
		</div>
		<div style="clear:both;"></div> <!-- ������ ���°ſ� �÷�Ʈ ����Ǵϱ� Ŭ���������ߵ� -->
	</div>

</center>
</body>
</html>