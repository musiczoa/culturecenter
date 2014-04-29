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

<h1 style="font:bold 200% Malgun Gothic,dotum,sans-serif; color:skyblue;">키 트 리 문 화 회 관</h1>


	<div class="main" >
		<div id='cssmenu'>
			<ul>
				<li class='active'><a href='index.jsp'><span>메인</span></a></li>
				<li class='has-sub'><a href='#'><span>문화</span></a>
					<ul>
						<li><a href='#'><span>공연</span></a></li>
						<li><a href='#'><span>전시</span></a></li>
						<li class='last'><a href='#'><span>통합</span></a></li>
					</ul></li>
				<li class='has-sub'><a href='#'><span>커뮤니티</span></a>
					<ul>
						<li><a href='#'><span>자유게시판</span></a></li>
						<li><a href='#'><span>공연후기</span></a></li>
						<li class='last'><a href='#'><span>문의</span></a></li>
					</ul></li>
				<li class='has-sub'><a href='#'><span>마이페이지</span></a>
					<ul>
						<li><a href='#'><span>구매내역</span></a></li>
						<li class='last'><a href='#'><span>회원정보</span></a></li>
					</ul></li>
				<li class='last'><a href='#'><span>로그인</span></a></li>
			</ul>
		</div>

	<!--  	<%@ include file = "/main/main.jsp" %>    -->
		<div style="float:left;">
		<%@ include file = "/board/BoardLeftMenu.jsp" %>
		</div>
		<div style="float:right;">
		<%@ include file = "/board/BoardLeftMenu.jsp" %>
		</div>
		<div style="clear:both;"></div> <!-- 다음에 오는거에 플로트 적용되니까 클리어시켜줘야돼 -->
	</div>

</center>
</body>
</html>