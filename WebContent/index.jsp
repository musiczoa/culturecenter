<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="/common/bcommon.jsp" %>
<script
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src='<%=root%>/menu_source/menu_jquery.js'></script>

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
				<li class='active'><a href='#'><span>Ŀ�´�Ƽ</span></a></li>
				<li class='active'><a href='#'><span>����������</span></a></li>
				<li class='last'><a href='#'><span>�α���</span></a></li>
			</ul>
		</div>

	<!--  	<%@ include file = "/main/main.jsp" %>    -->
		<div style="float:left;">
		<!-- <%@ include file = "/board/BoardLeftMenu.jsp" %> -->
		</div>
		
		<div style="clear:both;"></div> <!-- ������ ���°ſ� �÷�Ʈ ����Ǵϱ� Ŭ���������ߵ� -->
	</div>

</center>
</body>
</html>