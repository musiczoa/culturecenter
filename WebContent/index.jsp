<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>

<%
String root1 = request.getContextPath();
MemberDto memberDto = new MemberDto();
memberDto.setName("������");
memberDto.setId("vfx333");
memberDto.setEmail1("vfx333");
memberDto.setEmail2("naver.com");
int bcode = 1;
session.setAttribute("userInfo", memberDto);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ko">
<head>
<title> �� �� �� </title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<link rel='stylesheet' type='text/css' href='<%=root1%>/menu_source/styles.css' />

<script type="text/javascript" src="<%=root1%>/js/board.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src='<%=root1%>/menu_source/menu_jquery.js'></script>

</head>

<body>

<center>

<h1 style="font:bold 200% Malgun Gothic,dotum,sans-serif; color:skyblue;">Ű Ʈ �� �� ȭ ȸ ��</h1>

   <div class="main" >
      <div id='cssmenu'>
         <ul>
            <li class='active'><a href='index.jsp'><span>����</span></a></li>
            <li class='has-sub'><a href=''><span>��ȭ</span></a>
               <ul>
                  <li><a href='#'><span>����</span></a></li>
                  <li><a href='#'><span>����</span></a></li>
                  <li class='last'><a href=''><span>����</span></a></li>
               </ul></li>
            <li class='active'><a href="<%=root1%>/notice?act=noticeList&bcode=<%=bcode%>&pg=1"><span>Ŀ�´�Ƽ</span></a></li>
            <li class='active'><a href=''><span>����������</span></a></li>
            <li class='last'><a href=''><span>�α���</span></a></li>
         </ul>
      </div>
   </div>

</center>
</body>
</html>