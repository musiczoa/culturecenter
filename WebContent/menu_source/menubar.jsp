<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <% String root_menubar = request.getContextPath(); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<link rel='stylesheet' type='text/css' href='<%=root_menubar%>/menu_source/styles.css' />

<script type="text/javascript" src="<%=root_menubar%>/js/board.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
<script type='text/javascript' src='<%=root_menubar%>/menu_source/menu_jquery.js'></script>

</head>

<body>

<center>

<h1 style="font:bold 200% Malgun Gothic,dotum,sans-serif; color:skyblue;">Ű Ʈ �� �� ȭ ȸ ��</h1>

   <div class="main">
      <div id='cssmenu'>
         <ul>
            <li class='active'><a href='<%=root_menubar%>/index.jsp'><span>����</span></a></li>
            <li class='has-sub'><a href=''><span>��ȭ</span></a>
               <ul>
                  <li><a href="<%=root_menubar%>/culture/perfomence.jsp"><span>����</span></a></li>
                  <li><a href='#'><span>����</span></a></li>
                  <li class='last'><a href=''><span>����</span></a></li>
               </ul></li>
            <li class='active'><a href="<%=root_menubar%>/notice?act=noticeList&bcode=1&pg=1"><span>Ŀ�´�Ƽ</span></a></li>
            <li class='active'><a href="<%=root_menubar%>/mypage/mypage.jsp"><span>����������</span></a></li>
            <li class='last'><a href="<%=root_menubar%>/login/login.jsp"><span>�α���</span></a></li>
         </ul>
      </div>
   </div>

</center>
</body>
</html>